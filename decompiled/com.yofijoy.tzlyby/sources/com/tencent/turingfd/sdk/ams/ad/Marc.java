package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.os.Build;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.tencent.turingfd.sdk.ams.ad.Herbaceous;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class Marc {
    public static final long a = System.currentTimeMillis();
    public static final AtomicBoolean b = new AtomicBoolean(false);
    public static final AtomicBoolean c = new AtomicBoolean(false);
    public static final Sculptor d = new Sculptor(false);
    public static final Sculptor e = new Sculptor(true);

    public static void a(Flat flat) {
        Herbaceous herbaceous = Herbaceous.l;
        herbaceous.a = flat;
        if (!herbaceous.c) {
            herbaceous.c = true;
            Ccase.a(flat.b());
            HandlerThread handlerThread = new HandlerThread("TuringFdCore_90_" + Carambola.a + "_ad", -8);
            handlerThread.start();
            herbaceous.b = new Herbaceous.Cdo(handlerThread.getLooper(), flat.b());
            Hickory hickory = new Hickory(herbaceous.b);
            herbaceous.d = hickory;
            Lemon lemon = Lemon.g;
            lemon.d = flat;
            lemon.e = hickory;
            String str = Build.BRAND;
            if ("xiaomi".equalsIgnoreCase(str) || "redmi".equalsIgnoreCase(str)) {
                synchronized (lemon.a) {
                    lemon.a.add(148);
                }
            }
            int[] iArr = Ccatch.a;
            if (iArr.length > 0) {
                synchronized (lemon.a) {
                    for (int i : iArr) {
                        lemon.a.add(Integer.valueOf(i));
                    }
                }
            }
            lemon.b();
            new Grape(herbaceous).start();
        }
        Blackberry.a();
    }

    public static int b(Flat flat) {
        AtomicBoolean atomicBoolean = b;
        if (atomicBoolean.get()) {
            return 0;
        }
        boolean z = true;
        if (flat.h) {
            TextUtils.isEmpty(flat.k);
            String str = flat.k;
            try {
                if (TextUtils.isEmpty(str)) {
                    System.loadLibrary("turingad");
                } else {
                    System.load(str);
                }
            } catch (Throwable th) {
                Log.w("TuringFdJava", th);
                z = false;
            }
            b.set(z);
            if (!z) {
                Log.e("TuringFdJava", "load so failure");
            }
        } else {
            atomicBoolean.set(true);
        }
        return b.get() ? 0 : -10001;
    }

    public static int c(Flat flat) {
        Context b2 = flat.b();
        HashMap hashMap = new HashMap();
        Kiwifruit kiwifruit = Kiwifruit.f;
        boolean a2 = Triangulum.a();
        hashMap.put("2008", (a2 && kiwifruit.a("e_w_d", false)) ? "1" : "0");
        hashMap.put("2009", (a2 && kiwifruit.a("e_r_d", true)) ? "1" : "0");
        hashMap.put("2010", (a2 && kiwifruit.a("e_w_nd", true)) ? "1" : "0");
        hashMap.put("2011", (a2 && kiwifruit.a("e_r_nd", true)) ? "1" : "0");
        hashMap.put("2025", "0");
        hashMap.put("2028", flat.C ? "1" : "0");
        try {
            int b3 = Pyxis.b(TNative$aa.i90_9F87DFDD2CC93068(new SparseArray(), b2, hashMap, d, e, Loquat.a.b()));
            if (b3 == 0) {
                return 0;
            }
            Log.e("TuringFdJava", "native init fail, err: " + b3);
            return -10020;
        } catch (Throwable th) {
            Log.e("TuringFdJava", "native init exception", th);
            return -10020;
        }
    }

    public static String b() {
        Flat flat;
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(Locale.SIMPLIFIED_CHINESE, "TuringFD v%d", 90));
        sb.append(" (9F87DFDD2CC93068");
        sb.append(", ad");
        sb.append(", b8ba8c8");
        StringBuilder sb2 = new StringBuilder();
        if (!sb2.toString().isEmpty()) {
            sb2.append(";");
        }
        sb2.append("rfr");
        if (!sb2.toString().isEmpty()) {
            sb2.append(";");
        }
        sb2.append("rs");
        String sb3 = sb2.toString();
        if (!TextUtils.isEmpty(sb3)) {
            sb.append(", ");
            sb.append(sb3);
        }
        sb.append(", ");
        StringBuilder sb4 = new StringBuilder();
        if (!sb4.toString().isEmpty()) {
            sb4.append(";");
        }
        sb4.append("wup");
        if (!sb4.toString().isEmpty()) {
            sb4.append(";");
        }
        sb4.append("105548");
        sb.append(sb4.toString());
        sb.append(String.format(Locale.SIMPLIFIED_CHINESE, ", compiled %s)", "2024_10_25_15_29_52"));
        synchronized (Flat.class) {
            flat = Flat.D;
        }
        if (flat != null) {
            sb.append(" [");
            StringBuilder sb5 = new StringBuilder();
            StringBuilder a2 = Banana.a("url(");
            a2.append(TextUtils.join(",", flat.i));
            a2.append(")");
            String sb6 = a2.toString();
            if (!sb5.toString().isEmpty()) {
                sb5.append(";");
            }
            sb5.append(sb6);
            String str = "c(" + flat.f + ")";
            if (!sb5.toString().isEmpty()) {
                sb5.append(";");
            }
            sb5.append(str);
            if (flat.z) {
                if (!sb5.toString().isEmpty()) {
                    sb5.append(";");
                }
                sb5.append("ext");
            }
            sb.append(sb5.toString());
            sb.append("]");
        }
        return sb.toString();
    }

    public static int a() {
        Flat flat;
        if (!c.get()) {
            return -10002;
        }
        if (Carambola.a == 0) {
            return -10018;
        }
        if (!b.get()) {
            return -10001;
        }
        synchronized (Flat.class) {
            flat = Flat.D;
        }
        return !flat.c().userAgreement() ? -10019 : 0;
    }
}
