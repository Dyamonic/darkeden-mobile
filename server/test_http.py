"""Read/validation integration checks against the running local authority."""
from pathlib import Path
import json,os,urllib.request,urllib.error
STATE=Path(os.environ['LOCALAPPDATA'])/'DarkEdenMobileServer'
token=json.loads((STATE/'connection.json').read_text())['token']
def request(path,data,key=token):
    body=json.dumps(dict(data,token=key)).encode()
    try:
        with urllib.request.urlopen(urllib.request.Request('http://127.0.0.1:8088/v1/'+path,body,{'Content-Type':'application/json'}),timeout=20) as r:return r.status,json.load(r)
    except urllib.error.HTTPError as e:return e.code,json.load(e)
assert request('roster',{},'invalid')[0]==401
code,result=request('roster',{});assert code==200 and len(result['characters'])>=1
name=result['characters'][-1]['name']
code,result=request('enter',{'name':name});assert code==200
s=result['state'];before={k:s[k] for k in ['hp','level','gold','x','y']}
code,result=request('step',{'name':name,'x':1e8,'y':-1e8,'hp':999999,'level':150,'gold':999999,'commands':{}})
assert code==200
assert all(result['state'][k]==v for k,v in before.items()),'Client supplied authority fields changed state'
assert request('step',{'name':name,'commands':[{'seq':result['commandSeq']+2,'kind':'allocate','args':{'str':1}}]})[0]==400
assert request('create',{'name':'Invalid Test','appearance':{'byRace':2,'wSTR':999}})[0]==400
print('PASS HTTP authorization, roster/enter, ignored forged stats, rejected teleport, command ordering and invalid character creation')

code,result=request('step',{'name':name,'transport':'cocos','commands':[{'seq':999999,'kind':'attack','args':{}}]})
assert code==200 and result.get('error')=='Command sequence gap'
print('PASS legacy Cocos receives structured application errors')
