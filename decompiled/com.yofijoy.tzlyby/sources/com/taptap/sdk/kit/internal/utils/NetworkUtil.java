package com.taptap.sdk.kit.internal.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import com.taptap.sdk.kit.internal.TapLogger;

/* loaded from: classes.dex */
public class NetworkUtil {
    private static final String TAG = "NetworkUtil";

    public static ConnectivityManager getConnectivityManager(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    public static String getConnectedType(Context context) {
        try {
            NetworkInfo activeNetworkInfo = getConnectivityManager(context).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "not connected";
            }
            int type = activeNetworkInfo.getType();
            return type != 0 ? type != 1 ? "unknow" : "wifi" : "mobile";
        } catch (Error | Exception unused) {
            return "not connected";
        }
    }

    public static boolean checkHasPermission(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    private static boolean isWiFiNetwork(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        if (Build.VERSION.SDK_INT >= 23) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return networkCapabilities.hasTransport(1);
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        return networkInfo != null && networkInfo.isConnectedOrConnecting();
    }

    public static String getNetworkType(Context context) {
        try {
            if (!checkHasPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                return "unknow";
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return (connectivityManager == null || isNetworkAvailable(connectivityManager)) ? mobileNetworkType(context, (TelephonyManager) context.getSystemService("phone"), connectivityManager) : "unknow";
        } catch (Exception e) {
            TapLogger.logd(TAG, e);
            return "unknow";
        }
    }

    public static boolean isNetworkValid(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities != null) {
            return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(7) || networkCapabilities.hasTransport(4) || networkCapabilities.hasCapability(16);
        }
        return false;
    }

    private static boolean isNetworkAvailable(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        if (connectivityManager == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return isNetworkValid(networkCapabilities);
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isNetworkAvailable(Context context) {
        if (context == null) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0042 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String mobileNetworkType(android.content.Context r2, android.telephony.TelephonyManager r3, android.net.ConnectivityManager r4) {
        /*
            r0 = 30
            if (r3 == 0) goto L20
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 < r0) goto L1b
            java.lang.String r1 = "android.permission.READ_PHONE_STATE"
            boolean r2 = checkHasPermission(r2, r1)
            if (r2 != 0) goto L16
            boolean r2 = r3.hasCarrierPrivileges()
            if (r2 == 0) goto L1b
        L16:
            int r2 = r3.getDataNetworkType()
            goto L21
        L1b:
            int r2 = r3.getNetworkType()     // Catch: java.lang.Exception -> L20
            goto L21
        L20:
            r2 = 0
        L21:
            if (r2 != 0) goto L36
            int r3 = android.os.Build.VERSION.SDK_INT
            if (r3 < r0) goto L2a
            java.lang.String r2 = "3"
            return r2
        L2a:
            if (r4 == 0) goto L36
            android.net.NetworkInfo r3 = r4.getActiveNetworkInfo()
            if (r3 == 0) goto L36
            int r2 = r3.getSubtype()
        L36:
            switch(r2) {
                case 1: goto L45;
                case 2: goto L45;
                case 3: goto L42;
                case 4: goto L45;
                case 5: goto L42;
                case 6: goto L42;
                case 7: goto L45;
                case 8: goto L42;
                case 9: goto L42;
                case 10: goto L42;
                case 11: goto L45;
                case 12: goto L42;
                case 13: goto L3f;
                case 14: goto L42;
                case 15: goto L42;
                case 16: goto L39;
                case 17: goto L39;
                case 18: goto L3f;
                case 19: goto L3f;
                case 20: goto L3c;
                default: goto L39;
            }
        L39:
            java.lang.String r2 = "unknow"
            return r2
        L3c:
            java.lang.String r2 = "5G"
            return r2
        L3f:
            java.lang.String r2 = "4G"
            return r2
        L42:
            java.lang.String r2 = "3G"
            return r2
        L45:
            java.lang.String r2 = "2G"
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.NetworkUtil.mobileNetworkType(android.content.Context, android.telephony.TelephonyManager, android.net.ConnectivityManager):java.lang.String");
    }
}
