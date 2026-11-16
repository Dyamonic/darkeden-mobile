package com.tencent.turingfd.sdk.ams.ad;

/* loaded from: classes2.dex */
public class Cepheus {
    public static String a(String str) {
        int indexOf;
        String[] split = str.split(" ", 3);
        if (split.length <= 2 || !"rwxp".equals(split[1]) || (indexOf = split[2].indexOf(47)) == -1) {
            return null;
        }
        String trim = split[2].substring(indexOf).trim();
        if (trim.startsWith("/data/")) {
            return null;
        }
        return split[1] + ";" + trim;
    }
}
