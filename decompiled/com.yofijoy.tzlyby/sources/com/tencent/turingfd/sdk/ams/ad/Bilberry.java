package com.tencent.turingfd.sdk.ams.ad;

import java.util.HashMap;

/* loaded from: classes2.dex */
public final /* synthetic */ class Bilberry {
    public static void a(HashMap hashMap, String str, String str2, long j, Cabstract cabstract, int i) {
        hashMap.put(str, str2);
        cabstract.a.put(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis() - j));
    }
}
