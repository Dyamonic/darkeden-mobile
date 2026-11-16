package com.bytedance.bdtracker;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

/* loaded from: classes.dex */
public class z4 {
    public static long a;
    public static a b = a.UNKNOWN;
    public static boolean c;

    /* loaded from: classes.dex */
    public enum a {
        UNKNOWN(-1),
        NONE(0),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        WIFI(4),
        MOBILE_4G(5),
        MOBILE_5G(6),
        WIFI_24GHZ(7),
        WIFI_5GHZ(8),
        MOBILE_3G_H(9),
        MOBILE_3G_HP(10);

        public final int a;

        a(int i) {
            this.a = i;
        }

        public boolean a() {
            return (this == UNKNOWN || this == NONE) ? false : true;
        }
    }

    public static a a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return a.WIFI;
                }
                if (type != 0) {
                    return a.MOBILE;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return a.NONE;
                }
                int networkType = telephonyManager.getNetworkType();
                if (networkType != 3) {
                    if (networkType == 20) {
                        return a.MOBILE_5G;
                    }
                    if (networkType != 5 && networkType != 6) {
                        switch (networkType) {
                            case 8:
                            case 9:
                            case 10:
                                break;
                            default:
                                switch (networkType) {
                                    case 12:
                                    case 14:
                                    case 15:
                                        break;
                                    case 13:
                                        return a.MOBILE_4G;
                                    default:
                                        return a.MOBILE;
                                }
                        }
                    }
                }
                return a.MOBILE_3G;
            }
            return a.NONE;
        } catch (Throwable unused) {
            return a.MOBILE;
        }
    }

    public static String a(Context context, boolean z) {
        a b2 = b(context, z);
        return b2 == a.WIFI ? "wifi" : b2 == a.WIFI_24GHZ ? "wifi24ghz" : b2 == a.WIFI_5GHZ ? "wifi5ghz" : b2 == a.MOBILE_2G ? "2g" : b2 == a.MOBILE_3G ? "3g" : b2 == a.MOBILE_3G_H ? "3gh" : b2 == a.MOBILE_3G_HP ? "3ghp" : b2 == a.MOBILE_4G ? "4g" : b2 == a.MOBILE_5G ? "5g" : b2 == a.MOBILE ? "mobile" : "";
    }

    public static a b(Context context, boolean z) {
        if (!c && context != null) {
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
                intentFilter.addAction("android.net.wifi.STATE_CHANGE");
                context.getApplicationContext().registerReceiver(new i3(), intentFilter);
            } finally {
                try {
                } finally {
                }
            }
        }
        if (b == a.UNKNOWN) {
            b = a(context);
        }
        if (z && System.currentTimeMillis() - a > 2000) {
            b = a(context);
            a = System.currentTimeMillis();
        }
        return b;
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
