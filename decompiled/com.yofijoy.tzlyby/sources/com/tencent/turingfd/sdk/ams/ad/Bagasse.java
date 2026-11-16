package com.tencent.turingfd.sdk.ams.ad;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class Bagasse {
    public final String a;
    public final URL b;
    public final String c = "GET";
    public final Map<String, String> d;
    public final int e;
    public final int f;
    public final boolean g;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Bagasse$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo {
        public final String a;
        public final URL b;
        public final HashMap<String, String> c;
        public int d;
        public int e;
        public boolean f;

        public Cdo(String str) throws MalformedURLException {
            HashMap<String, String> hashMap = new HashMap<>();
            this.c = hashMap;
            this.d = 10000;
            this.e = 10000;
            this.f = true;
            this.a = str;
            this.b = new URL(str);
            hashMap.put("Content-Type", "application/json; charset=utf-8");
        }
    }

    public Bagasse(Cdo cdo) {
        this.a = cdo.a;
        this.b = cdo.b;
        this.d = cdo.c;
        this.e = cdo.d;
        this.f = cdo.e;
        this.g = cdo.f;
    }
}
