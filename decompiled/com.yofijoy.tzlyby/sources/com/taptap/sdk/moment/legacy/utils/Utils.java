package com.taptap.sdk.moment.legacy.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.io.Closeable;
import java.io.IOException;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class Utils {
    private static String hardware = null;
    private static String screenResolution = "";

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int getLayoutId(Context context, String str) {
        return context.getResources().getIdentifier(str, "layout", context.getPackageName());
    }

    public static int getViewId(Context context, String str) {
        return context.getResources().getIdentifier(str, BreakpointSQLiteKey.ID, context.getPackageName());
    }

    public static int getDrawable(Context context, String str) {
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }

    public static int getString(Context context, String str) {
        return context.getResources().getIdentifier(str, "string", context.getPackageName());
    }

    public static int getStyle(Context context, String str) {
        return context.getResources().getIdentifier(str, "style", context.getPackageName());
    }

    public static int getColor(Context context, String str) {
        return context.getResources().getIdentifier(str, "color", context.getPackageName());
    }

    public static int getScreenWidth(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String encodeToBase64(String str) {
        return str.length() == 0 ? "" : Base64.encodeToString(str.getBytes(), 0).replace(Marker.ANY_NON_NULL_MARKER, "-").replace("/", "_").replace("=", "").replace("\n", "");
    }

    public static String decodeFromBase64(String str) {
        return new String(Base64.decode(str, 8));
    }

    public static boolean networkConnected(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? false : true;
    }

    public static String getNetworkStateString(Context context) {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return null;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && (state = networkInfo.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
            return null;
        }
        int i = 0;
        try {
            i = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
        } catch (Exception unused) {
        }
        switch (i) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "CDMA - EvDo rev. 0";
            case 6:
                return "CDMA - EvDo rev. A";
            case 7:
                return "CDMA - 1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "iDEN";
            case 12:
                return "CDMA - EvDo rev. B";
            case 13:
                return "LTE";
            case 14:
                return "CDMA - eHRPD";
            case 15:
                return "HSPA+";
            case 16:
                return "GSM";
            case 17:
                return "TD_SCDMA";
            case 18:
                return "IWLAN";
            case 19:
            default:
                return "UNKNOWN";
            case 20:
                return "NR";
        }
    }

    public static int getNetworkState(Context context) {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) {
            return 0;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && (state = networkInfo.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
            return 2;
        }
        try {
            i = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
        } catch (Exception unused) {
        }
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 5;
            case 3:
            case 5:
            case 6:
                return 7;
            case 4:
            case 7:
            case 11:
                return 4;
            case 8:
            case 9:
            case 10:
            case 15:
                return 9;
            case 12:
            case 14:
                return 6;
            case 13:
                return 10;
            default:
                return 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        r0 = r3.split(":")[1].trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getHardware() {
        /*
            java.lang.String r0 = com.taptap.sdk.moment.legacy.utils.Utils.hardware
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L9
            return r0
        L9:
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Exception -> L51
            java.lang.String r2 = "/proc/cpuinfo"
            r1.<init>(r2)     // Catch: java.lang.Exception -> L51
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L47
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L47
        L15:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L3d
            if (r3 == 0) goto L36
            java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> L3d
            java.lang.String r4 = r3.toLowerCase(r4)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r5 = "hardware"
            boolean r4 = r4.contains(r5)     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L15
            java.lang.String r4 = ":"
            java.lang.String[] r3 = r3.split(r4)     // Catch: java.lang.Throwable -> L3d
            r4 = 1
            r3 = r3[r4]     // Catch: java.lang.Throwable -> L3d
            java.lang.String r0 = r3.trim()     // Catch: java.lang.Throwable -> L3d
        L36:
            r2.close()     // Catch: java.lang.Throwable -> L47
            r1.close()     // Catch: java.lang.Exception -> L51
            goto L55
        L3d:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L42
            goto L46
        L42:
            r2 = move-exception
            r3.addSuppressed(r2)     // Catch: java.lang.Throwable -> L47
        L46:
            throw r3     // Catch: java.lang.Throwable -> L47
        L47:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L4c
            goto L50
        L4c:
            r1 = move-exception
            r2.addSuppressed(r1)     // Catch: java.lang.Exception -> L51
        L50:
            throw r2     // Catch: java.lang.Exception -> L51
        L51:
            r1 = move-exception
            r1.printStackTrace()
        L55:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L5d
            java.lang.String r0 = android.os.Build.HARDWARE
        L5d:
            com.taptap.sdk.moment.legacy.utils.Utils.hardware = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.moment.legacy.utils.Utils.getHardware():java.lang.String");
    }

    public static String getScreenResolution(Context context) {
        if (!TextUtils.isEmpty(screenResolution)) {
            return screenResolution;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        String str = Math.min(i, i2) + "x" + Math.max(i, i2);
        screenResolution = str;
        return str;
    }
}
