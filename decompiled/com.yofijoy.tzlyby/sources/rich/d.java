package rich;

import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import rich.c;

/* loaded from: classes2.dex */
public class d extends Thread {
    public static final boolean f = v.b;
    public final BlockingQueue a;
    public final BlockingQueue b;
    public final c c;
    public final r d;
    public volatile boolean e = false;

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public final /* synthetic */ o a;

        public a(o oVar) {
            this.a = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                d.this.b.put(this.a);
            } catch (InterruptedException unused) {
            }
        }
    }

    public d(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, c cVar, r rVar) {
        this.a = blockingQueue;
        this.b = blockingQueue2;
        this.c = cVar;
        this.d = rVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f) {
            v.d("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        ((y) this.c).a();
        while (true) {
            try {
                o oVar = (o) this.a.take();
                try {
                    oVar.a("cache-queue-take");
                    if (oVar.j) {
                        oVar.b("cache-discard-canceled");
                    } else {
                        c.a a2 = ((y) this.c).a(oVar.b());
                        if (a2 == null) {
                            oVar.a("cache-miss");
                        } else {
                            if (a2.e < System.currentTimeMillis()) {
                                oVar.a("cache-hit-expired");
                                oVar.m = a2;
                            } else {
                                oVar.a("cache-hit");
                                q a3 = oVar.a(new k(200, a2.a, a2.g, false, 0L));
                                oVar.a("cache-hit-parsed");
                                if (!(a2.f < System.currentTimeMillis())) {
                                    ((f) this.d).a(oVar, a3);
                                } else {
                                    oVar.a("cache-hit-refresh-needed");
                                    oVar.m = a2;
                                    a3.d = true;
                                    ((f) this.d).a(oVar, a3, new a(oVar));
                                }
                            }
                        }
                        this.b.put(oVar);
                    }
                } catch (Exception e) {
                    Log.e("Volley", v.a("Unhandled exception %s", e.toString()), e);
                }
            } catch (InterruptedException unused) {
                if (this.e) {
                    return;
                }
            }
        }
    }
}
