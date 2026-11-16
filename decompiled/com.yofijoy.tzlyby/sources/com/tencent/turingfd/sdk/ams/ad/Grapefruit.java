package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;

/* loaded from: classes2.dex */
public class Grapefruit implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Herbaceous d;

    public Grapefruit(Herbaceous herbaceous, Context context, boolean z, int i) {
        this.d = herbaceous;
        this.a = context;
        this.b = z;
        this.c = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r10 = this;
            com.tencent.turingfd.sdk.ams.ad.Herbaceous r0 = r10.d
            android.content.Context r1 = r10.a
            boolean r2 = r10.b
            int r3 = r10.c
            com.tencent.turingfd.sdk.ams.ad.Hickory r4 = r0.d
            r4.getClass()
            java.lang.String r4 = "403"
            java.lang.String r4 = com.tencent.turingfd.sdk.ams.ad.Hickory.b(r1, r4)
            r5 = 1
            boolean r6 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L24
            if (r6 == 0) goto L1b
            goto L24
        L1b:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L24
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L24
            goto L25
        L24:
            r4 = r5
        L25:
            r6 = 0
            r7 = r6
        L27:
            com.tencent.turingfd.sdk.ams.ad.Flat r8 = r0.a
            int r8 = r8.y
            if (r7 >= r8) goto L41
            com.tencent.turingfd.sdk.ams.ad.Ginkgo r8 = r0.a(r1, r2, r4, r3)
            r0.a(r8, r5)
            int r8 = r8.c
            if (r8 != 0) goto L39
            goto L41
        L39:
            r9 = -30014(0xffffffffffff8ac2, float:NaN)
            if (r8 != r9) goto L3e
            goto L41
        L3e:
            int r7 = r7 + 1
            goto L27
        L41:
            if (r4 == 0) goto L5e
            com.tencent.turingfd.sdk.ams.ad.Hickory r2 = r0.d
            r2.getClass()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = ""
            r3.append(r4)
            r3.append(r6)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "403"
            r2.a(r1, r4, r3, r5)
        L5e:
            java.util.concurrent.atomic.AtomicReference<java.lang.Boolean> r1 = r0.g
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicReference<java.lang.Boolean> r2 = r0.g     // Catch: java.lang.Throwable -> L6f
            java.lang.Boolean r3 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L6f
            r2.set(r3)     // Catch: java.lang.Throwable -> L6f
            java.util.concurrent.atomic.AtomicReference<java.lang.Boolean> r0 = r0.g     // Catch: java.lang.Throwable -> L6f
            r0.notifyAll()     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6f
            return
        L6f:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L6f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Grapefruit.run():void");
    }
}
