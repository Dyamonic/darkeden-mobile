package com.yofi.sdk.cachewebviewlib;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.yofi.sdk.cachewebviewlib.WebViewCacheInterceptor;
import java.io.File;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes2.dex */
public class WebViewCacheInterceptorInst implements WebViewRequestInterceptor {
    private static volatile WebViewCacheInterceptorInst webViewCacheInterceptorInst;
    private WebViewRequestInterceptor mInterceptor;

    public void init(WebViewCacheInterceptor.Builder builder) {
        if (builder != null) {
            this.mInterceptor = builder.build();
        }
    }

    public static WebViewCacheInterceptorInst getInstance() {
        if (webViewCacheInterceptorInst == null) {
            synchronized (WebViewCacheInterceptorInst.class) {
                if (webViewCacheInterceptorInst == null) {
                    webViewCacheInterceptorInst = new WebViewCacheInterceptorInst();
                }
            }
        }
        return webViewCacheInterceptorInst;
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public WebResourceResponse interceptRequest(WebResourceRequest request) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.interceptRequest(request);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public WebResourceResponse interceptRequest(String url) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.interceptRequest(url);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(WebView webView, String url) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return;
        }
        webViewRequestInterceptor.loadUrl(webView, url);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(String url, String userAgent) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return;
        }
        webViewRequestInterceptor.loadUrl(url, userAgent);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(String url, Map<String, String> additionalHttpHeaders, String userAgent) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return;
        }
        webViewRequestInterceptor.loadUrl(url, additionalHttpHeaders, userAgent);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(WebView webView, String url, Map<String, String> additionalHttpHeaders) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return;
        }
        webViewRequestInterceptor.loadUrl(webView, url, additionalHttpHeaders);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void clearCache() {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return;
        }
        webViewRequestInterceptor.clearCache();
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void enableForce(boolean force) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return;
        }
        webViewRequestInterceptor.enableForce(force);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public InputStream getCacheFile(String url) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.getCacheFile(url);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void initAssetsData() {
        AssetsLoader.getInstance().initData();
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public File getCachePath() {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.getCachePath();
    }
}
