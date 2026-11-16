package rich;

import android.os.Handler;
import java.util.concurrent.Executor;
import rich.q;

/* loaded from: classes2.dex */
public class f implements r {
    public final Executor a;

    /* loaded from: classes2.dex */
    public class a implements Executor {
        public final /* synthetic */ Handler a;

        public a(f fVar, Handler handler) {
            this.a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.a.post(runnable);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        public final o a;
        public final q b;
        public final Runnable c;

        public b(f fVar, o oVar, q qVar, Runnable runnable) {
            this.a = oVar;
            this.b = qVar;
            this.c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = this.a;
            if (oVar.j) {
                oVar.b("canceled-at-delivery");
                return;
            }
            if (this.b.c == null) {
                o oVar2 = this.a;
                Object obj = this.b.a;
                q.b bVar = ((f0) oVar2).o;
                if (bVar != null) {
                    bVar.a(obj);
                }
            } else {
                o oVar3 = this.a;
                u uVar = this.b.c;
                q.a aVar = oVar3.f;
                if (aVar != null) {
                    aVar.a(uVar);
                }
            }
            if (this.b.d) {
                this.a.a("intermediate-response");
            } else {
                this.a.b("done");
            }
            Runnable runnable = this.c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public f(Handler handler) {
        this.a = new a(this, handler);
    }

    public void a(o oVar, q qVar) {
        a(oVar, qVar, null);
    }

    public void a(o oVar, u uVar) {
        oVar.a("post-error");
        this.a.execute(new b(this, oVar, new q(uVar), null));
    }

    public void a(o oVar, q qVar, Runnable runnable) {
        oVar.k = true;
        oVar.a("post-response");
        this.a.execute(new b(this, oVar, qVar, runnable));
    }
}
