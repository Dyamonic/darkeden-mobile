"""Exercise the real mobile retry code without interrupting the live server."""
from pathlib import Path
from lupa import LuaRuntime

lua=LuaRuntime(unpack_returned_tuples=True)
lua.globals().Remote=lua.execute((Path(__file__).resolve().parents[1]/'reverse-engineering/offline/Remote.lua').read_text(encoding='utf-8'))
lua.execute('''
local hero={getPosition=function() return 10,-20 end}
lt={AgentManager={getHeroAgent=function() return hero end}}
display={getRunningScene=function() return {getLayerManager=function() return {isWindowEmpty=function() return true end} end} end}
local modals,applied,calls=0,0,0
local b={message=function() modals=modals+1 end}
local r=setmetatable({bridge=b,name='Test',commands={},nextSeq=0,after=0,elapsed=0},Remote)
r.apply=function() applied=applied+1 end
r.request=function(self,path,payload,callback)
 calls=calls+1
 if calls==1 then callback(nil,'Private server request timed out')
 else callback({commandSeq=0,eventSeq=0}) end
end
r:tick(.1);assert(r.failed and not r.busy and modals==0)
r:tick(.1);assert(calls==1,'Retries must back off')
r:tick(.2);assert(calls==2 and not r.failed and applied==1 and modals==0)
r.commands={{seq=1,kind='pickup'}};r.nextSeq=1
r.request=function(self,path,payload,callback)
 if path=='step' then callback(nil,'Enter the world first')
 else assert(path=='enter');callback({commandSeq=0,eventSeq=0}) end
end
r:tick(.2);assert(not r.reconnecting and #r.commands==0 and r.nextSeq==0 and modals==0)
for i=1,100 do r:queue('sort') end
assert(#r.commands==64,'Disconnected queues must stay bounded')

local timers,nativeCallback={},nil
package.loaded['cocos.framework.scheduler']={performWithDelayGlobal=function(fn) timers[#timers+1]=fn end}
package.loaded['cocos.framework.network']={createHTTPRequest=function(fn)
 nativeCallback=fn
 return {setPOSTData=function() end,setTimeout=function() end,start=function() end}
end}
json={encode=function() return '{}' end,decode=function() return {commandSeq=0} end}
r.config={url='http://127.0.0.1:8088',token='test-only'};r.request=Remote.request
local deliveries=0
r:request('step',{},function(result,err) deliveries=deliveries+1;assert(not result and err) end)
timers[1]();assert(deliveries==1,'Missing callbacks need a deadline')
nativeCallback({name='completed',request={getResponseString=function() return '{}' end,getResponseStatusCode=function() return 200 end}})
assert(deliveries==1,'Late replies must not apply twice')
''')
print('PASS silent retry/backoff, restart re-entry, bounded queues, missing callback deadline and ignored late reply')
