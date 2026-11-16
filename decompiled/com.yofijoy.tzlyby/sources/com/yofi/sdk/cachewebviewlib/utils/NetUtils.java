package com.yofi.sdk.cachewebviewlib.utils;

import android.text.TextUtils;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class NetUtils {
    public static String getOriginUrl(String referer) {
        String str = "";
        if (TextUtils.isEmpty(referer)) {
            return "";
        }
        try {
            URL url = new URL(referer);
            int port = url.getPort();
            StringBuilder sb = new StringBuilder();
            sb.append(url.getProtocol());
            sb.append("://");
            sb.append(url.getHost());
            if (port != -1) {
                str = ":" + port;
            }
            sb.append(str);
            return sb.toString();
        } catch (Exception unused) {
            return referer;
        }
    }

    public static Map<String, String> multimapToSingle(Map<String, List<String>> maps) {
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<String>> entry : maps.entrySet()) {
            List<String> value = entry.getValue();
            sb.delete(0, sb.length());
            if (value != null && value.size() > 0) {
                Iterator<String> it = value.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(";");
                }
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            hashMap.put(entry.getKey(), sb.toString());
        }
        return hashMap;
    }
}
