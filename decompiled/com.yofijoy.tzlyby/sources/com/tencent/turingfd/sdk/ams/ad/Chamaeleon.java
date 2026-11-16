package com.tencent.turingfd.sdk.ams.ad;

import android.os.Process;
import android.text.TextUtils;
import com.tencent.turingfd.sdk.ams.ad.Virgo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class Chamaeleon {
    public static final Set<String> a;
    public static final String[] b;
    public static final Set<String> c;

    static {
        HashSet hashSet = new HashSet();
        a = hashSet;
        b = new String[0];
        hashSet.add(Cfinally.a(Cfinally.M));
        hashSet.add(Cfinally.a(Cfinally.N));
        hashSet.add(Cfinally.a(Cfinally.O));
        hashSet.add(Cfinally.a(Cfinally.P));
        hashSet.add(Cfinally.a(Cfinally.Q));
        hashSet.add(Cfinally.a(Cfinally.R));
        hashSet.add(Cfinally.a(Cfinally.S));
        hashSet.add(Cfinally.a(Cfinally.T));
        hashSet.add(Cfinally.a(Cfinally.U));
        hashSet.add(Cfinally.a(Cfinally.V));
        hashSet.add(Cfinally.a(Cfinally.W));
        hashSet.add(Cfinally.a(Cfinally.X));
        HashSet hashSet2 = new HashSet();
        c = hashSet2;
        hashSet2.add(Cfinally.a(Cfinally.L));
    }

    public static List<Cthrows> a() {
        boolean z;
        boolean z2;
        Virgo.Cdo b2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String[] list = new File("/proc").list();
        if (list != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        char charAt = str.charAt(0);
                        if (charAt <= '9' && charAt >= '0' && (b2 = Virgo.b(Integer.parseInt(str))) != null) {
                            arrayList2.add(b2);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        int myPid = Process.myPid();
        Iterator it = arrayList2.iterator();
        int i = 0;
        while (it.hasNext()) {
            Virgo.Cdo cdo = (Virgo.Cdo) it.next();
            if (myPid == cdo.a) {
                i = cdo.e;
            }
        }
        if (i != 0 && myPid != i) {
            Iterator it2 = arrayList2.iterator();
            String str2 = "";
            while (it2.hasNext()) {
                Virgo.Cdo cdo2 = (Virgo.Cdo) it2.next();
                if (i == cdo2.a) {
                    str2 = cdo2.d;
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                Cthrows cthrows = new Cthrows();
                cthrows.a = Foxnut.a + Foxnut.e;
                cthrows.b = str2;
                arrayList3.add(cthrows);
            }
        }
        arrayList.addAll(arrayList3);
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList4 = new ArrayList();
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            Virgo.Cdo cdo3 = (Virgo.Cdo) it3.next();
            Iterator it4 = ((HashSet) a).iterator();
            while (it4.hasNext()) {
                if (cdo3.d.contains((String) it4.next())) {
                    sb.append(cdo3.d);
                    sb.append("_");
                }
            }
        }
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(sb2)) {
            Cthrows cthrows2 = new Cthrows();
            cthrows2.a = Foxnut.a + Foxnut.c;
            cthrows2.b = sb2.substring(0, sb2.length() - 1);
            arrayList4.add(cthrows2);
        }
        arrayList.addAll(arrayList4);
        ArrayList arrayList5 = new ArrayList();
        StringBuilder sb3 = new StringBuilder();
        HashSet hashSet = new HashSet();
        Iterator it5 = arrayList2.iterator();
        int i2 = 0;
        while (it5.hasNext()) {
            Virgo.Cdo cdo4 = (Virgo.Cdo) it5.next();
            if (cdo4.c == 0 && cdo4.d.startsWith("/") && !cdo4.d.startsWith("/system") && !cdo4.d.startsWith("/dev") && !cdo4.d.startsWith("/sbin") && !cdo4.d.startsWith("/init") && !cdo4.d.startsWith("/vendor") && !cdo4.d.startsWith("/bin") && !cdo4.d.startsWith("/usr") && !cdo4.d.contains("kinguser") && !cdo4.d.endsWith("so")) {
                Iterator it6 = ((HashSet) a).iterator();
                while (true) {
                    if (!it6.hasNext()) {
                        z = false;
                        break;
                    }
                    if (cdo4.d.contains((String) it6.next())) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    continue;
                } else {
                    Iterator it7 = ((HashSet) c).iterator();
                    while (true) {
                        if (!it7.hasNext()) {
                            z2 = false;
                            break;
                        }
                        if (cdo4.d.contains((String) it7.next())) {
                            z2 = true;
                            break;
                        }
                    }
                    if (z2) {
                        continue;
                    } else {
                        hashSet.add(cdo4.d);
                        int i3 = i2 + 1;
                        if (i2 >= 8) {
                            break;
                        }
                        i2 = i3;
                    }
                }
            }
        }
        if (hashSet.size() > 0) {
            Iterator it8 = hashSet.iterator();
            while (it8.hasNext()) {
                sb3.append((String) it8.next());
                sb3.append("%3B");
            }
            String sb4 = sb3.toString();
            Cthrows cthrows3 = new Cthrows();
            cthrows3.a = Foxnut.a + Foxnut.d;
            cthrows3.b = sb4.substring(0, sb4.length() - 1);
            arrayList5.add(cthrows3);
        }
        arrayList.addAll(arrayList5);
        return arrayList;
    }

    public static String b() {
        StringBuffer stringBuffer = new StringBuffer();
        String a2 = a(Cfinally.a(Cfinally.o0), Cfinally.a(Cfinally.C0), "v4");
        if (!TextUtils.isEmpty(a2)) {
            stringBuffer.append(a2);
        }
        String a3 = a(Cfinally.a(Cfinally.p0), "(.{32}:.{3,4})\\s(.{32}:.{3,4})\\s(.{2})\\s.{8}:.{8}\\s.{2}:.{8}\\s.{8}\\s+(.{4,5})", "v6");
        if (!TextUtils.isEmpty(a3)) {
            if (!TextUtils.isEmpty(a2)) {
                stringBuffer.append("_");
            }
            stringBuffer.append(a3);
        }
        return stringBuffer.toString();
    }

    public static String a(String str, String str2, String str3) {
        String[] strArr;
        String[] split;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            String str4 = new String(Cstrictfp.a(str));
            if (TextUtils.isEmpty(str4)) {
                strArr = b;
            } else {
                strArr = str4.split("\n");
                if (strArr == null || strArr.length == 0) {
                    strArr = b;
                }
            }
        } catch (Throwable unused) {
            strArr = null;
        }
        if (strArr == null) {
            stringBuffer.append(str3 + ";-1");
            return stringBuffer.toString();
        }
        stringBuffer.append(str3 + ";0");
        new HashMap();
        HashMap hashMap = new HashMap();
        Pattern compile = Pattern.compile(str2);
        for (String str5 : strArr) {
            Matcher matcher = compile.matcher(str5);
            if (matcher.find()) {
                String trim = matcher.group(4).trim();
                if ("0A".equals(matcher.group(3)) && (split = matcher.group(1).split(":")) != null && split.length >= 2) {
                    hashMap.put(split[1], trim);
                }
            }
        }
        if (!hashMap.isEmpty()) {
            stringBuffer.append(";");
            Iterator it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                String str6 = (String) it.next();
                stringBuffer.append((String) hashMap.get(str6));
                stringBuffer.append(":");
                stringBuffer.append(str6);
                if (it.hasNext()) {
                    stringBuffer.append(",");
                }
            }
        }
        return stringBuffer.toString();
    }
}
