package com.bytedance.bdtracker;

import android.util.Log;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;

/* loaded from: classes.dex */
public class p5 implements Runnable {
    public final Runnable a;
    public final String b;
    public final String c = Log.getStackTraceString(new RuntimeException("origin stacktrace"));

    public p5(Runnable runnable, String str) {
        this.a = runnable;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.run();
        } catch (Throwable th) {
            IAppLogLogger global = LoggerImpl.global();
            StringBuilder a = a.a("Oaid#Thread:");
            a.append(this.b);
            a.append(" exception\n");
            a.append(this.c);
            global.error(1, a.toString(), th, new Object[0]);
        }
    }
}
