package com.bytedance.ads.convert.utils;

import android.util.Log;
import com.loopj.android.http.RequestParams;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NetWorkUtils {
    private static final Boolean PPE = false;
    private static final String URL = "https://analytics.oceanengine.com/sdk/app/";

    public static void post(JSONObject jSONObject, String str) {
        HttpURLConnection httpURLConnection;
        Log.d(str, "start request");
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(URL).openConnection();
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(3000);
            httpURLConnection.setReadTimeout(3000);
            if (PPE.booleanValue()) {
                httpURLConnection.setRequestProperty("X-USE-PPE", "1");
                httpURLConnection.setRequestProperty("X-TT-ENV", "ppe_ysa_unique_id");
            }
            httpURLConnection.setRequestProperty("Content-Type", RequestParams.APPLICATION_JSON);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(jSONObject.toString().getBytes());
            outputStream.close();
            Log.d(str, "post: response: " + httpURLConnection.getResponseCode() + "\t" + httpURLConnection.getHeaderField("X-Tt-Logid"));
            if (httpURLConnection == null) {
                return;
            }
        } catch (Exception e2) {
            e = e2;
            httpURLConnection2 = httpURLConnection;
            e.printStackTrace();
            Log.d(str, "request error" + e.getMessage());
            if (httpURLConnection2 != null) {
                httpURLConnection = httpURLConnection2;
                httpURLConnection.disconnect();
            }
            return;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        httpURLConnection.disconnect();
    }
}
