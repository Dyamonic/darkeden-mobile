package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public class Berry {
    public static final Gemini<Cfinal> a = new Gemini<>(3);
    public static final Gemini<Cfinal> b = new Gemini<>(3);
    public static final Cfinal[] c = new Cfinal[0];
    public static long d = 0;
    public static final Nectarine e = new Cdo();

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Berry$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Nectarine {
        public void a(Cfinal cfinal) {
            int i = cfinal.b;
            if (i != 2 && i != 3) {
                Durian durian = cfinal.c;
                if (durian != null) {
                    long abs = Math.abs(durian.a - Berry.d);
                    Berry.d = System.currentTimeMillis();
                    if (abs < 1000) {
                        return;
                    }
                    Gemini<Cfinal> gemini = Berry.a;
                    synchronized (gemini) {
                        gemini.a(cfinal);
                    }
                    return;
                }
                return;
            }
            Gemini<Cfinal> gemini2 = Berry.b;
            synchronized (gemini2) {
                gemini2.a(cfinal);
            }
        }
    }
}
