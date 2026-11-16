package com.tencent.turingfd.sdk.ams.ad;

import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.private, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cprivate extends Eridanus implements Cloneable {
    public static Map<String, String> h = null;
    public static Map<Integer, Integer> i = null;
    public static Map<String, String> j = null;
    public static final /* synthetic */ boolean k = true;
    public long a = 0;
    public boolean b = true;
    public long c = 0;
    public Map<String, String> d = null;
    public Map<Integer, Integer> e = null;
    public long f = 0;
    public Map<String, String> g = null;

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Draco draco) {
        draco.a(this.a, 0);
        draco.a(this.b ? (byte) 1 : (byte) 0, 1);
        draco.a(this.c, 2);
        draco.a((Map) this.d, 3);
        draco.a((Map) this.e, 4);
        draco.a(this.f, 5);
        Map<String, String> map = this.g;
        if (map != null) {
            draco.a((Map) map, 6);
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (k) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        Cprivate cprivate = (Cprivate) obj;
        if (Equuleus.a(this.a, cprivate.a)) {
            return (this.b == cprivate.b) && Equuleus.a(this.c, cprivate.c) && this.d.equals(cprivate.d) && this.e.equals(cprivate.e) && Equuleus.a(this.f, cprivate.f) && this.g.equals(cprivate.g);
        }
        return false;
    }

    public int hashCode() {
        try {
            throw new Exception("");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Eridanus
    public void a(Dorado dorado) {
        this.a = dorado.a(this.a, 0, true);
        this.b = dorado.a(this.b, 1, true);
        this.c = dorado.a(this.c, 2, true);
        this.d = (Map) dorado.a((Dorado) h, 3, true);
        this.e = (Map) dorado.a((Dorado) i, 4, true);
        this.f = dorado.a(this.f, 5, true);
        this.g = (Map) dorado.a((Dorado) j, 6, false);
    }

    static {
        HashMap hashMap = new HashMap();
        h = hashMap;
        hashMap.put("", "");
        i = new HashMap();
        i.put(0, 0);
        HashMap hashMap2 = new HashMap();
        j = hashMap2;
        hashMap2.put("", "");
    }
}
