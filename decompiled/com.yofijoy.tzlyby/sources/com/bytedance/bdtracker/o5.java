package com.bytedance.bdtracker;

import android.content.Context;
import android.os.SystemClock;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.store.kv.IKVStore;
import com.bytedance.bdtracker.d0;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class o5 {
    public static m5<q5> a = new a();

    /* loaded from: classes.dex */
    public static class a extends m5<q5> {
        @Override // com.bytedance.bdtracker.m5
        public q5 a(Object[] objArr) {
            return new q5((Context) objArr[0]);
        }
    }

    public static String a(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString(BreakpointSQLiteKey.ID, null);
        }
        return null;
    }

    public static void a(IOaidObserver iOaidObserver) {
        q5.a(iOaidObserver);
    }

    public static void a(g gVar) {
        g gVar2;
        q5.k = gVar;
        Map<String, String> map = q5.m;
        if (map == null || (gVar2 = q5.k) == null) {
            return;
        }
        ((d0.b) gVar2).a(map);
    }

    public static void b(Context context) {
        LoggerImpl.global().debug(1, "Oaid#initOaidEarly", new Object[0]);
        a.b(context).a();
    }

    public static void b(IOaidObserver iOaidObserver) {
        q5.b(iOaidObserver);
    }

    public static String a(IKVStore iKVStore) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String b = n5.a.b(iKVStore);
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        LoggerImpl.global().debug(1, "getCdid takes " + elapsedRealtime2 + " ms", new Object[0]);
        return b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
    
        if (r2 != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map a(android.content.Context r12) {
        /*
            long r0 = android.os.SystemClock.elapsedRealtime()
            com.bytedance.bdtracker.m5<com.bytedance.bdtracker.q5> r2 = com.bytedance.bdtracker.o5.a
            r3 = 1
            java.lang.Object[] r4 = new java.lang.Object[r3]
            r5 = 0
            r4[r5] = r12
            java.lang.Object r12 = r2.b(r4)
            com.bytedance.bdtracker.q5 r12 = (com.bytedance.bdtracker.q5) r12
            boolean r2 = r12.c
            java.lang.String r4 = " ms"
            if (r2 != 0) goto L1b
            r12 = 0
            goto Lbd
        L1b:
            r12.a()
            com.bytedance.applog.log.IAppLogLogger r2 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Oaid#getOaid timeoutMills="
            r6.append(r7)
            r7 = 100
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r9 = new java.lang.Object[r5]
            r2.debug(r3, r6, r9)
            java.util.Map<java.lang.String, java.lang.String> r2 = com.bytedance.bdtracker.q5.m
            if (r2 != 0) goto Lac
            long r9 = android.os.SystemClock.elapsedRealtime()
            com.bytedance.dr.OaidApi r2 = r12.b     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L54
            java.lang.String r6 = "HONOR"
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L8e
            boolean r2 = r6.equalsIgnoreCase(r2)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L54
            r7 = 200(0xc8, double:9.9E-322)
        L54:
            java.util.concurrent.locks.ReentrantLock r2 = r12.a     // Catch: java.lang.Throwable -> L8e
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L8e
            boolean r2 = r2.tryLock(r7, r6)     // Catch: java.lang.Throwable -> L8e
            long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L89
            long r6 = r6 - r9
            com.bytedance.applog.log.IAppLogLogger r8 = com.bytedance.applog.log.LoggerImpl.global()     // Catch: java.lang.Throwable -> L89
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L89
            r9.<init>()     // Catch: java.lang.Throwable -> L89
            java.lang.String r10 = "Oaid#getOaid locked="
            r9.append(r10)     // Catch: java.lang.Throwable -> L89
            r9.append(r2)     // Catch: java.lang.Throwable -> L89
            java.lang.String r10 = ", took "
            r9.append(r10)     // Catch: java.lang.Throwable -> L89
            r9.append(r6)     // Catch: java.lang.Throwable -> L89
            r9.append(r4)     // Catch: java.lang.Throwable -> L89
            java.lang.String r6 = r9.toString()     // Catch: java.lang.Throwable -> L89
            java.lang.Object[] r7 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L89
            r8.debug(r3, r6, r7)     // Catch: java.lang.Throwable -> L89
            if (r2 == 0) goto Lac
            goto L9d
        L89:
            r6 = move-exception
            r11 = r6
            r6 = r2
            r2 = r11
            goto L90
        L8e:
            r2 = move-exception
            r6 = r5
        L90:
            com.bytedance.applog.log.IAppLogLogger r7 = com.bytedance.applog.log.LoggerImpl.global()     // Catch: java.lang.Throwable -> La3
            java.lang.String r8 = "Oaid#Get oaid failed"
            java.lang.Object[] r9 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> La3
            r7.error(r3, r8, r2, r9)     // Catch: java.lang.Throwable -> La3
            if (r6 == 0) goto Lac
        L9d:
            java.util.concurrent.locks.ReentrantLock r12 = r12.a
            r12.unlock()
            goto Lac
        La3:
            r0 = move-exception
            if (r6 == 0) goto Lab
            java.util.concurrent.locks.ReentrantLock r12 = r12.a
            r12.unlock()
        Lab:
            throw r0
        Lac:
            com.bytedance.applog.log.IAppLogLogger r12 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.Object[] r2 = new java.lang.Object[r3]
            java.util.Map<java.lang.String, java.lang.String> r6 = com.bytedance.bdtracker.q5.m
            r2[r5] = r6
            java.lang.String r6 = "Oaid#getOaid return apiMap={}"
            r12.debug(r3, r6, r2)
            java.util.Map<java.lang.String, java.lang.String> r12 = com.bytedance.bdtracker.q5.m
        Lbd:
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r6 = r6 - r0
            com.bytedance.applog.log.IAppLogLogger r0 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Oaid#getOaid takes "
            r1.append(r2)
            r1.append(r6)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            java.lang.Object[] r2 = new java.lang.Object[r5]
            r0.debug(r3, r1, r2)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.o5.a(android.content.Context):java.util.Map");
    }
}
