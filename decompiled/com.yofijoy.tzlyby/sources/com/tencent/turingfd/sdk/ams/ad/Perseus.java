package com.tencent.turingfd.sdk.ams.ad;

import android.os.Build;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class Perseus {
    public static Map<String, Cdo> a;
    public static Phoenix b;
    public static String c;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Perseus$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo {
        public Aquila a;
        public int b = 0;

        public Cdo(Aquila aquila) {
            this.a = aquila;
        }
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        a = concurrentHashMap;
        concurrentHashMap.put("C892BA2", new Cdo(new Solar()));
        a.put("43780D5", new Cdo(new Solar()));
        a.put("7CD3AF2", new Cdo(new Solar()));
        a.put("22792AF", new Cdo(new Scorpius()));
        c = "";
        try {
            c = Norma.a(Build.MANUFACTURER.toLowerCase().getBytes()).substring(0, 7);
        } catch (Throwable unused) {
        }
    }
}
