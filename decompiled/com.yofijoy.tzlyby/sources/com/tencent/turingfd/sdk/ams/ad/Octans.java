package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Debug;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class Octans {
    public static final Date<String> a = new Date<>();

    public static String a() {
        Iterator it = ((ArrayList) Chamaeleon.a()).iterator();
        while (it.hasNext()) {
            Cthrows cthrows = (Cthrows) it.next();
            if (cthrows.a.contains(Foxnut.c)) {
                return cthrows.b;
            }
        }
        return "";
    }

    public static int b(Context context) {
        Intent intent = null;
        try {
            intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        } catch (Throwable unused) {
        }
        if (intent == null) {
            return 0;
        }
        int intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        if (!(intExtra == 2 || intExtra == 5)) {
            return 1;
        }
        int intExtra2 = intent.getIntExtra("plugged", -1);
        if (intExtra2 == 2) {
            return 3;
        }
        return intExtra2 == 1 ? 2 : 0;
    }

    public static String c(Context context) {
        String sb;
        Date<String> date;
        Date<String> date2 = a;
        synchronized (date2) {
            String a2 = date2.a();
            if (a2 != null) {
                return a2;
            }
            StringBuilder sb2 = new StringBuilder();
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                sb2.append(telephonyManager.getSimState());
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    int phoneCount = telephonyManager.getPhoneCount();
                    sb2.append(",");
                    sb2.append(phoneCount);
                    if (phoneCount > 1 && i >= 26) {
                        sb2.append(",");
                        for (int i2 = 0; i2 < phoneCount; i2++) {
                            if (i2 > 0) {
                                sb2.append(";");
                            }
                            sb2.append(telephonyManager.getSimState(i2));
                        }
                    }
                }
                sb = sb2.toString();
                date = a;
            } catch (Throwable unused) {
                sb = sb2.toString();
                date = a;
            }
            date.a(sb, 0L);
            return sb;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int d(android.content.Context r5) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 24
            if (r0 < r2) goto L8
            return r1
        L8:
            int[] r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.n0
            java.lang.String r0 = com.tencent.turingfd.sdk.ams.ad.Cfinally.a(r0)
            java.io.File r2 = new java.io.File
            r2.<init>(r0)
            java.util.HashMap<java.lang.String, com.tencent.turingfd.sdk.ams.ad.strictfp$do> r0 = com.tencent.turingfd.sdk.ams.ad.Cstrictfp.a
            r0 = 0
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L29
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L29
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L29
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L29
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L28
            com.tencent.turingfd.sdk.ams.ad.Cstrictfp.a(r3)
            goto L30
        L28:
            r0 = r3
        L29:
            if (r0 == 0) goto L2e
            com.tencent.turingfd.sdk.ams.ad.Cstrictfp.a(r0)
        L2e:
            java.lang.String r0 = ""
        L30:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 == 0) goto L37
            return r1
        L37:
            java.lang.String r2 = "CONFIGURED"
            boolean r2 = r2.equals(r0)
            r3 = 3
            if (r2 == 0) goto L52
            r0 = 1
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r2 = "adb_enabled"
            int r5 = android.provider.Settings.Secure.getInt(r5, r2, r1)     // Catch: java.lang.Throwable -> L4e
            if (r5 <= 0) goto L4e
            r1 = r0
        L4e:
            if (r1 == 0) goto L51
            return r0
        L51:
            return r3
        L52:
            java.lang.String r5 = "DISCONNECTED"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L5c
            r5 = 2
            return r5
        L5c:
            java.lang.String r5 = "CONNECTED"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L65
            return r3
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Octans.d(android.content.Context):int");
    }

    public static boolean e(Context context) {
        if (Build.VERSION.SDK_INT >= 17) {
            if (Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) <= 0) {
                return false;
            }
        } else if (Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) <= 0) {
            return false;
        }
        return true;
    }

    public static String f(Context context) {
        Map<String, Set<String>> map = Avocado.a;
        ArrayList arrayList = new ArrayList();
        String packageName = context.getPackageName();
        if (!TextUtils.isEmpty(packageName)) {
            String a2 = UrsaMinor.a(context, packageName);
            Cthrows cthrows = new Cthrows();
            cthrows.a = Foxnut.a + Foxnut.b;
            cthrows.b = packageName + "_" + a2;
            arrayList.add(cthrows);
        }
        return arrayList.size() != 0 ? ((Cthrows) arrayList.get(0)).b : "";
    }

    public static int a(Context context) {
        boolean z = false;
        int a2 = Cthis.a(Cthis.a(0, e(context), 0), Build.VERSION.SDK_INT >= 17 && Settings.Secure.getInt(context.getContentResolver(), "development_settings_enabled", 0) > 0, 1);
        try {
            if ((context.getApplicationInfo().flags & 2) > 0) {
                z = true;
            }
        } catch (Throwable unused) {
        }
        return Cthis.a(Cthis.a(a2, z, 2), Debug.isDebuggerConnected(), 3);
    }

    public static String b() {
        Iterator it = ((ArrayList) Chamaeleon.a()).iterator();
        while (it.hasNext()) {
            Cthrows cthrows = (Cthrows) it.next();
            if (cthrows.a.contains(Foxnut.d)) {
                return cthrows.b;
            }
        }
        return "";
    }

    public static String c() {
        Context context;
        StringBuilder sb = new StringBuilder();
        try {
            synchronized (Ccase.class) {
                context = Ccase.a;
            }
            Hydra a2 = Lynx.a(context);
            for (int i = 0; i < a2.a.a(); i++) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                Locale a3 = a2.a.a(i);
                if (a3 != null) {
                    sb.append(a3.getLanguage());
                    sb.append("-");
                    sb.append(a3.getCountry());
                }
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }
}
