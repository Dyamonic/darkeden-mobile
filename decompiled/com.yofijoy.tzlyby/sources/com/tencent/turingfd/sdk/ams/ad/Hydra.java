package com.tencent.turingfd.sdk.ams.ad;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class Hydra {
    public static final Hydra b = a(new Locale[0]);
    public final LeoMinor a;

    public Hydra(LeoMinor leoMinor) {
        this.a = leoMinor;
    }

    public static Hydra a(Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new Hydra(new Leo(new LocaleList(localeArr)));
        }
        return new Hydra(new Lacerta(localeArr));
    }

    public static Hydra a(String str) {
        Locale locale;
        if (str != null && !str.isEmpty()) {
            String[] split = str.split(",", -1);
            int length = split.length;
            Locale[] localeArr = new Locale[length];
            for (int i = 0; i < length; i++) {
                if (Build.VERSION.SDK_INT >= 21) {
                    locale = Locale.forLanguageTag(split[i]);
                } else {
                    String str2 = split[i];
                    if (str2.contains("-")) {
                        String[] split2 = str2.split("-", -1);
                        if (split2.length > 2) {
                            locale = new Locale(split2[0], split2[1], split2[2]);
                        } else if (split2.length > 1) {
                            locale = new Locale(split2[0], split2[1]);
                        } else if (split2.length == 1) {
                            locale = new Locale(split2[0]);
                        } else {
                            throw new IllegalArgumentException("Can not parse language tag: [" + str2 + "]");
                        }
                    } else if (str2.contains("_")) {
                        String[] split3 = str2.split("_", -1);
                        if (split3.length > 2) {
                            locale = new Locale(split3[0], split3[1], split3[2]);
                        } else if (split3.length > 1) {
                            locale = new Locale(split3[0], split3[1]);
                        } else if (split3.length == 1) {
                            locale = new Locale(split3[0]);
                        } else {
                            throw new IllegalArgumentException("Can not parse language tag: [" + str2 + "]");
                        }
                    } else {
                        locale = new Locale(str2);
                    }
                }
                localeArr[i] = locale;
            }
            return a(localeArr);
        }
        return b;
    }
}
