package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public final class Cantaloupe extends Eridanus implements Cloneable {
    public int a = 0;
    public String b = "";
    public int c = 0;
    public int d = 0;
    public String e = "";
    public long f = 0;

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Draco draco) {
        draco.a(this.a, 0);
        draco.a(this.b, 1);
        int i = this.c;
        if (i != 0) {
            draco.a(i, 3);
        }
        int i2 = this.d;
        if (i2 != 0) {
            draco.a(i2, 4);
        }
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Dorado dorado) {
        this.a = dorado.a(this.a, 0, true);
        this.b = dorado.b(1, true);
        this.c = dorado.a(this.c, 3, false);
        this.d = dorado.a(this.d, 4, false);
        this.e = dorado.b(5, false);
        this.f = dorado.a(this.f, 6, false);
    }
}
