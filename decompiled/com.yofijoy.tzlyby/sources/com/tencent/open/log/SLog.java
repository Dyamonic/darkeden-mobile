package com.tencent.open.log;

import android.os.Environment;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.d;
import java.io.File;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class SLog {
    public static final String TAG = "openSDK_LOG";
    protected static final b b = new b(a(), c.m, c.g, c.h, c.c, c.i, 10, c.e, c.n);
    private static boolean c;
    public static SLog instance;
    protected a a = new a(b);

    public static SLog getInstance() {
        if (instance == null) {
            synchronized (SLog.class) {
                if (instance == null) {
                    instance = new SLog();
                    c = true;
                }
            }
        }
        return instance;
    }

    private SLog() {
    }

    protected void a(int i, String str, String str2, Throwable th) {
        a aVar;
        if (c) {
            String b2 = com.tencent.open.utils.e.b();
            if (!TextUtils.isEmpty(b2)) {
                String str3 = b2 + " SDK_VERSION:" + Constants.SDK_VERSION;
                if (this.a == null) {
                    return;
                }
                e.a.b(32, Thread.currentThread(), System.currentTimeMillis(), TAG, str3, null);
                this.a.b(32, Thread.currentThread(), System.currentTimeMillis(), TAG, str3, null);
                c = false;
            }
        }
        e.a.b(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        if (!d.a.a(c.b, i) || (aVar = this.a) == null) {
            return;
        }
        aVar.b(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
    }

    public static final void v(String str, String str2) {
        getInstance().a(1, str, str2, null);
    }

    public static final void v(String str, String str2, Throwable th) {
        getInstance().a(1, str, str2, th);
    }

    public static final void d(String str, String str2) {
        getInstance().a(2, str, str2, null);
    }

    public static final void d(String str, String str2, Throwable th) {
        getInstance().a(2, str, str2, th);
    }

    public static final void i(String str, String str2) {
        getInstance().a(4, str, str2, null);
    }

    public static final void i(String str, String str2, Throwable th) {
        getInstance().a(4, str, str2, th);
    }

    public static final void w(String str, String str2) {
        getInstance().a(8, str, str2, null);
    }

    public static final void w(String str, String str2, Throwable th) {
        getInstance().a(8, str, str2, th);
    }

    public static final void e(String str, String str2) {
        getInstance().a(16, str, str2, null);
    }

    public static final void e(String str, String str2, Throwable th) {
        getInstance().a(16, str, str2, th);
    }

    public static final void u(String str, String str2) {
        getInstance().a(32, str, str2, null);
    }

    public static final void u(String str, String str2, Throwable th) {
        getInstance().a(32, str, str2, th);
    }

    public static void flushLogs() {
        getInstance().c();
    }

    public static void release() {
        synchronized (SLog.class) {
            getInstance().b();
            if (instance != null) {
                instance = null;
            }
        }
    }

    protected static File a() {
        String str = c.d;
        boolean z = false;
        try {
            d.c b2 = d.b.b();
            if (b2 != null) {
                if (b2.c() > c.f) {
                    z = true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (z) {
            return new File(Environment.getExternalStorageDirectory(), str);
        }
        return new File(com.tencent.open.utils.e.c(), str);
    }

    protected void b() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
            this.a.b();
            this.a = null;
        }
    }

    protected void c() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
    }
}
