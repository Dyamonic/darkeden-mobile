package com.tencent.turingfd.sdk.ams.ad;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.transient, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctransient {
    public static final Set<String> a = new LinkedHashSet();

    public static int a() {
        Set<String> set = a;
        if (set.isEmpty()) {
            set.add(Cfinally.a(Cfinally.T0));
            set.add(Cfinally.a(Cfinally.U0));
            set.add(Cfinally.a(Cfinally.V0));
            set.add(Cfinally.a(Cfinally.W0));
            set.add(Cfinally.a(Cfinally.X0));
            set.add(Cfinally.a(Cfinally.Y0));
        }
        Iterator<String> it = set.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            try {
                Class.forName(it.next());
                i |= 1 << i2;
            } catch (Throwable unused) {
            }
            i2++;
        }
        return i;
    }
}
