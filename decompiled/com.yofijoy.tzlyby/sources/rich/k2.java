package rich;

import android.content.Context;
import java.lang.Thread;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class k2 {
    public static final ExecutorService a = new ThreadPoolExecutor(0, 30, 60, TimeUnit.SECONDS, new SynchronousQueue());

    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable {
        public final Thread.UncaughtExceptionHandler a;

        /* renamed from: rich.k2$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0071a implements Thread.UncaughtExceptionHandler {
            public C0071a(a aVar) {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                th.printStackTrace();
            }
        }

        /* loaded from: classes2.dex */
        public class b implements Thread.UncaughtExceptionHandler {
            public final /* synthetic */ l0 a;
            public final /* synthetic */ Context b;

            public b(a aVar, l0 l0Var, Context context) {
                this.a = l0Var;
                this.b = context;
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                this.a.a().A.add(th);
                t0.b(this.b).a("200025", "发生未知错误", this.a, null);
            }
        }

        public a() {
            this.a = new C0071a(this);
        }

        public a(Context context, l0 l0Var) {
            this.a = new b(this, l0Var, context);
        }

        public abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setUncaughtExceptionHandler(this.a);
            a();
            Thread.currentThread().setUncaughtExceptionHandler(null);
        }
    }

    public static void a(a aVar) {
        try {
            a.execute(aVar);
        } catch (Exception e) {
            aVar.a.uncaughtException(Thread.currentThread(), e);
        }
    }
}
