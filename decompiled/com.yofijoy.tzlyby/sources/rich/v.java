package rich;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class v {
    public static String a = "Volley";
    public static boolean b = Log.isLoggable(a, 2);

    /* loaded from: classes2.dex */
    public static class a {
        public static final boolean c = v.b;
        public final List a = new ArrayList();
        public boolean b = false;

        /* renamed from: rich.v$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0072a {
            public final String a;
            public final long b;
            public final long c;

            public C0072a(String str, long j, long j2) {
                this.a = str;
                this.b = j;
                this.c = j2;
            }
        }

        public synchronized void a(String str) {
            long j;
            this.b = true;
            if (this.a.size() == 0) {
                j = 0;
            } else {
                long j2 = ((C0072a) this.a.get(0)).c;
                List list = this.a;
                j = ((C0072a) list.get(list.size() - 1)).c - j2;
            }
            if (j <= 0) {
                return;
            }
            long j3 = ((C0072a) this.a.get(0)).c;
            v.b("(%-4d ms) %s", Long.valueOf(j), str);
            for (C0072a c0072a : this.a) {
                long j4 = c0072a.c;
                v.b("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(c0072a.b), c0072a.a);
                j3 = j4;
            }
        }

        public synchronized void a(String str, long j) {
            if (this.b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.a.add(new C0072a(str, j, SystemClock.elapsedRealtime()));
        }

        public void finalize() {
            if (this.b) {
                return;
            }
            a("Request on the loose");
            v.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    public static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (!stackTrace[i].getClass().equals(v.class)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    public static void b(String str, Object... objArr) {
        Log.d("Volley", a(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e("Volley", a(str, objArr));
    }

    public static void d(String str, Object... objArr) {
        if (b) {
            Log.v("Volley", a(str, objArr));
        }
    }
}
