"""Loopback development server. Runtime database/keys are deliberately outside Git."""
from pathlib import Path
import argparse,hmac,json,os,secrets,signal,threading,time
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer
from engine import Engine

DEFAULT=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'DarkEdenMobileServer'

def main():
    p=argparse.ArgumentParser();p.add_argument('--host',default='127.0.0.1');p.add_argument('--port',type=int,default=8088)
    p.add_argument('--state-dir',type=Path,default=DEFAULT);args=p.parse_args()
    args.state_dir.mkdir(parents=True,exist_ok=True)
    keyfile=args.state_dir/'connection.json'
    if not keyfile.exists():keyfile.write_text(json.dumps({'token':secrets.token_urlsafe(36)},indent=2)+'\n')
    key=json.loads(keyfile.read_text())['token'];game=Engine(args.state_dir/'world.sqlite3');lock=threading.RLock();stop=threading.Event()
    (args.state_dir/'server.pid').write_text(str(os.getpid()))
    shutdown=args.state_dir/'shutdown'
    if shutdown.exists():shutdown.unlink()
    class Handler(BaseHTTPRequestHandler):
        def log_message(self,*args):pass
        def reply(self,code,data):
            body=json.dumps(data,separators=(',',':'),allow_nan=False).encode()
            self.send_response(code);self.send_header('Content-Type','application/json');self.send_header('Content-Length',str(len(body)));self.end_headers();self.wfile.write(body)
        def do_GET(self):
            self.reply(200,{'service':'DarkEden Mobile Private Server','protocol':1,'status':'ready'}) if self.path=='/health' else self.reply(404,{'error':'Not found'})
        def do_POST(self):
            data={}
            try:
                size=int(self.headers.get('Content-Length','0'))
                if not 0<size<=262144:raise ValueError('Invalid request size')
                data=json.loads(self.rfile.read(size))
                if not isinstance(data,dict):raise ValueError('Invalid request')
                if not isinstance(data.get('token'),str) or not hmac.compare_digest(data['token'],key):self.reply(401,{'error':'Connection key rejected'});return
                with lock:
                    if self.path=='/v1/roster':result={'characters':game.roster()}
                    elif self.path=='/v1/create':result={'state':game.create(data['name'],data['appearance'])}
                    elif self.path=='/v1/enter':result=game.enter(data['name'])
                    elif self.path=='/v1/step':result=game.step(data['name'],data)
                    else:self.reply(404,{'error':'Unknown operation'});return
                    self.reply(200,result)
            except (ValueError,KeyError,TypeError,OverflowError) as err:
                # The bundled legacy Cocos HTTP binding discards non-2xx bodies.
                self.reply(200 if isinstance(data,dict) and data.get('transport')=='cocos' else 400,{'error':str(err)})
            except (BrokenPipeError,ConnectionResetError):pass
            except Exception:
                import traceback
                with (args.state_dir/'errors.log').open('a',encoding='utf-8') as f:traceback.print_exc(file=f)
                self.reply(500,{'error':'Server operation failed; inspect the local server log'})
    def tick():
        previous=time.monotonic()
        while not stop.wait(.1):
            if shutdown.exists():http.shutdown();return
            now=time.monotonic()
            try:
                with lock:game.tick(min(.25,now-previous))
            except Exception:
                import traceback
                with (args.state_dir/'errors.log').open('a',encoding='utf-8') as f:traceback.print_exc(file=f)
            previous=now
    http=ThreadingHTTPServer((args.host,args.port),Handler);threading.Thread(target=tick,daemon=True).start()
    print(f'DarkEden mobile server ready on {args.host}:{args.port}',flush=True)
    try:http.serve_forever()
    finally:
        stop.set()
        with lock:
            for session in game.sessions.values():game.persist(session['state'])
        http.server_close();game.db.close()
        (args.state_dir/'server.pid').unlink(missing_ok=True);shutdown.unlink(missing_ok=True)

if __name__=='__main__':main()
