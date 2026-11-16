package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.net.Proxy;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class Vulpecula {
    public static boolean a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return false;
            }
            Iterator it = Collections.list(networkInterfaces).iterator();
            while (it.hasNext()) {
                NetworkInterface networkInterface = (NetworkInterface) it.next();
                if (networkInterface.isUp() && networkInterface.getInterfaceAddresses().size() != 0 && networkInterface.getName().matches("tun\\d+")) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(Context context) {
        List<WifiConfiguration> list;
        String str;
        Object obj;
        Object a;
        int i = Build.VERSION.SDK_INT;
        if (i < 14) {
            return (TextUtils.isEmpty(Proxy.getHost(context)) || Proxy.getPort(context) == -1) ? false : true;
        }
        if (!TextUtils.isEmpty(System.getProperty("http.proxyHost")) && !TextUtils.equals(System.getProperty("http.proxyPort"), "-1")) {
            return true;
        }
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        if (Triangulum.a(context, "android.permission.ACCESS_WIFI_STATE") != 0) {
            return false;
        }
        try {
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo != null && connectionInfo.getNetworkId() != -1) {
                Object obj2 = null;
                try {
                    list = wifiManager.getConfiguredNetworks();
                } catch (Throwable unused) {
                    list = null;
                }
                if (list != null) {
                    int networkId = connectionInfo.getNetworkId();
                    Iterator<WifiConfiguration> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        WifiConfiguration next = it.next();
                        if (next.networkId == networkId) {
                            if (i < 21) {
                                obj = Apple.a((Class<?>) WifiConfiguration.class, "proxySettings", next);
                                str = "android.net.wifi.WifiConfiguration$ProxySettings";
                            } else {
                                HashMap<String, Class<?>> hashMap = Apple.a;
                                try {
                                    Method a2 = Apple.a((Class<?>) WifiConfiguration.class, "getProxySettings", (Class<?>[]) new Class[0]);
                                    if (a2 != null) {
                                        obj2 = a2.invoke(next, new Object[0]);
                                    }
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                }
                                Object obj3 = obj2;
                                str = "android.net.IpConfiguration$ProxySettings";
                                obj = obj3;
                            }
                            Object a3 = Apple.a(str, "STATIC");
                            if (a3 != null && a3 == obj) {
                                return true;
                            }
                            if (i < 19 || (a = Apple.a(str, "PAC")) == null || a != obj) {
                                break;
                            }
                            return true;
                        }
                    }
                } else {
                    return false;
                }
            }
        } catch (Throwable unused2) {
        }
        return false;
    }
}
