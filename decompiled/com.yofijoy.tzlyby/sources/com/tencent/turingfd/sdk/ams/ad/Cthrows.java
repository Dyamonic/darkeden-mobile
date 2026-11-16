package com.tencent.turingfd.sdk.ams.ad;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrows extends Eridanus {
    public String a = "";
    public String b = "";

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Draco draco) {
        draco.a(this.a, 0);
        draco.a(this.b, 1);
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Dorado dorado) {
        this.a = dorado.b(0, true);
        this.b = dorado.b(1, true);
    }
}
