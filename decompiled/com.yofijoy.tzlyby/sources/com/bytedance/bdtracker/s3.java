package com.bytedance.bdtracker;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.network.RangersHttpException;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.moment.constant.Constant;
import cz.msebera.android.httpclient.cookie.SM;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s3 {
    public static JSONObject d;
    public String a = "https://databyterangers.com.cn";
    public final d b;
    public final w4 c;

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ JSONObject a;

        public a(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            k0.c(this.a, jSONObject);
            try {
                jSONObject.put("appId", s3.this.b.m);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public class b implements EventBus.DataFetcher {
        public final /* synthetic */ String a;
        public final /* synthetic */ int b;
        public final /* synthetic */ byte[] c;
        public final /* synthetic */ String d;
        public final /* synthetic */ long e;
        public final /* synthetic */ HttpURLConnection f;

        public b(String str, int i, byte[] bArr, String str2, long j, HttpURLConnection httpURLConnection) {
            this.a = str;
            this.b = i;
            this.c = bArr;
            this.d = str2;
            this.e = j;
            this.f = httpURLConnection;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", s3.this.b.m);
                jSONObject.put("nid", this.a);
                jSONObject.put("statusCode", this.b);
                jSONObject.put("responseByte", this.c);
                jSONObject.put("responseString", this.d);
                jSONObject.put("time", this.e);
                jSONObject.put("header", s3.this.a(this.f));
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public s3(d dVar) {
        this.b = dVar;
        this.c = new w4(dVar);
    }

    public static String a(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri parse = Uri.parse(str);
        HashMap hashMap = new HashMap(strArr.length);
        for (String str2 : strArr) {
            String queryParameter = parse.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                hashMap.put(str2, queryParameter);
            }
        }
        Uri.Builder buildUpon = parse.buildUpon();
        buildUpon.clearQuery();
        for (String str3 : hashMap.keySet()) {
            buildUpon.appendQueryParameter(str3, (String) hashMap.get(str3));
        }
        return buildUpon.build().toString();
    }

    public static JSONObject a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("aid", str);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OS, "Android");
        jSONObject.put("os_version", String.valueOf(Build.VERSION.SDK_INT));
        jSONObject.put(TapEventParamConstants.PARAM_SUB_SDK_VERSION, "6.16.9");
        jSONObject.put(TapEventParamConstants.PARAM_SUB_APP_VERSION, str2);
        return jSONObject;
    }

    public static void a(StringBuilder sb, String str, String str2) {
        if (sb == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        sb.append(sb.toString().indexOf(63) < 0 ? "?" : "&");
        sb.append(str);
        sb.append("=");
        sb.append(Uri.encode(str2));
    }

    public static JSONObject b(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("magic_tag", "ss_app_log");
        jSONObject2.put("header", jSONObject);
        jSONObject2.put("_gen_time", System.currentTimeMillis());
        return jSONObject2;
    }

    public final HashMap<String, String> a() {
        HashMap hashMap = new HashMap(2);
        InitConfig initConfig = this.b.getInitConfig();
        if (initConfig != null) {
            Map<String, String> httpHeaders = initConfig.getHttpHeaderCallback() != null ? initConfig.getHttpHeaderCallback().get() : initConfig.getHttpHeaders();
            if (httpHeaders != null && !httpHeaders.isEmpty()) {
                hashMap.putAll(httpHeaders);
            }
        }
        return w4.a((HashMap<String, String>) hashMap, this.b);
    }

    public final JSONObject a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            a(jSONObject);
            return jSONObject;
        } catch (Throwable th) {
            this.b.D.error(11, "JSON handle failed", th, new Object[0]);
            return null;
        }
    }

    public final JSONObject a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return null;
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : headerFields.keySet()) {
            if (k0.d(str)) {
                try {
                    jSONObject.put(str, headerFields.get(str));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONObject;
    }

    public final void a(String str, int i, byte[] bArr, String str2, long j, HttpURLConnection httpURLConnection) {
        if (LogUtils.isDisabled()) {
            return;
        }
        LogUtils.sendJsonFetcher("do_request_end", new b(str, i, bArr, str2, j, httpURLConnection));
    }

    public final void a(JSONObject jSONObject) {
        try {
            long optLong = jSONObject.optLong("server_time");
            if (optLong > 0) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("server_time", optLong);
                jSONObject2.put("local_time", System.currentTimeMillis() / 1000);
                d = jSONObject2;
                if (LogUtils.isDisabled()) {
                    return;
                }
                LogUtils.sendJsonFetcher("server_time_sync", new a(jSONObject2));
            }
        } catch (Exception unused) {
        }
    }

    public JSONObject b(String str, JSONObject jSONObject) {
        String str2;
        this.b.D.debug(11, "Start to report oaid to uri:{} with request:{}...", str, jSONObject);
        try {
            str2 = new String(this.b.getNetClient().execute((byte) 1, this.c.a(str), jSONObject, a(), (byte) 0, true, Constant.CALLBACK_CODE_LOGIN_SUCCESS));
        } catch (Exception e) {
            e = e;
            str2 = null;
        }
        try {
            this.b.D.debug(11, "reportOaid success: {}", str2);
        } catch (Exception e2) {
            e = e2;
            this.b.D.error(11, "reportOaid error", e, new Object[0]);
            return a(str2);
        }
        return a(str2);
    }

    public JSONObject a(String str, JSONObject jSONObject) {
        String str2;
        this.b.D.debug(11, "Start to register to uri:{} with request:{}...", str, jSONObject);
        try {
            str2 = new String(this.b.getNetClient().execute((byte) 1, this.c.a(str), jSONObject, a(), (byte) 0, true, Constant.CALLBACK_CODE_LOGIN_SUCCESS));
            try {
                this.b.D.debug(11, "request register success: {}", str2);
            } catch (Throwable th) {
                th = th;
                this.b.D.error(11, "request register error", th, new Object[0]);
                return a(str2);
            }
        } catch (Throwable th2) {
            th = th2;
            str2 = null;
        }
        return a(str2);
    }

    public final String a(JSONObject jSONObject, String str, Map<String, String> map, int i) {
        GZIPInputStream gZIPInputStream;
        ByteArrayInputStream byteArrayInputStream;
        byte[] byteArray;
        String optString = jSONObject.optString("key");
        String optString2 = jSONObject.optString("iv");
        boolean z = true;
        byte b2 = (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) ? (byte) 0 : (byte) 1;
        byte[] execute = this.b.getNetClient().execute((byte) 1, str, jSONObject, map, b2, true, i);
        if (b2 == 0) {
            return new String(execute);
        }
        String str2 = null;
        str2 = null;
        ByteArrayInputStream byteArrayInputStream2 = null;
        if (execute != null) {
            byte[] a2 = w4.a(execute, optString, optString2);
            if (a2 != null) {
                if (a2.length <= 0) {
                    byteArray = null;
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byteArrayInputStream = new ByteArrayInputStream(a2);
                        try {
                            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                        } catch (IOException unused) {
                            gZIPInputStream = null;
                        } catch (Throwable th) {
                            th = th;
                            gZIPInputStream = null;
                        }
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = gZIPInputStream.read(bArr);
                                if (read < 0) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        } catch (IOException unused2) {
                        } catch (Throwable th2) {
                            th = th2;
                            byteArrayInputStream2 = byteArrayInputStream;
                            k0.a((Closeable) gZIPInputStream);
                            k0.a((Closeable) byteArrayInputStream2);
                            throw th;
                        }
                    } catch (IOException unused3) {
                        gZIPInputStream = null;
                        byteArrayInputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        gZIPInputStream = null;
                    }
                    k0.a((Closeable) gZIPInputStream);
                    k0.a((Closeable) byteArrayInputStream);
                    byteArray = byteArrayOutputStream.toByteArray();
                }
                if (byteArray != null) {
                    str2 = new String(byteArray);
                }
            } else {
                str2 = new String(execute);
            }
            z = false;
        }
        return z ? new String(this.b.getNetClient().execute((byte) 1, str, jSONObject, map, (byte) 0, true, Constant.CALLBACK_CODE_LOGIN_SUCCESS)) : str2;
    }

    public int a(String[] strArr, JSONObject jSONObject, v1 v1Var) {
        int i;
        JSONObject jSONObject2;
        int i2;
        int i3;
        HashMap<String, String> a2 = a();
        int length = strArr.length;
        JSONObject jSONObject3 = null;
        int i4 = 0;
        int i5 = 102;
        while (true) {
            if (i4 >= length) {
                i = 200;
                jSONObject2 = jSONObject3;
                i2 = i5;
                break;
            }
            try {
                i = 200;
                i3 = i4;
                try {
                    String str = new String(this.b.getNetClient().execute((byte) 1, strArr[i4], jSONObject, a2, (byte) 0, true, Constant.CALLBACK_CODE_LOGIN_SUCCESS));
                    if (TextUtils.isEmpty(str)) {
                        continue;
                    } else {
                        jSONObject2 = new JSONObject(str);
                        try {
                            a(jSONObject2);
                            if (!"ss_app_log".equals(jSONObject2.optString("magic_tag"))) {
                                jSONObject3 = jSONObject2;
                                i5 = 102;
                            } else {
                                if ("success".equals(jSONObject2.optString("message"))) {
                                    i2 = 200;
                                    break;
                                }
                                i5 = 101;
                                jSONObject3 = jSONObject2;
                            }
                        } catch (Exception e) {
                            e = e;
                            jSONObject3 = jSONObject2;
                            if (e instanceof RangersHttpException) {
                                i2 = ((RangersHttpException) e).getResponseCode();
                                if (v1Var.c.isCongestionControlEnable()) {
                                    if (i2 >= 500 && i2 < 600) {
                                        jSONObject2 = jSONObject3;
                                        if (i2 == i) {
                                            v1Var.a(jSONObject2);
                                            p1 p1Var = v1Var.s;
                                            p1Var.a(jSONObject2, "blocklist");
                                            p1Var.a(jSONObject2, "whitelist");
                                        }
                                        return i2;
                                    }
                                }
                                i5 = i2;
                            } else {
                                this.b.D.error(11, "Send to server failed", e, new Object[0]);
                            }
                            i4 = i3 + 1;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                i = 200;
                i3 = i4;
            }
            i4 = i3 + 1;
        }
        if (i2 == i && jSONObject2 != null) {
            v1Var.a(jSONObject2);
            p1 p1Var2 = v1Var.s;
            p1Var2.a(jSONObject2, "blocklist");
            p1Var2.a(jSONObject2, "whitelist");
        }
        return i2;
    }

    public boolean a(JSONObject jSONObject, String str) {
        this.b.D.debug(11, "Start to send event:{} with cookie:{} to et...", jSONObject, str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("header", this.b.getHeader());
            if (jSONObject != null) {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                jSONObject2.put("event_v3", jSONArray);
            }
        } catch (Throwable th) {
            this.b.D.error(11, "JSON handle failed", th, new Object[0]);
        }
        HashMap<String, String> a2 = a();
        a2.put(SM.COOKIE, str);
        try {
            String str2 = new String(this.b.getNetClient().execute((byte) 1, this.a + "/simulator/mobile/log", jSONObject2, a2, (byte) 0, true, 10000));
            if (!new JSONObject(str2).getJSONObject("data").optBoolean("keep", false)) {
                this.b.setRangersEventVerifyEnable(false, str);
            }
            this.b.D.debug(11, "Send event to et with response:{}", str2);
            return true;
        } catch (Throwable th2) {
            this.b.D.error(11, "Post to event verify failed", th2, new Object[0]);
            return false;
        }
    }
}
