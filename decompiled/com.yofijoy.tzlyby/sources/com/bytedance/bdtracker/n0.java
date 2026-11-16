package com.bytedance.bdtracker;

import android.os.Process;
import com.bytedance.applog.exception.AppCrashType;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.b;
import java.lang.Thread;
import java.util.Collections;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class n0 implements Thread.UncaughtExceptionHandler {
    public static volatile n0 b;
    public final Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();

    /* loaded from: classes.dex */
    public class a implements b.e {
        public a(n0 n0Var) {
        }

        @Override // com.bytedance.bdtracker.b.e
        public boolean a(d dVar) {
            return dVar.getInitConfig() != null && AppCrashType.hasJavaCrashType(dVar.getInitConfig().getTrackCrashType());
        }
    }

    /* loaded from: classes.dex */
    public class b implements b.d {
        public final /* synthetic */ Throwable a;
        public final /* synthetic */ b.e b;
        public final /* synthetic */ e4 c;

        public b(n0 n0Var, Throwable th, b.e eVar, e4 e4Var) {
            this.a = th;
            this.b = eVar;
            this.c = e4Var;
        }

        @Override // com.bytedance.bdtracker.b.d
        public void a(d dVar) {
            if (dVar.getInitConfig() != null && dVar.getInitConfig().isMonitorEnabled()) {
                p2.b(dVar.getMonitor(), this.a);
            }
            if (this.b.a(dVar)) {
                dVar.receive(this.c);
                dVar.flush();
            }
        }
    }

    public n0() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static synchronized void a() {
        synchronized (n0.class) {
            if (b == null) {
                b = new n0();
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        long currentTimeMillis = System.currentTimeMillis();
        a aVar = new a(this);
        if (!com.bytedance.bdtracker.b.a(aVar)) {
            com.bytedance.bdtracker.b.a(new o0(this, th));
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
                return;
            }
            try {
                Process.killProcess(Process.myPid());
                System.exit(10);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$is_backstage", !v.b);
            jSONObject.put("$event_time", currentTimeMillis);
            jSONObject.put("$crash_thread", thread.getName());
            jSONObject.put("$crash_process", k0.b());
            StringBuilder sb = new StringBuilder();
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                sb.append(th2.toString());
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    sb.append("\n\tat ");
                    sb.append(stackTraceElement);
                }
            }
            jSONObject.put("$detailed_stack", sb.toString());
        } catch (Throwable th3) {
            LoggerImpl.global().error(Collections.singletonList("ExceptionHandler"), "Collect crash params failed", th3, new Object[0]);
        }
        com.bytedance.bdtracker.b.a(new b(this, th, aVar, new e4("$crash", jSONObject)));
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.a;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }
}
