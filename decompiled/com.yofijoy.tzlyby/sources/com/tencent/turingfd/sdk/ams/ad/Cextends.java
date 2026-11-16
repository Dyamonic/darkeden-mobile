package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.extends, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cextends {
    public static final String a = Cfinally.a(Cfinally.b);
    public static final String b = Cfinally.a(Cfinally.c);
    public static final String c = Cfinally.a(Cfinally.d);
    public static final String d = Cfinally.a(Cfinally.e);
    public static final String e = Cfinally.a(Cfinally.f);
    public static long f = 0;
    public static final String[] g = {"^/data/user/\\d+$", "^/data/data$"};

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.extends$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo {
        public final boolean a;
        public final String b;

        public Cdo(boolean z, String str) {
            this.a = z;
            this.b = str;
        }
    }

    public static String a(Context context, String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_");
        try {
            str2 = context.getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = "";
        }
        try {
            sb.append((String) ((ArrayList) UrsaMinor.a(new File(str2))).get(0));
        } catch (Throwable unused2) {
            sb.append("");
        }
        sb.append("_");
        long j = -1;
        if (!TextUtils.isEmpty(str2)) {
            File file = new File(str2);
            if (file.exists()) {
                j = file.length();
            }
        }
        sb.append(j);
        sb.append("_");
        sb.append(Process.myUid());
        return sb.toString();
    }

    public static String b(Context context) {
        Method method;
        try {
            Class<?> cls = Class.forName("android.os.UserManager");
            Field field = context.getClass().getField("USER_SERVICE");
            field.setAccessible(true);
            Object systemService = context.getSystemService((String) field.get(context));
            if (systemService == null || (method = cls.getMethod("getUserName", new Class[0])) == null) {
                return "";
            }
            method.setAccessible(true);
            return (String) method.invoke(systemService, new Object[0]);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean a() {
        try {
            return 999 == Process.myUid() / BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0199, code lost:
    
        r13 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x03fa A[LOOP:0: B:35:0x03f4->B:37:0x03fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x024c  */
    /* JADX WARN: Type inference failed for: r0v52, types: [com.tencent.turingfd.sdk.ams.ad.extends$do] */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r7v14, types: [com.tencent.turingfd.sdk.ams.ad.extends$do] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x032f -> B:58:0x0330). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 1059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Cextends.a(android.content.Context):java.lang.String");
    }
}
