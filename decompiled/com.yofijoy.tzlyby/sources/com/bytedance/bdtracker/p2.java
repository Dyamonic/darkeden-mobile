package com.bytedance.bdtracker;

import android.os.SystemClock;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* loaded from: classes.dex */
public final class p2 {
    @JvmStatic
    public static final void a(m2 m2Var, long j, String str, int i) {
        if (str == null) {
            str = "";
        }
        y2 y2Var = new y2(j, str, 1L);
        y2Var.a = i;
        if (m2Var != null) {
            ((r2) m2Var).a(y2Var);
        }
    }

    @JvmStatic
    public static final void a(m2 m2Var, String metricsName, String str, long j) {
        u2 s2Var;
        Intrinsics.checkParameterIsNotNull(metricsName, "metricsName");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int hashCode = metricsName.hashCode();
        if (hashCode != -73212100) {
            if (hashCode == 270071285 && metricsName.equals("sdk_init")) {
                s2Var = new e3(elapsedRealtime - j);
            }
            s2Var = null;
        } else {
            if (metricsName.equals("api_usage")) {
                s2Var = new s2(str, elapsedRealtime - j);
            }
            s2Var = null;
        }
        if (s2Var == null || m2Var == null) {
            return;
        }
        ((r2) m2Var).a(s2Var);
    }

    @JvmStatic
    public static final void a(m2 m2Var, Throwable e) {
        Intrinsics.checkParameterIsNotNull(e, "e");
        if (m2Var != null) {
            ((r2) m2Var).a(new x2(e));
        }
    }

    @JvmStatic
    public static final void b(m2 m2Var, Throwable e) {
        String str;
        Intrinsics.checkParameterIsNotNull(e, "e");
        try {
            str = e.getStackTrace()[0].toString();
        } catch (Exception unused) {
            str = "";
        }
        if ((StringsKt.startsWith$default(str, "com.bytedance.applog", false, 2, (Object) null) || StringsKt.startsWith$default(str, "com.bytedance.bdtracker", false, 2, (Object) null)) && m2Var != null) {
            ((r2) m2Var).a(new d3(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.bytedance.bdtracker.m2 r4, java.net.URL r5, long r6, int r8, java.lang.String r9) {
        /*
            java.lang.String r0 = "url"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "responseMsg"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            if (r4 == 0) goto L75
            r0 = 0
            if (r5 != 0) goto L10
            goto L1a
        L10:
            java.lang.String r1 = r5.getPath()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L1c
        L1a:
            r1 = r0
            goto L26
        L1c:
            java.lang.String r1 = r5.getPath()
            java.lang.String r2 = "/simulator/"
            boolean r1 = r1.startsWith(r2)
        L26:
            if (r1 != 0) goto L75
            long r1 = android.os.SystemClock.elapsedRealtime()
            com.bytedance.bdtracker.c3 r3 = new com.bytedance.bdtracker.c3
            r3.<init>()
            long r1 = r1 - r6
            r3.e = r1
            r6 = 1
            if (r5 != 0) goto L38
            goto L42
        L38:
            java.lang.String r7 = r5.getPath()
            boolean r1 = android.text.TextUtils.isEmpty(r7)
            if (r1 == 0) goto L45
        L42:
            java.lang.String r7 = ""
            goto L5e
        L45:
            java.lang.String r1 = "/"
            boolean r2 = r7.contains(r1)
            if (r2 == 0) goto L5e
            java.lang.String r5 = r5.getPath()
            java.lang.String[] r5 = r5.split(r1)
            if (r5 == 0) goto L5e
            int r1 = r5.length
            if (r1 <= 0) goto L5e
            int r7 = r5.length
            int r7 = r7 - r6
            r7 = r5[r7]
        L5e:
            r3.d = r7
            r5 = 200(0xc8, float:2.8E-43)
            if (r8 != r5) goto L66
            r0 = r6
            goto L6e
        L66:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r8)
            r3.b = r5
            r3.c = r9
        L6e:
            r3.a = r0
            com.bytedance.bdtracker.r2 r4 = (com.bytedance.bdtracker.r2) r4
            r4.a(r3)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.p2.a(com.bytedance.bdtracker.m2, java.net.URL, long, int, java.lang.String):void");
    }
}
