package rich;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class j2 {
    public static final String a = Build.BRAND;
    public static final String b = Build.MODEL;
    public static final String c;
    public static final boolean d;
    public static final String e;

    static {
        StringBuilder a2 = a.a("android");
        a2.append(Build.VERSION.RELEASE);
        c = a2.toString();
        d = Build.VERSION.SDK_INT <= 28;
        e = Build.MANUFACTURER;
    }

    public static int a(Context context, boolean z, l0 l0Var) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
            int type = activeNetworkInfo.getType();
            boolean z2 = true;
            if (type != 1) {
                if (type == 0) {
                    c2.b("TelephonyUtils", "流量");
                    return 1;
                }
                return 0;
            }
            c2.b("TelephonyUtils", "WIFI");
            if (context.getPackageManager().checkPermission("android.permission.CHANGE_NETWORK_STATE", context.getPackageName()) != 0) {
                z2 = false;
            }
            c2.a("TelephonyUtils", "CHANGE_NETWORK_STATE=" + z2);
            if (!z2 || !z || !a(connectivityManager, context, l0Var)) {
                return 2;
            }
            c2.b("TelephonyUtils", "流量数据 WIFI 同开");
            return 3;
        }
        return 0;
    }

    public static boolean a(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager == null || 1 != telephonyManager.getSimState();
    }

    public static boolean a(ConnectivityManager connectivityManager, Context context, l0 l0Var) {
        String str;
        boolean z = false;
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            z = ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
            c2.b("TelephonyUtils", "data is on ---------" + z);
            if (Build.VERSION.SDK_INT >= 26) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                str = telephonyManager != null ? telephonyManager.createForSubscriptionId(SubscriptionManager.getDefaultSubscriptionId()).isDataEnabled() ? "1" : "0" : "-1";
                return z;
            }
            l0Var.a("networkTypeByAPI", str);
            return z;
        } catch (Exception unused) {
            c2.a("TelephonyUtils", "isMobileEnabled ----反射出错-----");
            return z;
        }
    }
}
