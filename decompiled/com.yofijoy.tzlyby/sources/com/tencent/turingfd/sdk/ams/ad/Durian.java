package com.tencent.turingfd.sdk.ams.ad;

import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class Durian extends Eridanus {
    public static ArrayList<Fig> e;
    public long a = 0;
    public int b = 0;
    public ArrayList<Fig> c = null;
    public int d = 0;

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Draco draco) {
        draco.a(this.a, 0);
        draco.a(this.b, 1);
        draco.a((Collection) this.c, 2);
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Dorado dorado) {
        this.a = dorado.a(this.a, 0, true);
        this.b = dorado.a(this.b, 1, true);
        if (e == null) {
            ArrayList<Fig> arrayList = new ArrayList<>();
            e = arrayList;
            arrayList.add(new Fig());
        }
        this.c = (ArrayList) dorado.a((Dorado) e, 2, true);
    }
}
