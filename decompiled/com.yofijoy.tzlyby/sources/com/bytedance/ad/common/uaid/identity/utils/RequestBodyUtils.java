package com.bytedance.ad.common.uaid.identity.utils;

import android.util.Log;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RequestBodyUtils {
    private static String getDate(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static String packMobileBody() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", "300012449765");
            jSONObject.put(ClientCookie.VERSION_ATTR, "1.0");
            String date = getDate(System.currentTimeMillis());
            jSONObject.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, date);
            jSONObject.put("appkey", "90E4DEDAD9B1CB57EA1538871ED468A7");
            jSONObject.put("businessType", "3");
            String uuid = UUID.randomUUID().toString();
            jSONObject.put("traceId", uuid);
            jSONObject.put("msgId", uuid);
            jSONObject.put("sign", EncryptUtils.md5("3000124497653" + uuid + date + uuid + "1.090E4DEDAD9B1CB57EA1538871ED468A7"));
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public static String packTelecom(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append("?");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", "9386206798");
            jSONObject.put("clientType", "Android-30100");
            jSONObject.put("format", "json");
            jSONObject.put(ClientCookie.VERSION_ATTR, "v1.5");
            String rsaEncrypt = EncryptUtils.rsaEncrypt(str2.getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC5se07mkN71qsSJHjZ2Z0+Z+4LlLvf2sz7Md38VAa3EmAOvI7vZp3hbAxicL724ylcmisTPtZQhT/9C+25AELqy9PN9JmzKpwoVTUoJvxG4BoyT49+gGVl6s6zo1byNoHUzTfkmRfmC9MC53HvG8GwKP5xtcdptFjAIcgIR7oAWQIDAQAB");
            jSONObject.put("paramKey", rsaEncrypt);
            String aesCipher = EncryptUtils.aesCipher(true, ("timeStamp=" + System.currentTimeMillis()).getBytes(), str2);
            jSONObject.put("paramStr", aesCipher);
            String[] strArr = new String[6];
            strArr[0] = "9386206798";
            strArr[1] = "Android-30100";
            strArr[2] = "json";
            strArr[3] = rsaEncrypt;
            strArr[4] = aesCipher;
            strArr[5] = "v1.5";
            StringBuilder sb2 = new StringBuilder();
            for (int i = 0; i < 6; i++) {
                sb2.append(strArr[i]);
            }
            jSONObject.put("sign", EncryptUtils.hmacSha1(sb2.toString(), "tgIBkg304BUpjGHLSq1wYYb0Xs77pMIm"));
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject.getString(next);
                sb.append(next);
                sb.append("=");
                sb.append(string);
                sb.append("&");
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        } catch (Exception e) {
            Log.d("RequestBodyUtils", e.getMessage());
            return null;
        }
    }
}
