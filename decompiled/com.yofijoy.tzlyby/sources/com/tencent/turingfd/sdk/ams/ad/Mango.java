package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public class Mango {
    public static final byte[] e = new byte[0];
    public final int a;
    public final int b;
    public final int c;
    public final byte[] d;

    public Mango(int i, byte[] bArr, int i2, int i3) {
        this.a = i;
        this.d = bArr;
        this.b = i2;
        this.c = i3;
    }

    public static Mango a(int i) {
        return new Mango(i, e, 0, 0);
    }

    public static Mango a(byte[] bArr) {
        return new Mango(0, bArr, 0, 0);
    }
}
