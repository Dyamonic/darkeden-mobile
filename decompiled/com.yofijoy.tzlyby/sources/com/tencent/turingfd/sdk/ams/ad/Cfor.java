package com.tencent.turingfd.sdk.ams.ad;

import android.os.Handler;
import android.os.Message;
import java.lang.reflect.Method;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor implements Handler.Callback {
    public final Handler.Callback a;
    public final Cnew b;
    public final String c;

    public Cfor(Handler.Callback callback, Cnew cnew, String str) {
        this.a = callback;
        this.b = cnew;
        this.c = str;
    }

    public final boolean a(Message message) {
        Object a;
        Object obj = message.obj;
        if (obj == null) {
            return false;
        }
        Object a2 = Apple.a(obj.getClass(), "argi3", message.obj);
        if (!(a2 instanceof Integer) || (a = Apple.a(message.obj.getClass(), "arg1", message.obj)) == null) {
            return false;
        }
        Class<?> cls = a.getClass();
        Class[] clsArr = {Boolean.TYPE, Integer.TYPE};
        Object[] objArr = {Boolean.FALSE, a2};
        try {
            Method a3 = Apple.a(cls, "setPerformAccessibilityActionResult", (Class<?>[]) clsArr);
            if (a3 != null) {
                a3.invoke(a, objArr);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x001e, B:10:0x0026, B:12:0x002c, B:16:0x0036, B:18:0x003a, B:22:0x0030, B:23:0x0015), top: B:2:0x0001 }] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r6) {
        /*
            r5 = this;
            r0 = 0
            int r1 = r6.what     // Catch: java.lang.Throwable -> L3f
            r2 = 1
            if (r1 != r2) goto L32
            com.tencent.turingfd.sdk.ams.ad.new r1 = r5.b     // Catch: java.lang.Throwable -> L3f
            java.lang.String r3 = r5.c     // Catch: java.lang.Throwable -> L3f
            com.tencent.turingfd.sdk.ams.ad.throw$do r1 = (com.tencent.turingfd.sdk.ams.ad.Cthrow.Cdo) r1     // Catch: java.lang.Throwable -> L3f
            java.util.concurrent.atomic.AtomicBoolean r4 = r1.a     // Catch: java.lang.Throwable -> L3f
            boolean r4 = r4.get()     // Catch: java.lang.Throwable -> L3f
            if (r4 == 0) goto L15
            goto L1e
        L15:
            com.tencent.turingfd.sdk.ams.ad.const r1 = r1.b     // Catch: java.lang.Throwable -> L3f
            android.os.Message r1 = r1.obtainMessage(r2, r3)     // Catch: java.lang.Throwable -> L3f
            r1.sendToTarget()     // Catch: java.lang.Throwable -> L3f
        L1e:
            java.util.concurrent.atomic.AtomicBoolean r1 = com.tencent.turingfd.sdk.ams.ad.Cinterface.a     // Catch: java.lang.Throwable -> L3f
            boolean r1 = r1.get()     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L30
            boolean r1 = r5.a(r6)     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L30
            java.util.concurrent.atomic.AtomicBoolean r1 = com.tencent.turingfd.sdk.ams.ad.Cinterface.a     // Catch: java.lang.Throwable -> L3f
            r1 = r2
            goto L33
        L30:
            java.util.concurrent.atomic.AtomicBoolean r1 = com.tencent.turingfd.sdk.ams.ad.Cinterface.a     // Catch: java.lang.Throwable -> L3f
        L32:
            r1 = r0
        L33:
            if (r1 == 0) goto L36
            return r2
        L36:
            android.os.Handler$Callback r1 = r5.a     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L3f
            boolean r6 = r1.handleMessage(r6)     // Catch: java.lang.Throwable -> L3f
            return r6
        L3f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Cfor.handleMessage(android.os.Message):boolean");
    }
}
