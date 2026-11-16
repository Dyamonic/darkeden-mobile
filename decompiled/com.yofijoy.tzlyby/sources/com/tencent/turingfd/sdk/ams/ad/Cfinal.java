package com.tencent.turingfd.sdk.ams.ad;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.Locale;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.final, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfinal {
    public final String a;
    public final int b;
    public final Durian c;

    public Cfinal(String str, int i, Durian durian) {
        this.a = str;
        this.b = i;
        this.c = durian;
    }

    public static String a(String str, String str2, String str3) {
        return !TextUtils.isEmpty(str3) ? str3.replace(str, str2) : str3;
    }

    public String a() {
        StringBuilder sb = new StringBuilder();
        String str = this.a;
        if (str == null) {
            str = "";
        }
        sb.append(a("&", "%0A", a(",", "%54", a("_", "%5F", a(";", "%3B", a(":", "%3A", str))))));
        sb.append("_");
        sb.append(this.b);
        sb.append("_");
        Durian durian = this.c;
        if (durian == null) {
            return sb.toString();
        }
        sb.append(durian.a);
        sb.append(":");
        sb.append(this.c.b);
        sb.append(":");
        Iterator<Fig> it = this.c.c.iterator();
        while (it.hasNext()) {
            Fig next = it.next();
            sb.append(next.a);
            sb.append(",");
            sb.append(",");
            sb.append(",");
            String format = String.format(Locale.SIMPLIFIED_CHINESE, "%.5f", Float.valueOf(next.d));
            if (format.indexOf(".") > 0) {
                format = format.replaceAll("0+?$", "").replaceAll("[.]$", "");
            }
            sb.append(format);
            sb.append(",");
            String format2 = String.format(Locale.SIMPLIFIED_CHINESE, "%.5f", Float.valueOf(next.e));
            if (format2.indexOf(".") > 0) {
                format2 = format2.replaceAll("0+?$", "").replaceAll("[.]$", "");
            }
            sb.append(format2);
            if (it.hasNext()) {
                sb.append(";");
            }
        }
        sb.append(":");
        sb.append(this.c.d);
        return sb.toString();
    }
}
