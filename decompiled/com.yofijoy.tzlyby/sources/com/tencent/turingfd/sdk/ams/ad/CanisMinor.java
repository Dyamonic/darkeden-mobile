package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public interface CanisMinor {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.CanisMinor$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo {
        public final int a;
        public final byte[] b;

        public Cdo(int i, byte[] bArr) {
            if (i != 0 && (i > -1000 || i < -9999)) {
                i = -9999;
            }
            this.a = i;
            this.b = bArr;
        }
    }
}
