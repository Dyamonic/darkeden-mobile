package com.bytedance.bdtracker;

import android.view.View;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class l5 {
    public static Field b;
    public static Class c;
    public static Class d;
    public static final List<String> a = Collections.singletonList("WindowHelper");
    public static boolean e = false;

    /* JADX WARN: Can't wrap try/catch for region: R(21:3|(1:5)(1:52)|6|7|8|(1:10)(3:45|46|(1:48)(1:49))|11|(1:13)(1:44)|14|15|(2:16|17)|(10:19|20|21|23|24|(1:26)(1:33)|27|28|29|30)(1:40)|37|38|23|24|(0)(0)|27|28|29|30) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009c, code lost:
    
        com.bytedance.applog.log.LoggerImpl.global().error(com.bytedance.bdtracker.l5.a, "Get popup view failed", r0, new java.lang.Object[0]);
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a() {
        /*
            boolean r0 = com.bytedance.bdtracker.l5.e
            if (r0 != 0) goto Lab
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 17
            if (r0 < r1) goto Ld
            java.lang.String r0 = "android.view.WindowManagerGlobal"
            goto Lf
        Ld:
            java.lang.String r0 = "android.view.WindowManagerImpl"
        Lf:
            r2 = 1
            r3 = 0
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L52
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L52
            if (r4 < r1) goto L1c
            java.lang.String r1 = "sDefaultWindowManager"
            goto L27
        L1c:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L52
            r4 = 13
            if (r1 < r4) goto L25
            java.lang.String r1 = "sWindowManager"
            goto L27
        L25:
            java.lang.String r1 = "mWindowManager"
        L27:
            java.lang.String r4 = "mViews"
            java.lang.reflect.Field r4 = r0.getDeclaredField(r4)     // Catch: java.lang.Throwable -> L52
            com.bytedance.bdtracker.l5.b = r4     // Catch: java.lang.Throwable -> L52
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Throwable -> L52
            java.lang.reflect.Field r1 = com.bytedance.bdtracker.l5.b     // Catch: java.lang.Throwable -> L52
            r1.setAccessible(r2)     // Catch: java.lang.Throwable -> L52
            java.lang.reflect.Field r1 = com.bytedance.bdtracker.l5.b     // Catch: java.lang.Throwable -> L52
            java.lang.Class r1 = r1.getType()     // Catch: java.lang.Throwable -> L52
            java.lang.Class<java.util.ArrayList> r4 = java.util.ArrayList.class
            if (r1 != r4) goto L43
            goto L4a
        L43:
            java.lang.reflect.Field r1 = com.bytedance.bdtracker.l5.b     // Catch: java.lang.Throwable -> L52
            r1.getType()     // Catch: java.lang.Throwable -> L52
            java.lang.Class<android.view.View[]> r1 = android.view.View[].class
        L4a:
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L52
            r1 = 0
            r0.get(r1)     // Catch: java.lang.Throwable -> L52
            goto L60
        L52:
            r0 = move-exception
            com.bytedance.applog.log.IAppLogLogger r1 = com.bytedance.applog.log.LoggerImpl.global()
            java.util.List<java.lang.String> r4 = com.bytedance.bdtracker.l5.a
            java.lang.Object[] r5 = new java.lang.Object[r3]
            java.lang.String r6 = "Get window manager views failed"
            r1.error(r4, r6, r0, r5)
        L60:
            r0 = 23
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L7c
            if (r1 < r0) goto L76
            java.lang.String r1 = "com.android.internal.policy.PhoneWindow$DecorView"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.ClassNotFoundException -> L6f java.lang.Throwable -> L7c
            com.bytedance.bdtracker.l5.c = r1     // Catch: java.lang.ClassNotFoundException -> L6f java.lang.Throwable -> L7c
            goto L8a
        L6f:
            java.lang.String r1 = "com.android.internal.policy.DecorView"
        L71:
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L7c
            goto L79
        L76:
            java.lang.String r1 = "com.android.internal.policy.impl.PhoneWindow$DecorView"
            goto L71
        L79:
            com.bytedance.bdtracker.l5.c = r1     // Catch: java.lang.Throwable -> L7c
            goto L8a
        L7c:
            r1 = move-exception
            com.bytedance.applog.log.IAppLogLogger r4 = com.bytedance.applog.log.LoggerImpl.global()
            java.util.List<java.lang.String> r5 = com.bytedance.bdtracker.l5.a
            java.lang.Object[] r6 = new java.lang.Object[r3]
            java.lang.String r7 = "Get DecorView failed"
            r4.error(r5, r7, r1, r6)
        L8a:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L9b
            if (r1 < r0) goto L95
            java.lang.String r0 = "android.widget.PopupWindow$PopupDecorView"
        L90:
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L9b
            goto L98
        L95:
            java.lang.String r0 = "android.widget.PopupWindow$PopupViewContainer"
            goto L90
        L98:
            com.bytedance.bdtracker.l5.d = r0     // Catch: java.lang.Throwable -> L9b
            goto La9
        L9b:
            r0 = move-exception
            com.bytedance.applog.log.IAppLogLogger r1 = com.bytedance.applog.log.LoggerImpl.global()
            java.util.List<java.lang.String> r4 = com.bytedance.bdtracker.l5.a
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r5 = "Get popup view failed"
            r1.error(r4, r5, r0, r3)
        La9:
            com.bytedance.bdtracker.l5.e = r2
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.l5.a():void");
    }

    public static boolean a(View view) {
        if (!e) {
            a();
        }
        Class<?> cls = view.getClass();
        return cls == c || cls == d;
    }
}
