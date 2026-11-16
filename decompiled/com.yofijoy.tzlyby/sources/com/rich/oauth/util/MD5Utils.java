package com.rich.oauth.util;

import androidx.core.app.NotificationCompat;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.Map;
import java.util.TreeMap;
import kotlin.UByte;

/* loaded from: classes.dex */
public class MD5Utils {
    public static String digest(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
                if (hexString.length() < 2) {
                    sb.append(0);
                }
                sb.append(hexString);
            }
            return sb.toString().substring(8, 24).toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static byte[] getContentBytes(String str, String str2) {
        if (str2 == null || "".equals(str2)) {
            return str.getBytes();
        }
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("MD5签名过程中出现错误,指定的编码集不对,您目前指定的编码集是:" + str2);
        }
    }

    public static String getDigest(TreeMap treeMap, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
            sb.append("&");
        }
        sb.append("appSecret");
        sb.append("=");
        sb.append(str);
        return EncryptUtils.encryptMD5ToString(getContentBytes(sb.toString(), str2)).toUpperCase();
    }

    public static String getTaskId(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        int random = (int) (((Math.random() * 9.0d) + 1.0d) * 100000.0d);
        String digest = digest(str);
        sb.append(currentTimeMillis);
        sb.append(random);
        sb.append(digest);
        sb.append(str2);
        return sb.toString();
    }

    public static void main(String[] strArr) {
        TreeMap treeMap = new TreeMap();
        treeMap.put("appId", "123456");
        treeMap.put("outOrderId", "a2707bfgy214");
        treeMap.put("phone", "13800138000");
        treeMap.put(BillingClientConstants.PRODUCT_ID, "aqy");
        treeMap.put("receiveTime", "20190730163000");
        treeMap.put("reqId", "987876");
        treeMap.put(NotificationCompat.CATEGORY_STATUS, "0");
        getDigest(treeMap, "abce$OO7&+-*22L", "utf-8");
    }
}
