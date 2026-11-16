local f=assert(io.open(device.writablePath..'mobile-server.json'));local cfg=json.decode(f:read('*a'));f:close()
local request=require('cocos.framework.network').createHTTPRequest(function(event)
 if event.name=='failed' then error('Private server HTTP request failed') end
 if event.name~='completed' then return end
 assert(event.request:getResponseStatusCode()==200,'Private server rejected native request')
 local result=json.decode(event.request:getResponseString());assert(#result.characters==2)
 local f=assert(io.open(device.writablePath..'server-http-pass.txt','w'));f:write('PASS native Android HTTP transport reached private server and read two imported characters\n');f:close()
end,cfg.url..'/v1/roster','POST')
request:setPOSTData(json.encode({token=cfg.token}));request:start()
