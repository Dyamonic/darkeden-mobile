package com.yofi.sdk.imp.middle.common;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.utils.CommonUtils;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class HttpUtils {
    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    private static final String LOG_TAG = "WebAPI";
    private static HttpUtils instance;
    private OkHttpClient mOkHttpClient = new OkHttpClient().newBuilder().connectTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).writeTimeout(30, TimeUnit.SECONDS).build();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    private HttpUtils() {
    }

    public static HttpUtils getInstance() {
        if (instance == null) {
            synchronized (HttpUtils.class) {
                if (instance == null) {
                    instance = new HttpUtils();
                }
            }
        }
        return instance;
    }

    public void Get(String url, MyCallBack callBack) {
        requestNetWork(bulidRequestForGet(url), callBack);
    }

    public void PostWithFormData(String url, Map<String, String> parms, MyCallBack callBack) {
        requestNetWork(bulidRequestForPostByForm(url, parms), callBack);
    }

    public void PostWithJson(String url, String json, MyCallBack callBack) {
        requestNetWork(bulidRequestForPostByJson(url, json), callBack);
    }

    private Request bulidRequestForPostByJson(String url, String json) {
        RequestBody create = RequestBody.create(JSON, json);
        try {
            JSONObject jSONObject = new JSONObject(json);
            if (jSONObject.has("accessToken")) {
                return new Request.Builder().url(url).addHeader("clientId", YoFiSdkImp.instance().getAppId()).addHeader("accessToken", jSONObject.getString("accessToken")).post(create).build();
            }
            return new Request.Builder().url(url).addHeader("clientId", YoFiSdkImp.instance().getAppId()).post(create).build();
        } catch (JSONException unused) {
            return new Request.Builder().url(url).addHeader("clientId", YoFiSdkImp.instance().getAppId()).post(create).build();
        }
    }

    private Request bulidRequestForPostByForm(String url, Map<String, String> parms) {
        FormBody.Builder builder = new FormBody.Builder();
        if (parms != null) {
            for (Map.Entry<String, String> entry : parms.entrySet()) {
                builder.add(entry.getKey(), entry.getValue());
            }
        }
        FormBody build = builder.build();
        String str = parms.get("accessToken");
        if (str != null && str.length() > 0) {
            return new Request.Builder().url(url).addHeader("clientId", YoFiSdkImp.instance().getAppId()).addHeader("accessToken", str).addHeader("yofiDeviceId", YoFiSdkImp.instance().getImei()).addHeader("yofiSystem", Constants.SYSTEM_TYPE.ANDROID.getValue() + "").addHeader("yofiSystemVersion", Build.VERSION.RELEASE).addHeader("yofiSdkVersion", Constants.CLIENT_VERSION).addHeader("yofiVersion", CommonUtils.instance().getAppVersionName(YoFiSdkImp.instance().getMainActivity())).addHeader("yofiChannelId", YoFiSdkImp.instance().getAppChannel() + "").addHeader("yofiPackageName", YoFiSdkImp.instance().getMainActivity().getPackageName()).post(build).build();
        }
        return new Request.Builder().url(url).addHeader("clientId", YoFiSdkImp.instance().getAppId()).addHeader("yofiDeviceId", YoFiSdkImp.instance().getImei()).addHeader("yofiSystem", Constants.SYSTEM_TYPE.ANDROID.getValue() + "").addHeader("yofiSystemVersion", Build.VERSION.RELEASE).addHeader("yofiSdkVersion", Constants.CLIENT_VERSION).addHeader("yofiVersion", CommonUtils.instance().getAppVersionName(YoFiSdkImp.instance().getMainActivity())).addHeader("yofiChannelId", YoFiSdkImp.instance().getAppChannel() + "").addHeader("yofiPackageName", YoFiSdkImp.instance().getMainActivity().getPackageName()).post(build).build();
    }

    private Request bulidRequestForGet(String url) {
        return new Request.Builder().url(url).get().build();
    }

    private void requestNetWork(final Request request, final MyCallBack callBack) {
        callBack.onLoadingBefore(request);
        this.mOkHttpClient.newCall(request).enqueue(new Callback() { // from class: com.yofi.sdk.imp.middle.common.HttpUtils.1
            @Override // okhttp3.Callback
            public void onFailure(final Call call, final IOException e) {
                try {
                    if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                        Log.d(HttpUtils.LOG_TAG, "请求失败url=" + call.request().url().getUrl() + "\nerror=\n" + e.toString());
                    }
                } catch (Exception unused) {
                }
                HttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.HttpUtils.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        callBack.onFailure(request, e);
                    }
                });
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, final Response response) throws IOException {
                final String string = response.body().string();
                try {
                    if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                        Log.d(HttpUtils.LOG_TAG, "请求成功url =" + call.request().url().getUrl() + "\nonResponse=\n " + string + "\n requstHeader=\n" + call.request().headers().toString());
                    }
                } catch (Exception unused) {
                }
                if (response.isSuccessful()) {
                    HttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.HttpUtils.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            callBack.onSuccess(string);
                        }
                    });
                } else {
                    HttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.HttpUtils.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            callBack.onError(response);
                        }
                    });
                }
            }
        });
    }
}
