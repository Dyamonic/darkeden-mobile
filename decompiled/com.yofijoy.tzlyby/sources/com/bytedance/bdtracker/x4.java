package com.bytedance.bdtracker;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class x4 {
    public static volatile String a;

    /* loaded from: classes.dex */
    public static class a implements Callable<String> {
        public final /* synthetic */ Context a;
        public final /* synthetic */ v1 b;

        public a(Context context, v1 v1Var) {
            this.a = context;
            this.b = v1Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0042 A[Catch: all -> 0x0073, TryCatch #0 {, blocks: (B:6:0x000b, B:8:0x0013, B:9:0x0015, B:17:0x003c, B:19:0x0042, B:20:0x006f, B:21:0x0071, B:23:0x004d, B:25:0x005d, B:29:0x0068, B:33:0x0026, B:35:0x002a, B:38:0x002f, B:40:0x0036, B:14:0x0018, B:16:0x0020), top: B:5:0x000b, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x004d A[Catch: all -> 0x0073, TryCatch #0 {, blocks: (B:6:0x000b, B:8:0x0013, B:9:0x0015, B:17:0x003c, B:19:0x0042, B:20:0x006f, B:21:0x0071, B:23:0x004d, B:25:0x005d, B:29:0x0068, B:33:0x0026, B:35:0x002a, B:38:0x002f, B:40:0x0036, B:14:0x0018, B:16:0x0020), top: B:5:0x000b, inners: #1 }] */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String call() {
            /*
                r6 = this;
                java.lang.String r0 = com.bytedance.bdtracker.x4.a
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 == 0) goto L76
                java.lang.Class<com.bytedance.bdtracker.x4> r0 = com.bytedance.bdtracker.x4.class
                monitor-enter(r0)
                java.lang.String r1 = com.bytedance.bdtracker.x4.a     // Catch: java.lang.Throwable -> L73
                boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L73
                if (r1 != 0) goto L17
                java.lang.String r1 = com.bytedance.bdtracker.x4.a     // Catch: java.lang.Throwable -> L73
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L73
                return r1
            L17:
                r1 = 0
                android.content.Context r2 = r6.a     // Catch: java.lang.Throwable -> L25
                com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r2 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r2)     // Catch: java.lang.Throwable -> L25
                if (r2 == 0) goto L3b
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Throwable -> L25
                goto L3c
            L25:
                r2 = move-exception
                boolean r3 = r2 instanceof java.lang.ClassNotFoundException     // Catch: java.lang.Throwable -> L73
                if (r3 != 0) goto L3b
                boolean r3 = r2 instanceof java.lang.NoClassDefFoundError     // Catch: java.lang.Throwable -> L73
                if (r3 == 0) goto L2f
                goto L3b
            L2f:
                com.bytedance.applog.log.IAppLogLogger r3 = com.bytedance.applog.log.LoggerImpl.global()     // Catch: java.lang.Throwable -> L73
                java.lang.String r4 = "Query Gaid failed"
                r5 = 0
                java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L73
                r3.error(r4, r2, r5)     // Catch: java.lang.Throwable -> L73
            L3b:
                r2 = r1
            L3c:
                boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L73
                if (r3 == 0) goto L4d
                com.bytedance.bdtracker.v1 r2 = r6.b     // Catch: java.lang.Throwable -> L73
                com.bytedance.applog.store.kv.IKVStore r2 = r2.f     // Catch: java.lang.Throwable -> L73
                java.lang.String r3 = "google_aid"
                java.lang.String r2 = r2.getString(r3, r1)     // Catch: java.lang.Throwable -> L73
                goto L6f
            L4d:
                com.bytedance.bdtracker.v1 r3 = r6.b     // Catch: java.lang.Throwable -> L73
                com.bytedance.applog.store.kv.IKVStore r3 = r3.f     // Catch: java.lang.Throwable -> L73
                java.lang.String r4 = "google_aid"
                java.lang.String r1 = r3.getString(r4, r1)     // Catch: java.lang.Throwable -> L73
                boolean r1 = android.text.TextUtils.equals(r1, r2)     // Catch: java.lang.Throwable -> L73
                if (r1 != 0) goto L6f
                com.bytedance.bdtracker.v1 r1 = r6.b     // Catch: java.lang.Throwable -> L73
                boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L73
                if (r3 != 0) goto L6f
                if (r1 != 0) goto L68
                goto L6f
            L68:
                com.bytedance.applog.store.kv.IKVStore r1 = r1.f     // Catch: java.lang.Throwable -> L73
                java.lang.String r3 = "google_aid"
                r1.putString(r3, r2)     // Catch: java.lang.Throwable -> L73
            L6f:
                com.bytedance.bdtracker.x4.a = r2     // Catch: java.lang.Throwable -> L73
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L73
                goto L76
            L73:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L73
                throw r1
            L76:
                java.lang.String r0 = com.bytedance.bdtracker.x4.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.x4.a.call():java.lang.String");
        }
    }

    public static String a(Context context, v1 v1Var) {
        return (String) w.a.submit(new a(context, v1Var)).get(v1Var.c.getGaidTimeOutMilliSeconds(), TimeUnit.MILLISECONDS);
    }
}
