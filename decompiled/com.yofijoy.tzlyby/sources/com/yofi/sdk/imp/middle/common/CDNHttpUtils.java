package com.yofi.sdk.imp.middle.common;

import android.os.Handler;
import android.os.Looper;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class CDNHttpUtils {
    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    private static CDNHttpUtils instance;
    private OkHttpClient mOkHttpClient = new OkHttpClient().newBuilder().connectTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).writeTimeout(10, TimeUnit.SECONDS).build();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    private CDNHttpUtils() {
    }

    public static CDNHttpUtils getInstance() {
        if (instance == null) {
            synchronized (CDNHttpUtils.class) {
                if (instance == null) {
                    instance = new CDNHttpUtils();
                }
            }
        }
        return instance;
    }

    public void Get(String url, MyCallBack callBack) {
        requestNetWork(bulidRequestForGet(url), callBack);
    }

    public void Get_NotVerifyRespons(String url, MyCallBack callBack) {
        request_NotVerifyRespons(bulidRequestForGet(url), callBack);
    }

    private Request bulidRequestForGet(String url) {
        return new Request.Builder().url(url).get().cacheControl(new CacheControl.Builder().noStore().build()).build();
    }

    private void requestNetWork(final Request request, final MyCallBack callBack) {
        callBack.onLoadingBefore(request);
        this.mOkHttpClient.newCall(request).enqueue(new Callback() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, final IOException e) {
                CDNHttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        callBack.onFailure(request, e);
                    }
                });
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, final Response response) throws IOException {
                final String string = response.body().string();
                if (response.isSuccessful()) {
                    CDNHttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            callBack.onSuccess(string);
                        }
                    });
                } else {
                    CDNHttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            callBack.onError(response);
                        }
                    });
                }
            }
        });
    }

    private void request_NotVerifyRespons(final Request request, final MyCallBack callBack) {
        callBack.onLoadingBefore(request);
        this.mOkHttpClient.newCall(request).enqueue(new Callback() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.2
            @Override // okhttp3.Callback
            public void onFailure(Call call, final IOException e) {
                CDNHttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        callBack.onFailure(request, e);
                    }
                });
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, final Response response) throws IOException {
                if (response.code() == 200 || response.code() == 404) {
                    CDNHttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            callBack.onSuccess("");
                        }
                    });
                } else {
                    CDNHttpUtils.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.common.CDNHttpUtils.2.3
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
