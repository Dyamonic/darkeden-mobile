package com.tencent.turingfd.sdk.ams.ad;

import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class Arbutus {
    public static final String[] a;
    public static volatile Pattern[] b;

    static {
        int[] iArr = Cfinally.o;
        int[] iArr2 = Cfinally.p;
        int[] iArr3 = Cfinally.q;
        int[] iArr4 = Cfinally.r;
        int[] iArr5 = Cfinally.s;
        int[] iArr6 = Cfinally.t;
        int[] iArr7 = Cfinally.u;
        int[] iArr8 = Cfinally.v;
        int[] iArr9 = Cfinally.x;
        int[] iArr10 = Cfinally.E;
        int[] iArr11 = Cfinally.F;
        int[] iArr12 = Cfinally.G;
        int[] iArr13 = Cfinally.H;
        int[] iArr14 = Cfinally.I;
        a = new String[]{Cfinally.a(iArr), Cfinally.a(iArr2), Cfinally.a(iArr3), Cfinally.a(iArr4), Cfinally.a(iArr5), Cfinally.a(iArr6), Cfinally.a(iArr7), Cfinally.a(iArr8), Cfinally.a(Cfinally.w), Cfinally.a(iArr9), Cfinally.a(Cfinally.y), Cfinally.a(Cfinally.z), Cfinally.a(Cfinally.A), Cfinally.a(Cfinally.B), Cfinally.a(Cfinally.C), Cfinally.a(Cfinally.D), Cfinally.a(iArr10), Cfinally.a(iArr11), Cfinally.a(iArr12), Cfinally.a(iArr13), Cfinally.a(iArr14)};
        Cfinally.a(iArr);
        Cfinally.a(iArr2);
        Cfinally.a(iArr3);
        Cfinally.a(iArr4);
        Cfinally.a(iArr5);
        Cfinally.a(iArr6);
        Cfinally.a(iArr7);
        Cfinally.a(iArr8);
        Cfinally.a(iArr9);
        Cfinally.a(iArr10);
        Cfinally.a(iArr11);
        Cfinally.a(iArr12);
        Cfinally.a(iArr13);
        Cfinally.a(iArr14);
        b = null;
    }

    public static synchronized Pattern[] a() {
        synchronized (Arbutus.class) {
            if (b != null) {
                return b;
            }
            String[] strArr = a;
            b = new Pattern[strArr.length];
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < b.length; i++) {
                try {
                    arrayList.add(Pattern.compile(strArr[i]));
                } catch (Throwable unused) {
                }
            }
            b = (Pattern[]) arrayList.toArray(new Pattern[0]);
            return b;
        }
    }
}
