package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import com.tencent.turingfd.sdk.ams.ad.Cstrictfp;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class Centaurus {
    public static String a(Context context) {
        BufferedReader bufferedReader;
        int i;
        System.currentTimeMillis();
        HashSet hashSet = new HashSet();
        try {
            String packageName = context.getPackageName();
            Pattern compile = Pattern.compile("^/data/user/\\d+/" + packageName);
            String str = context.getApplicationInfo().nativeLibraryDir;
            bufferedReader = new BufferedReader(new FileReader(Cfinally.a(Cfinally.n)));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    String a = a(readLine, packageName, compile, str);
                    if (a != null) {
                        hashSet.add(a);
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            bufferedReader = null;
        }
        Auriga.a(bufferedReader);
        Pattern[] a2 = Arbutus.a();
        Iterator it = hashSet.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length = a2.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (a2[i].matcher(str2).find()) {
                    it.remove();
                    break;
                }
                i++;
            }
        }
        if (hashSet.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            i++;
            sb.append((String) it2.next());
            if (i >= 8) {
                break;
            }
            if (it2.hasNext()) {
                sb.append("_");
            }
        }
        return sb.toString();
    }

    public static String a() {
        try {
            File file = new File("/system/lib");
            if (file.canRead()) {
                for (File file2 : file.listFiles()) {
                    if (file2.getName().contains("rockchip")) {
                        return file2.getAbsolutePath();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String a(String str, String str2, Pattern pattern, String str3) {
        int indexOf;
        String str4;
        boolean endsWith = str.endsWith(".so");
        boolean z = !endsWith && str.endsWith(".jar");
        if ((!endsWith && !z) || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        String trim = str.substring(indexOf).trim();
        if (!trim.startsWith("/data/")) {
            return null;
        }
        if (endsWith && str3 != null && trim.startsWith(str3)) {
            return null;
        }
        String str5 = "/data/data/" + str2 + "/";
        if (trim.startsWith(str5)) {
            return null;
        }
        if (trim.startsWith("/data/app/" + str2) || pattern.matcher(trim).find()) {
            return null;
        }
        if (endsWith) {
            File file = new File(str5 + "lib");
            HashMap<String, Cstrictfp.Cdo> hashMap = Cstrictfp.a;
            try {
                str4 = file.getCanonicalPath();
            } catch (IOException unused) {
                str4 = null;
            }
            if (str4 == null || trim.startsWith(str4)) {
                return null;
            }
        }
        return trim;
    }
}
