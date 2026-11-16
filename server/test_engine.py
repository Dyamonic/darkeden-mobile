"""Authority regression tests against the actual recovered catalogs and map bytes."""
import copy,json,tempfile,unittest
from pathlib import Path
from engine import Catalog,Engine,pixel

class AuthorityTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):cls.catalog=Catalog()
    def setUp(self):
        self.time=100.;self.e=Engine(':memory:',self.catalog,lambda:self.time)
        self.e.rng.seed(73)
        self.s=self.e.create('Test Vampire',{'byRace':2,'wSTR':20,'wDEX':20,'wINT':20})
        self.e.enter(self.s['name']);self.session=self.e.sessions['test vampire'];self.s=self.session['state']
    def tearDown(self):self.e.db.close()
    def test_points_and_retry(self):
        self.s['level']=2;self.s['points']=3
        cmd={'seq':1,'kind':'allocate','args':{'str':2,'dex':1,'int':0}}
        self.e.step(self.s['name'],{'commands':[cmd]});self.e.step(self.s['name'],{'commands':[cmd]})
        self.assertEqual(self.s['allocated'],[2,1,0]);self.assertEqual(self.s['points'],0)
        self.assertGreater(self.e.data.stats(self.s)['maxHP'],242)
        self.e.step(self.s['name'],{'commands':[{'seq':2,'kind':'allocate','args':{'str':-1}}]})
        self.assertEqual(self.s['points'],0);self.assertEqual(self.s['allocated'],[2,1,0])
    def test_client_cannot_write_stats_or_teleport(self):
        before=copy.deepcopy(self.s)
        self.e.step(self.s['name'],{'hp':999999,'level':150,'gold':999999,'x':1e8,'y':-1e8,'commands':{}})
        for key in ['hp','level','gold','x','y']:self.assertEqual(self.s[key],before[key])
    def test_level_heal_and_retroactive_migration_once(self):
        self.s['xp']=self.catalog.goal(self.s)-1;self.s['hp']=1
        self.e.grant_xp(self.session,1)
        self.assertEqual((self.s['level'],self.s['points']),(2,3));self.assertEqual(self.s['hp'],self.s['stats']['maxHP'])
        self.e.migrate(self.s);self.e.migrate(self.s);self.assertEqual(self.s['points'],3)
    def test_real_population_collision_and_dynamic_stats(self):
        self.s['map']='12';self.s['x'],self.s['y']=pixel(117,146);self.e.populate(self.session)
        self.assertGreater(len(self.session['mobs']),50)
        for mob in self.session['mobs']:
            self.assertTrue(self.catalog.spawn_open('12',2,*__import__('engine').tile(mob['x'],mob['y'])))
            self.assertIn(mob['monster'],self.catalog.monsters)
        dead=self.catalog.mob(5)
        self.assertEqual((dead['maxHP'],dead['minDamage'],dead['maxDamage']),(30,2,3))
        self.assertEqual(dead['attackInterval'],.775)
    def test_death_and_revive(self):
        self.s['hp']=0
        self.e.command(self.session,'revive',{});self.assertEqual(self.s['hp'],self.s['stats']['maxHP'])
        self.s['hp']=1;self.e.command(self.session,'revive',{});self.assertEqual(self.s['hp'],1)
    def test_resurrection_binding_persists_and_returns_from_another_map(self):
        npc=self.catalog.npcs[309]
        self.s['map']=str(npc['MapResId']);self.s['x'],self.s['y']=pixel(npc['Xpot'],npc['Ypot'])
        self.e.step(self.s['name'],{'commands':[{'seq':1,'kind':'bindResurrection','args':{'npc':309,'map':'12','m':1,'n':1}}]})
        point=copy.deepcopy(self.s['resurrection'])
        self.assertEqual((point['map'],point['m'],point['n'],point['npc']),('61',102,220,309))
        self.assertEqual(self.session['events'][-1]['kind'],'resurrectionBound')
        self.e.sessions.clear();self.e.enter(self.s['name']);self.session=self.e.sessions['test vampire'];self.s=self.session['state']
        self.assertEqual(self.s['resurrection'],point)
        self.s['map']='12';self.s['hp']=0;generation=self.session['generation']
        self.e.command(self.session,'revive',{})
        self.assertEqual((self.s['map'],self.s['x'],self.s['y']),('61',*pixel(102,220)))
        self.assertEqual(self.s['hp'],self.s['stats']['maxHP']);self.assertNotEqual(self.session['generation'],generation)
        before=copy.deepcopy(self.s)
        self.e.command(self.session,'revive',{});self.assertEqual(self.s,before)
    def test_resurrection_binding_rejects_wrong_npc_race_distance_and_death(self):
        for npcid in [999999,302,309]:
            with self.assertRaises(ValueError):self.e.command(self.session,'bindResurrection',{'npc':npcid})
        npc=self.catalog.npcs[302];self.s['map']=str(npc['MapResId']);self.s['x'],self.s['y']=pixel(npc['Xpot'],npc['Ypot'])
        self.s['hp']=0
        with self.assertRaises(ValueError):self.e.command(self.session,'bindResurrection',{'npc':302})
        self.s['hp']=1
        npc=next(n for n in self.catalog.npcs.values() if n['Contem']==1 and str(n['MapResId']) in self.catalog.grids)
        self.s['map']=str(npc['MapResId']);self.s['x'],self.s['y']=pixel(npc['Xpot'],npc['Ypot'])
        with self.assertRaises(ValueError):self.e.command(self.session,'bindResurrection',{'npc':npc['NpcIndex']})
        self.s['appearance']['byRace']=1
        with self.assertRaises(ValueError):self.e.command(self.session,'bindResurrection',{'npc':npc['NpcIndex']})
    def test_same_map_resurrection_and_default_for_each_race(self):
        for race,appearance in [(1,{'byRace':1,'wSTR':10,'wDEX':10,'wINT':10}),(3,{'byRace':3,'wSTR':15,'wDEX':15,'wINT':15})]:
            s=self.e.create('Race '+str(race),appearance);self.e.enter(s['name']);session=self.e.sessions[s['name'].casefold()]
            state=session['state'];state['hp']=0;self.e.command(session,'revive',{})
            self.assertEqual((state['x'],state['y']),pixel(state['resurrection']['m'],state['resurrection']['n']))
        self.s['map']='61';self.s['resurrection']={'map':'61','m':102,'n':220};self.s['hp']=0
        mobs=self.session['mobs'];self.e.command(self.session,'revive',{})
        self.assertIs(self.session['mobs'],mobs);self.assertEqual((self.s['x'],self.s['y']),pixel(102,220))
    def test_persistence_and_single_import(self):
        self.s['points']=3;self.e.allocate(self.s,{'int':3});self.e.persist(self.s)
        self.e.sessions.clear();saved=self.e.enter(self.s['name'])['state']
        self.assertEqual(saved['allocated'],[0,0,3]);self.assertEqual(saved['points'],0)
        old=copy.deepcopy(self.s);old['name']='Imported'
        self.e.import_roster({'characters':[old]})
        with self.assertRaises(ValueError):self.e.import_roster({'characters':[old]})
    def test_pickup_cannot_duplicate(self):
        drop={'objID':300001,'kind':1,'item':304001,'count':1,'x':self.s['x'],'y':self.s['y'],'expires':200}
        self.session['drops']=[drop]
        self.e.command(self.session,'pickup',{'objID':300001})
        with self.assertRaises(ValueError):self.e.command(self.session,'pickup',{'objID':300001})
        self.assertEqual(len(self.s['inventory']),1)
    def test_npc_travel_validates_proximity(self):
        with self.assertRaises(ValueError):self.e.travel(self.session,{'npc':302,'talk':302105})
    def test_quest_dialogue_rewards_once(self):
        npc=self.catalog.npcs[302];self.s['map']=str(npc['MapResId']);self.s['x'],self.s['y']=pixel(npc['Xpot'],npc['Ypot'])
        self.e.command(self.session,'quest',{'action':'talk','npc':302,'talk':320001})
        self.assertEqual(self.s['quests']['320001']['taskState'],2)
        self.e.command(self.session,'quest',{'action':'claim','id':320001})
        self.assertEqual(self.s['gold'],100000);self.assertEqual(self.s['mainQuest'],320002)
        self.assertEqual(self.s['inventory'][0]['item'],304001)
        with self.assertRaises(ValueError):self.e.command(self.session,'quest',{'action':'claim','id':320001})
        self.assertEqual(self.s['gold'],100000)
    def test_gm_checks_role_and_uses_mobile_ids(self):
        with self.assertRaises(ValueError):self.e.command(self.session,'gm',{'command':'@make 1 304001 2'})
        self.e.db.execute('UPDATE characters SET gm=1');self.e.db.commit()
        self.e.command(self.session,'gm',{'command':'@make 1 304001 2'})
        self.assertEqual(self.s['inventory'][0]['count'],2)
        self.e.command(self.session,'gm',{'command':'@test setprop 212 3'})
        self.assertEqual(self.s['points'],3)
        with self.assertRaises(ValueError):self.e.command(self.session,'gm',{'command':'@make 1 999999999 2'})
    def test_equipment_correct_race_slot_and_no_overlapping_cells(self):
        self.e.add_item(self.s,2,1209001)
        self.s['level']=15;self.s['stats']=self.catalog.stats(self.s)
        item=self.s['inventory'][0]
        self.e.equip(self.s,{'objID':item['objID']})
        self.assertEqual(item['slot'],5)
        self.e.command(self.session,'unequip',{'objID':item['objID']})
        self.assertNotIn('slot',item)
        self.e.persist(self.s);old_id=item['objID'];self.e.sessions.clear();self.s=self.e.enter(self.s['name'])['state']
        self.e.add_item(self.s,1,304001)
        self.assertGreater(self.s['inventory'][-1]['objID'],old_id)
    def test_native_empty_arguments_and_malformed_arguments(self):
        self.e.step(self.s['name'],{'commands':[{'seq':1,'kind':'attack','args':[]}]})
        self.assertEqual(self.session['seq'],1)
        self.e.step(self.s['name'],{'commands':[{'seq':2,'kind':'attack','args':[7]}]})
        self.assertEqual(self.session['seq'],2)
        self.assertIn('Invalid command arguments',self.session['events'][-1]['text'])
    def test_stack_limits_and_full_bag_rollback(self):
        limit=int(self.catalog.items[(1,304001)]['AddLimit'])
        self.e.add_item(self.s,1,304001,limit+2)
        self.assertEqual([i['count'] for i in self.s['inventory']],[limit,2])
        before=copy.deepcopy(self.s['inventory'])
        with self.assertRaises(ValueError):self.e.add_item(self.s,1,304001,min(9999,limit*65))
        self.assertEqual(self.s['inventory'],before)
    def test_skill_validation_and_cpp_integer_division(self):
        from formulas import compute
        self.assertEqual(compute([['output.Damage','input.STR / 20 + 1']],{'STR':39})['Damage'],2)
        with self.assertRaises(ValueError):compute([['output.Damage',"__import__('os')"]],{})
        with self.assertRaises(ValueError):self.e.skills.prepare(self.session,{'skill':17002})
        with self.assertRaises(ValueError):self.e.skills.prepare(self.session,{'skill':999999})
        self.assertEqual(self.e.skills.prepare(self.session,{'skill':17001})['category'],'normal')
        self.session['cooldowns'][17001]=self.time+1
        self.assertIsNone(self.e.skills.prepare(self.session,{'skill':17001}))
    def test_movement_budget_not_reset_by_spam(self):
        self.s['map']='61'
        spots=[(x,y) for x in range(20,100) for y in range(20,200) if all(self.catalog.open('61',x+i,y) for i in range(5))]
        x,y=spots[0];self.s['x'],self.s['y']=pixel(x,y)
        self.e.step(self.s['name'],dict(zip(['x','y'],pixel(x+1,y))))
        before=self.s['x']
        for _ in range(20):self.e.step(self.s['name'],dict(zip(['x','y'],pixel(x+2,y))))
        self.assertEqual(self.s['x'],before)
    def test_loot_rolls_and_respawn_reset_corpse(self):
        mob=dict(self.catalog.mob(5),x=self.s['x'],y=self.s['y'])
        for _ in range(1000):self.e.roll_loot(self.session,mob)
        self.assertGreater(len(self.session['drops']),0)
        self.assertTrue(all((d['kind'],d['item']) in self.catalog.items for d in self.session['drops']))
        self.s['map']='12';m,n=self.catalog.spawn_tiles('12')[0]
        mob.update(hp=0,consumed=True,respawnAt=self.time,homeM=m,homeN=n)
        self.session['mobs']=[mob];self.e.tick(.1)
        self.assertEqual(mob['hp'],mob['maxHP']);self.assertNotIn('consumed',mob)
    def test_monsters_excluded_from_other_races_sanctuaries(self):
        self.assertTrue(self.catalog.safe('61',2,102,220))
        self.assertFalse(self.catalog.safe('61',1,102,220),'Player protection must remain race-specific')
        for race in [1,2,3]:
            self.assertFalse(self.catalog.spawn_open('61',race,102,220))
            self.assertFalse(self.catalog.spawn_open('12',race,117,146))
            self.assertFalse(self.catalog.spawn_open('1311',race,33,75))
        self.s['map']='61';self.e.populate(self.session)
        self.assertGreater(len(self.session['mobs']),0)
        from spawn_rules import contains_polygon
        from engine import tile
        for mob in self.session['mobs']:
            m,n=tile(mob['x'],mob['y'])
            self.assertTrue(self.catalog.spawn_open('61',1,m,n))
            self.assertFalse(any(contains_polygon(poly,m,n) for poly in self.catalog.safe_polygons['61']))
    def test_respawn_relocates_a_forbidden_home_and_gm_cannot_spawn_in_town(self):
        self.s['map']='61';self.s['x'],self.s['y']=pixel(102,220)
        mob=dict(self.catalog.mob(5),hp=0,respawnAt=self.time,homeM=102,homeN=220,x=self.s['x'],y=self.s['y'])
        self.session['mobs']=[mob];self.e.tick(.1)
        self.assertEqual(mob['hp'],mob['maxHP'])
        self.assertTrue(self.catalog.spawn_open('61',2,mob['homeM'],mob['homeN']))
        self.e.db.execute('UPDATE characters SET gm=1');self.e.db.commit()
        with self.assertRaises(ValueError):self.e.command(self.session,'gm',{'command':'@mon 5 1'})
        self.assertEqual(len(self.session['mobs']),1)
        self.s['map']='1003';mob.update(hp=0,respawnAt=self.time,homeM=62,homeN=64)
        self.e.tick(.1);self.assertEqual(mob['hp'],0,'A fully safe village must not respawn monsters')
    def test_spawn_polygon_edges_combined_flags_and_portals(self):
        from spawn_rules import exclusion_mask,contains_polygon
        polygon=[[1,1],[4,1],[4,2],[2,2],[2,4],[1,4]]
        self.assertTrue(contains_polygon(polygon,1,2));self.assertFalse(contains_polygon(polygon,3,3))
        mask=exclusion_mask(8,8,[{'Flag':19,'Left':6,'Right':6,'Top':6,'Bottom':6}],
            [polygon],[{'Left':7,'Right':7,'Top':7,'Bottom':7}])
        for m,n in [(1,1),(4,1),(2,4),(6,6),(7,7)]:self.assertTrue(mask[m*8+n])
        self.assertFalse(mask[3*8+3]);self.assertEqual(len(mask),64)
        self.assertEqual(sum(exclusion_mask(8,8,None,[],None)),0)
    def test_skill_damage_resource_and_cooldown(self):
        candidates=[sid for sid in self.catalog.skills if self.e.skills.category(sid)=='damage' and self.catalog.skills[sid]['Race']&2]
        self.assertTrue(candidates)
        sid=candidates[0];self.s['skills'][str(sid)]=1
        cast=self.e.skills.prepare(self.session,{'skill':sid})
        self.assertGreaterEqual(cast['damage'],0)
        self.s['hp']=1
        if cast['mana']:
            with self.assertRaises(ValueError):self.e.skills.prepare(self.session,{'skill':sid})
    def test_slayer_domain_level_and_no_manual_points(self):
        s=self.e.create('Test Slayer',{'byRace':1,'wSTR':10,'wDEX':10,'wINT':10})
        self.e.enter(s['name']);session=self.e.sessions['test slayer'];s=session['state']
        goal=self.catalog.domain_exp[(1,1)]
        self.e.domain_reward(session,goal)
        self.assertEqual(s['domainLevels']['Blade'],2);self.assertEqual(s['points'],0)
        self.assertEqual(session['events'][-1]['kind'],'domainLevel')
        with self.assertRaises(ValueError):self.e.allocate(s,{'str':1})
    def test_server_catalog_and_item_mapping(self):
        self.assertEqual(len(self.catalog.item_mappings),848)
        self.assertTrue(all(value in self.catalog.items for value in self.catalog.item_mappings.values()))
        self.assertTrue(all(value in self.catalog.monsters for value in self.catalog.mob_mappings.values()))
        for sample in json.loads((Path(__file__).parent/'data/collision-native-61.json').read_text()):
            self.assertEqual(self.catalog.open('61',sample['x'],sample['y']),not sample['blocked'])
        for pc in self.catalog.mob_mappings:
            mob=self.catalog.mob(pc);self.assertGreater(mob['maxHP'],0);self.assertGreaterEqual(mob['minDamage'],1)

if __name__=='__main__':unittest.main()
