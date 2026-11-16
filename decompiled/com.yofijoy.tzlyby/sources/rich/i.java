package rich;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
public class i extends Thread {
    public final BlockingQueue a;
    public final h b;
    public final c c;
    public final r d;
    public volatile boolean e = false;

    public i(BlockingQueue blockingQueue, h hVar, c cVar, r rVar) {
        this.a = blockingQueue;
        this.b = hVar;
        this.c = cVar;
        this.d = rVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            SystemClock.elapsedRealtime();
            try {
                o oVar = (o) this.a.take();
                try {
                    oVar.a("network-queue-take");
                    if (oVar.j) {
                        oVar.b("network-discard-cancelled");
                    } else {
                        if (Build.VERSION.SDK_INT >= 14) {
                            TrafficStats.setThreadStatsTag(oVar.e);
                        }
                        k a = ((w) this.b).a(oVar);
                        oVar.a("network-http-complete");
                        if (a.d && oVar.k) {
                            oVar.b("not-modified");
                        } else {
                            q a2 = oVar.a(a);
                            oVar.a("network-parse-complete");
                            if (oVar.i && a2.b != null) {
                                ((y) this.c).a(oVar.b(), a2.b);
                                oVar.a("network-cache-written");
                            }
                            oVar.k = true;
                            ((f) this.d).a(oVar, a2);
                        }
                    }
                } catch (u e) {
                    SystemClock.elapsedRealtime();
                    ((f) this.d).a(oVar, oVar.a(e));
                } catch (Exception e2) {
                    Log.e("Volley", v.a("Unhandled exception %s", e2.toString()), e2);
                    u uVar = new u(e2);
                    SystemClock.elapsedRealtime();
                    ((f) this.d).a(oVar, uVar);
                }
            } catch (InterruptedException unused) {
                if (this.e) {
                    return;
                }
            }
        }
    }
}
