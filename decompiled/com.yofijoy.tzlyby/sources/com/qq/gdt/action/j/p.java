package com.qq.gdt.action.j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* loaded from: classes.dex */
public class p {
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if (r2.hasTransport(4) == false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a() {
        /*
            java.lang.String r0 = "UNKNOWN"
            com.qq.gdt.action.e r1 = com.qq.gdt.action.e.a()
            android.content.Context r1 = r1.g()
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r2 = com.qq.gdt.action.j.q.a(r1, r2)     // Catch: java.lang.Exception -> L88
            if (r2 != 0) goto L13
            return r0
        L13:
            java.lang.String r2 = "connectivity"
            java.lang.Object r2 = r1.getSystemService(r2)     // Catch: java.lang.Exception -> L88
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2     // Catch: java.lang.Exception -> L88
            if (r2 == 0) goto L6a
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L88
            r4 = 23
            java.lang.String r5 = "WIFI"
            r6 = 1
            if (r3 < r4) goto L4f
            android.net.Network r3 = r2.getActiveNetwork()     // Catch: java.lang.Exception -> L88
            if (r3 == 0) goto L4e
            android.net.NetworkCapabilities r2 = r2.getNetworkCapabilities(r3)     // Catch: java.lang.Exception -> L88
            if (r2 == 0) goto L6a
            boolean r3 = r2.hasTransport(r6)     // Catch: java.lang.Exception -> L88
            if (r3 == 0) goto L39
            return r5
        L39:
            r3 = 0
            boolean r3 = r2.hasTransport(r3)     // Catch: java.lang.Exception -> L88
            if (r3 != 0) goto L6a
            r3 = 3
            boolean r3 = r2.hasTransport(r3)     // Catch: java.lang.Exception -> L88
            if (r3 != 0) goto L6a
            r3 = 4
            boolean r2 = r2.hasTransport(r3)     // Catch: java.lang.Exception -> L88
            if (r2 != 0) goto L6a
        L4e:
            return r0
        L4f:
            android.net.NetworkInfo r3 = r2.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L88
            if (r3 == 0) goto L69
            boolean r3 = r3.isConnected()     // Catch: java.lang.Exception -> L88
            if (r3 != 0) goto L5c
            goto L69
        L5c:
            android.net.NetworkInfo r2 = r2.getNetworkInfo(r6)     // Catch: java.lang.Exception -> L88
            if (r2 == 0) goto L6a
            boolean r2 = r2.isConnectedOrConnecting()     // Catch: java.lang.Exception -> L88
            if (r2 == 0) goto L6a
            return r5
        L69:
            return r0
        L6a:
            java.lang.String r2 = "phone"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Exception -> L88
            android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1     // Catch: java.lang.Exception -> L88
            if (r1 != 0) goto L75
            return r0
        L75:
            int r1 = r1.getNetworkType()     // Catch: java.lang.Exception -> L88
            switch(r1) {
                case 1: goto L86;
                case 2: goto L86;
                case 3: goto L83;
                case 4: goto L86;
                case 5: goto L83;
                case 6: goto L83;
                case 7: goto L86;
                case 8: goto L83;
                case 9: goto L83;
                case 10: goto L83;
                case 11: goto L86;
                case 12: goto L83;
                case 13: goto L80;
                case 14: goto L83;
                case 15: goto L83;
                case 16: goto L86;
                case 17: goto L83;
                case 18: goto L80;
                case 19: goto L7c;
                case 20: goto L7d;
                default: goto L7c;
            }     // Catch: java.lang.Exception -> L88
        L7c:
            goto L88
        L7d:
            java.lang.String r0 = "5G"
            return r0
        L80:
            java.lang.String r0 = "4G"
            return r0
        L83:
            java.lang.String r0 = "3G"
            return r0
        L86:
            java.lang.String r0 = "2G"
        L88:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.j.p.a():java.lang.String");
    }

    public static boolean a(Context context) {
        NetworkCapabilities networkCapabilities;
        if (!q.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT < 23) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                return activeNetworkInfo != null && activeNetworkInfo.isConnected();
            }
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4);
        } catch (Exception e) {
            o.a("Check network available exception", e);
            return false;
        }
    }

    public static boolean b() {
        try {
            return com.qq.gdt.action.b.a(com.qq.gdt.action.e.a().g()).u() == 0;
        } catch (Exception e) {
            o.a("isActionHttpsEnable e  = " + e, new Object[0]);
            return true;
        }
    }

    public static boolean c() {
        try {
            return com.qq.gdt.action.b.a(com.qq.gdt.action.e.a().g()).v() == 0;
        } catch (Exception e) {
            o.a("isEventHttpsEnable e  = " + e, new Object[0]);
            return true;
        }
    }
}
