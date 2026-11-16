package com.bytedance.applog.convert;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.ads.convert.utils.BusinessConstant;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IPIDProvider implements IIdProvider {
    public static String getAllIPV6Address() {
        try {
            JSONObject jSONObject = new JSONObject();
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                ArrayList<InetAddress> list = Collections.list(networkInterface.getInetAddresses());
                JSONArray jSONArray = new JSONArray();
                for (InetAddress inetAddress : list) {
                    if (inetAddress instanceof Inet6Address) {
                        jSONArray.put(inetAddress.getHostAddress());
                    }
                }
                jSONObject.put(networkInterface.getName(), jSONArray);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return "{}";
        }
    }

    public static String getClientAnpi() throws SocketException, UnknownHostException {
        NetworkInterface byName = NetworkInterface.getByName("wlan0");
        if (byName != null) {
            String lowerCase = getLocalIpv6Address(byName.getInetAddresses()).toLowerCase(Locale.getDefault());
            if (lowerCase.startsWith("fe80")) {
                return lowerCase;
            }
        }
        return "";
    }

    public static String getLocalIpv6Address(Enumeration<InetAddress> enumeration) {
        String str = "empty";
        if (enumeration == null) {
            return "empty";
        }
        while (enumeration.hasMoreElements()) {
            InetAddress nextElement = enumeration.nextElement();
            if ((nextElement instanceof Inet6Address) && nextElement.isLinkLocalAddress()) {
                str = nextElement.getHostAddress();
            }
        }
        return str;
    }

    public String getClientTun() throws SocketException {
        NetworkInterface byName = NetworkInterface.getByName("dummy0");
        String lowerCase = byName != null ? getLocalIpv6Address(byName.getInetAddresses()).toLowerCase(Locale.getDefault()) : "empty";
        return lowerCase.startsWith("fe80") ? lowerCase : "";
    }

    @Override // com.bytedance.applog.convert.IIdProvider
    public void getIdAndSetIntoJson(JSONObject jSONObject, Context context) throws JSONException {
        String str;
        String str2 = null;
        try {
            str = getClientTun();
        } catch (SocketException e) {
            e.printStackTrace();
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            jSONObject.put(BusinessConstant.KEY_CLIENT_TUN, str);
        }
        try {
            str2 = getClientAnpi();
        } catch (SocketException e2) {
            e2.printStackTrace();
        } catch (UnknownHostException e3) {
            e3.printStackTrace();
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(BusinessConstant.KEY_CLIENT_ANPI, str2);
    }
}
