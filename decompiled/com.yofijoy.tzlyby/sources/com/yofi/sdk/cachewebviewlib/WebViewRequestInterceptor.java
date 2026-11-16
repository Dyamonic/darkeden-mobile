package com.yofi.sdk.cachewebviewlib;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes2.dex */
public interface WebViewRequestInterceptor {
    void clearCache();

    void enableForce(boolean force);

    InputStream getCacheFile(String url);

    File getCachePath();

    void initAssetsData();

    WebResourceResponse interceptRequest(WebResourceRequest request);

    WebResourceResponse interceptRequest(String url);

    void loadUrl(WebView webView, String url);

    void loadUrl(WebView webView, String url, Map<String, String> additionalHttpHeaders);

    void loadUrl(String url, String userAgent);

    void loadUrl(String url, Map<String, String> additionalHttpHeaders, String userAgent);
}
