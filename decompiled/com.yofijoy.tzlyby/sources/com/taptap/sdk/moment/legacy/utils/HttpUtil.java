package com.taptap.sdk.moment.legacy.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.taptap.sdk.kit.internal.http.TapHttpUtil;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class HttpUtil {
    private static Random random = new Random();

    public static String getAuthorization(String str, String str2, String str3, String str4) {
        try {
            URL url = new URL(str);
            String time = getTime();
            String randomString = getRandomString(5);
            String host = url.getHost();
            return "MAC " + getAuthorizationParam(BreakpointSQLiteKey.ID, str3) + "," + getAuthorizationParam("ts", time) + "," + getAuthorizationParam("nonce", randomString) + "," + getAuthorizationParam("mac", sign(mergeSign(time, randomString, str2, str.substring(str.lastIndexOf(host) + host.length()), host, str.startsWith("https") ? "443" : "80", ""), str4));
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String getTime() {
        return String.format(Locale.US, "%010d", Long.valueOf(System.currentTimeMillis() / 1000));
    }

    private static String getRandomString(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(36)));
        }
        return stringBuffer.toString();
    }

    private static String mergeSign(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str5) || TextUtils.isEmpty(str6)) {
            return null;
        }
        String str8 = str + "\n" + str2 + "\n" + str3 + "\n" + str4 + "\n" + str5 + "\n" + str6 + "\n";
        if (TextUtils.isEmpty(str7)) {
            return str8 + "\n";
        }
        return str8 + str7 + "\n";
    }

    private static String sign(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), TapHttpUtil.HMAC_SHA1);
            Mac mac = Mac.getInstance(TapHttpUtil.HMAC_SHA1);
            mac.init(secretKeySpec);
            return new String(Base64.encode(mac.doFinal(str.getBytes("UTF-8")), 2), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeyException e2) {
            throw new IllegalStateException(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new IllegalStateException(e3);
        }
    }

    private static String getAuthorizationParam(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str + "=\"" + str2 + "\"";
    }
}
