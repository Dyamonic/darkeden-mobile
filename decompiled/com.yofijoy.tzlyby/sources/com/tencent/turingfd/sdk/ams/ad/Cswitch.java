package com.tencent.turingfd.sdk.ams.ad;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.switch, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cswitch {
    public static void a(StringBuilder sb) {
        if (sb.length() > 0) {
            sb.append(",");
        }
        sb.append("T:");
        long j = Marc.a;
        sb.append(j);
        sb.append(",");
        sb.append("LT:");
        sb.append(System.currentTimeMillis() - j);
    }
}
