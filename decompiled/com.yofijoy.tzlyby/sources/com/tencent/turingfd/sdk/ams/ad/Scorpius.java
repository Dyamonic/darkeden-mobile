package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;

/* loaded from: classes2.dex */
public class Scorpius implements Aquila {
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x002d, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 24) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
    
        if (r2 >= 24) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        r6.release();
     */
    @Override // com.tencent.turingfd.sdk.ams.ad.Aquila
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.turingfd.sdk.ams.ad.Phoenix a(android.content.Context r6) {
        /*
            r5 = this;
            int[] r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.x0
            java.lang.String r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.a(r0)
            android.net.Uri r0 = android.net.Uri.parse(r0)
            int[] r1 = com.tencent.turingfd.sdk.ams.ad.Cfinally.a
            java.lang.String r1 = com.tencent.turingfd.sdk.ams.ad.Cfinally.a(r1)
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 0
            r4 = 17
            if (r2 < r4) goto L37
            android.content.ContentResolver r6 = r6.getContentResolver()
            android.content.ContentProviderClient r6 = r6.acquireContentProviderClient(r0)
            r0 = 24
            android.os.Bundle r1 = r6.call(r1, r3, r3)     // Catch: java.lang.Throwable -> L29
            r3 = r1
            if (r2 < r0) goto L33
            goto L2f
        L29:
            if (r6 == 0) goto L3f
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r0) goto L33
        L2f:
            r6.close()
            goto L3f
        L33:
            r6.release()
            goto L3f
        L37:
            android.content.ContentResolver r6 = r6.getContentResolver()
            android.os.Bundle r3 = r6.call(r0, r1, r3, r3)
        L3f:
            r6 = -1
            if (r3 != 0) goto L47
            com.tencent.turingfd.sdk.ams.ad.Phoenix r6 = com.tencent.turingfd.sdk.ams.ad.Phoenix.a(r6)
            return r6
        L47:
            int[] r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.y0
            java.lang.String r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.a(r0)
            int r6 = r3.getInt(r0, r6)
            if (r6 == 0) goto L59
            r6 = -2
            com.tencent.turingfd.sdk.ams.ad.Phoenix r6 = com.tencent.turingfd.sdk.ams.ad.Phoenix.a(r6)
            return r6
        L59:
            com.tencent.turingfd.sdk.ams.ad.Phoenix r6 = new com.tencent.turingfd.sdk.ams.ad.Phoenix
            int[] r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.z0
            java.lang.String r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.a(r0)
            java.lang.String r0 = r3.getString(r0)
            r1 = 0
            r6.<init>(r0, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Scorpius.a(android.content.Context):com.tencent.turingfd.sdk.ams.ad.Phoenix");
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Aquila
    public void b(Context context) {
    }
}
