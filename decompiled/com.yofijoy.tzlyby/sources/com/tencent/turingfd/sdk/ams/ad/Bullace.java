package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public final class Bullace extends Eridanus implements Cloneable {
    public static Cprivate d = new Cprivate();
    public static final /* synthetic */ boolean e = true;
    public int a = 0;
    public Cprivate b = null;
    public long c = 0;

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Draco draco) {
        draco.a(this.a, 0);
        Cprivate cprivate = this.b;
        if (cprivate != null) {
            draco.a((Eridanus) cprivate, 1);
        }
        draco.a(this.c, 2);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (e) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Bullace bullace = (Bullace) obj;
        return Equuleus.a(this.a, bullace.a) && this.b.equals(bullace.b) && Equuleus.a(this.c, bullace.c);
    }

    public int hashCode() {
        try {
            throw new Exception("");
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Dorado dorado) {
        this.a = dorado.a(this.a, 0, true);
        this.b = (Cprivate) dorado.a((Eridanus) d, 1, false);
        this.c = dorado.a(this.c, 2, true);
    }
}
