package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public class Coconut {
    public int a;
    public int b;
    public long c;
    public String d;
    public int e;
    public int f;

    public Coconut(int i, int i2, long j, String str, int i3, int i4) {
        this.a = -1;
        this.b = -1;
        this.c = -1L;
        this.d = "";
        this.e = -1;
        this.f = -1;
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = str;
        this.e = i3;
        this.f = i4;
    }

    public static Coconut a(int i) {
        return new Coconut(i, 100, -1L, "", -1, -2);
    }

    public String toString() {
        return this.a + "_" + this.b + "_" + this.c + "_" + this.e + "_" + this.d + "_" + this.f;
    }

    public static Coconut a(int i, int i2) {
        return new Coconut(i, 200, -1L, "", -1, i2);
    }
}
