package com.tencent.turingfd.sdk.ams.ad;

import com.tencent.turingfd.sdk.ams.ad.CanisMinor;
import com.tencent.turingfd.sdk.ams.ad.Csynchronized;

/* loaded from: classes2.dex */
public class Longan {
    public static final Longan b = new Longan();
    public Flat a;

    public Mango a(int i, byte[] bArr, int i2, int i3, CanisMajor canisMajor) {
        Mango a;
        CanisMinor canisMinor = this.a.a;
        if (canisMinor == null) {
            return Mango.a(-20000);
        }
        try {
            System.currentTimeMillis();
            CanisMinor.Cdo a2 = ((Csynchronized.Cdo) canisMinor).a(bArr);
            int i4 = a2.a;
            if (i4 != 0) {
                a = Mango.a(i4 - 20000);
            } else {
                a = Mango.a(a2.b);
            }
            return a;
        } catch (Throwable unused) {
            return Mango.a(-20000);
        }
    }
}
