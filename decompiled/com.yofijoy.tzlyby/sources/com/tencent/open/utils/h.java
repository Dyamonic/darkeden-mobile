package com.tencent.open.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Environment;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.util.List;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class h {
    public static String a(int i) {
        if (i == 10103) {
            return "shareToQQ";
        }
        if (i == 10104) {
            return "shareToQzone";
        }
        if (i == 10105) {
            return "addToQQFavorites";
        }
        if (i == 10106) {
            return "sendToMyComputer";
        }
        if (i == 10107) {
            return "shareToTroopBar";
        }
        if (i == 11101) {
            return "action_login";
        }
        if (i == 10100) {
            return "action_request";
        }
        return null;
    }

    public static String a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static int a(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str != null && str2 == null) {
            return 1;
        }
        if (str == null && str2 != null) {
            return -1;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int i = 0;
        while (i < split.length && i < split2.length) {
            try {
                int parseInt = Integer.parseInt(split[i]);
                int parseInt2 = Integer.parseInt(split2[i]);
                if (parseInt < parseInt2) {
                    return -1;
                }
                if (parseInt > parseInt2) {
                    return 1;
                }
                i++;
            } catch (NumberFormatException unused) {
                return str.compareTo(str2);
            }
        }
        if (split.length > i) {
            return 1;
        }
        return split2.length > i ? -1 : 0;
    }

    public static boolean a(Context context, String str, String str2) {
        SLog.v("openSDK_LOG.SystemUtils", "OpenUi, validateAppSignatureForPackage");
        try {
            for (Signature signature : context.getPackageManager().getPackageInfo(str, 64).signatures) {
                if (k.f(signature.toCharsString()).equals(str2)) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static String b(Context context, String str) {
        String str2 = "";
        SLog.v("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString");
        try {
            String packageName = context.getPackageName();
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures;
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(signatureArr[0].toByteArray());
            String a = k.a(messageDigest.digest());
            messageDigest.reset();
            SLog.v("openSDK_LOG.SystemUtils", "-->sign: " + a);
            messageDigest.update(k.i(packageName + "_" + a + "_" + str + ""));
            str2 = k.a(messageDigest.digest());
            messageDigest.reset();
            StringBuilder sb = new StringBuilder();
            sb.append("-->signEncryped: ");
            sb.append(str2);
            SLog.v("openSDK_LOG.SystemUtils", sb.toString());
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
            SLog.e("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString error", e);
            return str2;
        }
    }

    public static boolean a(Context context, Intent intent) {
        return (context == null || intent == null || context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    public static String a(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static int c(Context context, String str) {
        return a(a(context, "com.tencent.mobileqq"), str);
    }

    public static int d(Context context, String str) {
        return a(a(context, Constants.PACKAGE_TIM), str);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r10, java.lang.String r11, int r12) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "-->extractSecureLib, libName: "
            r0.append(r1)
            r0.append(r10)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "openSDK_LOG.SystemUtils"
            com.tencent.open.log.SLog.i(r1, r0)
            android.content.Context r0 = com.tencent.open.utils.e.a()
            r2 = 0
            if (r0 != 0) goto L23
            java.lang.String r10 = "-->extractSecureLib, global context is null. "
            com.tencent.open.log.SLog.i(r1, r10)
            return r2
        L23:
            java.lang.String r3 = "secure_lib"
            android.content.SharedPreferences r3 = r0.getSharedPreferences(r3, r2)
            java.io.File r4 = new java.io.File
            java.io.File r5 = r0.getFilesDir()
            r4.<init>(r5, r11)
            boolean r5 = r4.exists()
            r6 = 1
            java.lang.String r7 = "version"
            if (r5 != 0) goto L50
            java.io.File r5 = r4.getParentFile()
            if (r5 == 0) goto L73
            boolean r5 = r5.mkdirs()
            if (r5 == 0) goto L73
            r4.createNewFile()     // Catch: java.io.IOException -> L4b
            goto L73
        L4b:
            r4 = move-exception
            r4.printStackTrace()
            goto L73
        L50:
            int r4 = r3.getInt(r7, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r8 = "-->extractSecureLib, libVersion: "
            r5.append(r8)
            r5.append(r12)
            java.lang.String r8 = " | oldVersion: "
            r5.append(r8)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            com.tencent.open.log.SLog.i(r1, r5)
            if (r12 != r4) goto L73
            return r6
        L73:
            r4 = 0
            android.content.res.AssetManager r5 = r0.getAssets()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.io.InputStream r10 = r5.open(r10)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.io.FileOutputStream r4 = r0.openFileOutput(r11, r2)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9d
            a(r10, r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9d
            android.content.SharedPreferences$Editor r11 = r3.edit()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9d
            r11.putInt(r7, r12)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9d
            r11.commit()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9d
            if (r10 == 0) goto L92
            r10.close()     // Catch: java.io.IOException -> L92
        L92:
            if (r4 == 0) goto L97
            r4.close()     // Catch: java.io.IOException -> L97
        L97:
            return r6
        L98:
            r11 = move-exception
            r9 = r4
            r4 = r10
            r10 = r9
            goto Lb8
        L9d:
            r11 = move-exception
            r9 = r4
            r4 = r10
            r10 = r9
            goto La7
        La2:
            r11 = move-exception
            r10 = r4
            goto Lb8
        La5:
            r11 = move-exception
            r10 = r4
        La7:
            java.lang.String r12 = "-->extractSecureLib, when copy lib execption."
            com.tencent.open.log.SLog.e(r1, r12, r11)     // Catch: java.lang.Throwable -> Lb7
            if (r4 == 0) goto Lb1
            r4.close()     // Catch: java.io.IOException -> Lb1
        Lb1:
            if (r10 == 0) goto Lb6
            r10.close()     // Catch: java.io.IOException -> Lb6
        Lb6:
            return r2
        Lb7:
            r11 = move-exception
        Lb8:
            if (r4 == 0) goto Lbd
            r4.close()     // Catch: java.io.IOException -> Lbd
        Lbd:
            if (r10 == 0) goto Lc2
            r10.close()     // Catch: java.io.IOException -> Lc2
        Lc2:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.h.a(java.lang.String, java.lang.String, int):boolean");
    }

    private static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, 8192);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                SLog.i("openSDK_LOG.SystemUtils", "-->copy, copyed size is: " + j);
                return j;
            }
        }
    }

    public static int a(String str) {
        return "shareToQQ".equals(str) ? Constants.REQUEST_QQ_SHARE : "shareToQzone".equals(str) ? Constants.REQUEST_QZONE_SHARE : "addToQQFavorites".equals(str) ? Constants.REQUEST_QQ_FAVORITES : "sendToMyComputer".equals(str) ? Constants.REQUEST_SEND_TO_MY_COMPUTER : "shareToTroopBar".equals(str) ? Constants.REQUEST_SHARE_TO_TROOP_BAR : "action_login".equals(str) ? Constants.REQUEST_LOGIN : "action_request".equals(str) ? 10100 : -1;
    }

    public static boolean b(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                if (installedPackages.get(i).packageName.equals("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(Context context) {
        return context != null && context.getApplicationInfo().targetSdkVersion >= 29 && Build.VERSION.SDK_INT >= 29 && !a();
    }

    private static boolean a() {
        try {
            return ((Boolean) Environment.class.getMethod("isExternalStorageLegacy", new Class[0]).invoke(Environment.class, new Object[0])).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }
}
