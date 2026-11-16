package com.yofi.sdk.cachewebviewlib;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.rich.oauth.util.LogToFile;
import com.yofi.sdk.cachewebviewlib.config.CacheExtensionConfig;
import com.yofi.sdk.cachewebviewlib.utils.CopyInputStream;
import com.yofi.sdk.cachewebviewlib.utils.FileUtil;
import com.yofi.sdk.cachewebviewlib.utils.MD5Utils;
import com.yofi.sdk.cachewebviewlib.utils.MimeTypeMapUtils;
import com.yofi.sdk.cachewebviewlib.utils.NetUtils;
import com.yofi.sdk.cachewebviewlib.utils.OKHttpFile;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Cache;
import okhttp3.CacheControl;
import okhttp3.Dns;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class WebViewCacheInterceptor implements WebViewRequestInterceptor {
    public static final String KEY_CACHE = "WebResourceInterceptor-Key-Cache";
    private static final String TAG = "YoFiCacheTag";
    private static final String TAGSAME = "YoFiCacheSameTag";
    private CacheControl cacheControl;
    private Map<String, String> filemapper;
    private String mAssetsDir;
    private CacheExtensionConfig mCacheExtensionConfig;
    private File mCacheFile;
    private long mCacheSize;
    private CacheType mCacheType;
    private long mConnectTimeout;
    private Context mContext;
    private boolean mDebug;
    private Dns mDns;
    private boolean mIsSuffixMod;
    private long mReadTimeout;
    private ResourceInterceptor mResourceInterceptor;
    private SSLSocketFactory mSSLSocketFactory;
    private boolean mTrustAllHostname;
    private X509TrustManager mX509TrustManager;
    private OkHttpClient mHttpClient = null;
    private String mOrigin = "";
    private String mReferer = "";
    private String mUserAgent = "";
    private Map<String, String> fileMap = new HashMap();

    public WebViewCacheInterceptor(Builder builder) {
        this.mAssetsDir = null;
        this.mTrustAllHostname = false;
        this.mSSLSocketFactory = null;
        this.mX509TrustManager = null;
        this.mDns = null;
        this.mIsSuffixMod = false;
        this.cacheControl = builder.mCacheControl;
        this.mCacheExtensionConfig = builder.mCacheExtensionConfig;
        this.mCacheFile = builder.mCacheFile;
        this.mCacheSize = builder.mCacheSize;
        this.mCacheType = builder.mCacheType;
        this.mConnectTimeout = builder.mConnectTimeout;
        this.mReadTimeout = builder.mReadTimeout;
        this.mContext = builder.mContext;
        this.mDebug = builder.mDebug;
        this.mAssetsDir = builder.mAssetsDir;
        this.mX509TrustManager = builder.mX509TrustManager;
        this.mSSLSocketFactory = builder.mSSLSocketFactory;
        this.mTrustAllHostname = builder.mTrustAllHostname;
        this.mResourceInterceptor = builder.mResourceInterceptor;
        this.mIsSuffixMod = builder.mIsSuffixMod;
        this.mDns = builder.mDns;
        initHttpClient();
        if (isEnableAssets()) {
            initAssetsLoader();
        }
    }

    private boolean isEnableAssets() {
        return this.mAssetsDir != null;
    }

    private void initAssetsLoader() {
        AssetsLoader.getInstance().init(this.mContext).setDir(this.mAssetsDir).isAssetsSuffixMod(this.mIsSuffixMod);
    }

    private void initHttpClient() {
        X509TrustManager x509TrustManager;
        OkHttpClient.Builder addNetworkInterceptor = new OkHttpClient.Builder().cache(new Cache(this.mCacheFile, this.mCacheSize)).connectTimeout(this.mConnectTimeout, TimeUnit.SECONDS).readTimeout(this.mReadTimeout, TimeUnit.SECONDS).addNetworkInterceptor(new HttpCacheInterceptor());
        if (this.mTrustAllHostname) {
            addNetworkInterceptor.hostnameVerifier(new HostnameVerifier() { // from class: com.yofi.sdk.cachewebviewlib.WebViewCacheInterceptor.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String hostname, SSLSession session) {
                    return true;
                }
            });
        }
        SSLSocketFactory sSLSocketFactory = this.mSSLSocketFactory;
        if (sSLSocketFactory != null && (x509TrustManager = this.mX509TrustManager) != null) {
            addNetworkInterceptor.sslSocketFactory(sSLSocketFactory, x509TrustManager);
        }
        Dns dns = this.mDns;
        if (dns != null) {
            addNetworkInterceptor.dns(dns);
        }
        this.mHttpClient = addNetworkInterceptor.build();
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public WebResourceResponse interceptRequest(WebResourceRequest request) {
        return interceptRequest(request.getUrl().toString(), request.getRequestHeaders());
    }

    private Map<String, String> buildHeaders() {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.mOrigin)) {
            hashMap.put("Origin", this.mOrigin);
        }
        if (!TextUtils.isEmpty(this.mReferer)) {
            hashMap.put(HttpHeaders.REFERER, this.mReferer);
        }
        if (!TextUtils.isEmpty(this.mUserAgent)) {
            hashMap.put("User-Agent", this.mUserAgent);
        }
        return hashMap;
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public WebResourceResponse interceptRequest(String url) {
        return interceptRequest(url, buildHeaders());
    }

    private boolean checkUrl(String url) {
        if (TextUtils.isEmpty(url) || !url.startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
            return false;
        }
        ResourceInterceptor resourceInterceptor = this.mResourceInterceptor;
        if (resourceInterceptor != null && !resourceInterceptor.interceptor(url)) {
            return false;
        }
        String fileExtensionFromUrl = MimeTypeMapUtils.getFileExtensionFromUrl(url);
        return !TextUtils.isEmpty(fileExtensionFromUrl) && this.mCacheExtensionConfig.canCache(fileExtensionFromUrl);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(WebView webView, String url) {
        if (isValidUrl(url)) {
            webView.loadUrl(url);
            String url2 = webView.getUrl();
            this.mReferer = url2;
            this.mOrigin = NetUtils.getOriginUrl(url2);
            this.mUserAgent = webView.getSettings().getUserAgentString();
        }
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(String url, String userAgent) {
        if (isValidUrl(url)) {
            this.mReferer = url;
            this.mOrigin = NetUtils.getOriginUrl(url);
            this.mUserAgent = userAgent;
        }
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(String url, Map<String, String> additionalHttpHeaders, String userAgent) {
        if (isValidUrl(url)) {
            this.mReferer = url;
            this.mOrigin = NetUtils.getOriginUrl(url);
            this.mUserAgent = userAgent;
        }
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(WebView webView, String url, Map<String, String> additionalHttpHeaders) {
        if (isValidUrl(url)) {
            webView.loadUrl(url, additionalHttpHeaders);
            String url2 = webView.getUrl();
            this.mReferer = url2;
            this.mOrigin = NetUtils.getOriginUrl(url2);
            this.mUserAgent = webView.getSettings().getUserAgentString();
        }
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void clearCache() {
        FileUtil.deleteDirs(this.mCacheFile.getAbsolutePath(), false);
        AssetsLoader.getInstance().clear();
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void enableForce(boolean force) {
        if (force) {
            this.mCacheType = CacheType.FORCE;
        } else {
            this.mCacheType = CacheType.NORMAL;
        }
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public InputStream getCacheFile(String url) {
        return OKHttpFile.getCacheFile(this.mCacheFile, url);
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public void initAssetsData() {
        AssetsLoader.getInstance().initData();
    }

    @Override // com.yofi.sdk.cachewebviewlib.WebViewRequestInterceptor
    public File getCachePath() {
        return this.mCacheFile;
    }

    public void addHeader(Request.Builder reqBuilder, Map<String, String> headers) {
        if (headers == null) {
            return;
        }
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            reqBuilder.addHeader(entry.getKey(), entry.getValue());
        }
    }

    private String md5(String source) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', LogToFile.DEBUG, LogToFile.ERROR, 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(source.getBytes());
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i = 0;
            for (int i2 = 0; i2 < 16; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i3 + 1;
                cArr2[i3] = cArr[b & 15];
            }
            return new String(cArr2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private int getBytes(String value) {
        String substring = value.substring(value.indexOf("bytes=") + 6);
        try {
            return Integer.parseInt(substring.substring(0, substring.indexOf("-")));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private WebResourceResponse interceptRequest(String url, Map<String, String> headers) {
        InputStream resByUrl;
        String fileExtensionFromUrl = MimeTypeMapUtils.getFileExtensionFromUrl(url);
        if (this.mCacheType == CacheType.NORMAL || !checkUrl(url)) {
            return null;
        }
        if (isEnableAssets() && (resByUrl = AssetsLoader.getInstance().getResByUrl(url)) != null) {
            Log.d(TAG, "走AssetsCache = " + url);
            CacheWebViewLog.d(String.format("from assets: %s", url), this.mDebug);
            return setwebResourceResponseHeader(new WebResourceResponse(MimeTypeMapUtils.getMimeTypeFromUrl(url), "", resByUrl), resByUrl, url, headers);
        }
        File file = new File(this.mCacheFile.getAbsolutePath(), md5(AssetsLoader.getInstance().getUrlPath(url)));
        if (file.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                WebResourceResponse webResourceResponse = new WebResourceResponse(MimeTypeMapUtils.getMimeTypeFromUrl(url), null, fileInputStream);
                Log.d(TAG, "走downloadCache = " + url);
                return setwebResourceResponseHeader(webResourceResponse, fileInputStream, url, headers);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        try {
            Request.Builder url2 = new Request.Builder().url(url);
            if (this.mCacheExtensionConfig.isHtml(fileExtensionFromUrl)) {
                headers.put(KEY_CACHE, this.mCacheType.ordinal() + "");
            }
            addHeader(url2, headers);
            url2.cacheControl(this.cacheControl);
            Request build = url2.build();
            Log.d(TAG, "走download下载 = " + url);
            return requestContent(build, headers);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private WebResourceResponse requestContent(Request request, Map<String, String> headers) {
        try {
            Log.d("verifyUrl", "开始请求requestUrl= " + request.url().getUrl());
            Response execute = this.mHttpClient.newCall(request).execute();
            if ((execute.code() != 200 && execute.code() != 206) || !execute.isSuccessful() || execute.body() == null) {
                return null;
            }
            String url = execute.request().url().getUrl();
            Log.d("verifyUrl", "结束请求responseUrl= " + url);
            if (!MimeTypeMapUtils.isMd5NameFromUrl(url)) {
                return null;
            }
            CopyInputStream copyInputStream = new CopyInputStream(execute.body().byteStream());
            InputStream copy = copyInputStream.getCopy();
            InputStream copy2 = copyInputStream.getCopy();
            InputStream copy3 = copyInputStream.getCopy();
            String fileMd5NameFromUrl = MimeTypeMapUtils.getFileMd5NameFromUrl(url);
            String substring = MD5Utils.getInputStreamMd5(copy).substring(0, 10);
            if (!substring.equals(fileMd5NameFromUrl)) {
                Log.d(TAGSAME, "md5nosame=" + url + ",fileNameMd5=" + fileMd5NameFromUrl + ",fileMd5=" + substring);
                return null;
            }
            Log.d(TAGSAME, "md5same=" + url + ",fileNameMd5=" + fileMd5NameFromUrl + ",fileMd5=" + substring);
            FileUtil.createFile(copy2, this.mCacheFile.getAbsolutePath(), md5(AssetsLoader.getInstance().getUrlPath(url)));
            WebResourceResponse webResourceResponse = new WebResourceResponse(MimeTypeMapUtils.getMimeTypeFromUrl(url), null, copy3);
            try {
                return setwebResourceResponseHeader(webResourceResponse, copy3, url, headers);
            } catch (Exception unused) {
                return webResourceResponse;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    WebResourceResponse setwebResourceResponseHeader(WebResourceResponse webResourceResponse, InputStream inputStream, String url, Map<String, String> headers) {
        if (this.mCacheExtensionConfig.isMedia(MimeTypeMapUtils.getFileExtensionFromUrl(url))) {
            Log.d(TAG, "url=" + url + " MediaRequestHeader= " + headers.toString());
            String str = headers.get("Range");
            if (str != null) {
                Map<String, String> responseHeaders = webResourceResponse.getResponseHeaders();
                if (responseHeaders == null) {
                    responseHeaders = new HashMap<>();
                }
                try {
                    int bytes = getBytes(str);
                    StringBuilder sb = new StringBuilder();
                    sb.append("bytes ");
                    sb.append(bytes);
                    sb.append("-");
                    sb.append(inputStream.available() - 1);
                    sb.append("/");
                    sb.append(inputStream.available());
                    responseHeaders.put("Content-Range", sb.toString());
                } catch (IOException e) {
                    e.printStackTrace();
                }
                webResourceResponse.setStatusCodeAndReasonPhrase(HttpStatus.SC_PARTIAL_CONTENT, "Partial Content");
                webResourceResponse.setResponseHeaders(responseHeaders);
            }
        }
        return webResourceResponse;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private CacheControl mCacheControl;
        private File mCacheFile;
        private Context mContext;
        private ResourceInterceptor mResourceInterceptor;
        private long mCacheSize = 104857600;
        private long mConnectTimeout = 20;
        private long mReadTimeout = 20;
        private boolean mDebug = true;
        private CacheType mCacheType = CacheType.FORCE;
        private boolean mTrustAllHostname = false;
        private SSLSocketFactory mSSLSocketFactory = null;
        private X509TrustManager mX509TrustManager = null;
        private String mAssetsDir = null;
        private boolean mIsSuffixMod = false;
        private Dns mDns = null;
        private CacheExtensionConfig mCacheExtensionConfig = new CacheExtensionConfig();

        public Builder(Context context) {
            this.mContext = context;
            this.mCacheFile = new File(context.getCacheDir().toString(), "CacheWebViewCache");
        }

        public void setResourceInterceptor(ResourceInterceptor resourceInterceptor) {
            this.mResourceInterceptor = resourceInterceptor;
        }

        public Builder setTrustAllHostname() {
            this.mTrustAllHostname = true;
            return this;
        }

        public Builder setSSLSocketFactory(SSLSocketFactory sslSocketFactory, X509TrustManager trustManager) {
            if (sslSocketFactory != null && trustManager != null) {
                this.mSSLSocketFactory = sslSocketFactory;
                this.mX509TrustManager = trustManager;
            }
            return this;
        }

        public Builder setCatchControl(CacheControl cacheControl) {
            if (cacheControl != null) {
                this.mCacheControl = cacheControl;
            }
            return this;
        }

        public Builder setCachePath(File file) {
            if (file != null) {
                this.mCacheFile = file;
            }
            return this;
        }

        public Builder setCacheSize(long cacheSize) {
            if (cacheSize > 1024) {
                this.mCacheSize = cacheSize;
            }
            return this;
        }

        public Builder setReadTimeoutSecond(long time) {
            if (time >= 0) {
                this.mReadTimeout = time;
            }
            return this;
        }

        public Builder setConnectTimeoutSecond(long time) {
            if (time >= 0) {
                this.mConnectTimeout = time;
            }
            return this;
        }

        public Builder setCacheExtensionConfig(CacheExtensionConfig config) {
            if (config != null) {
                this.mCacheExtensionConfig = config;
            }
            return this;
        }

        public Builder setDebug(boolean debug) {
            this.mDebug = debug;
            return this;
        }

        public Builder setCacheType(CacheType cacheType) {
            this.mCacheType = cacheType;
            return this;
        }

        public Builder isAssetsSuffixMod(boolean suffixMod) {
            this.mIsSuffixMod = suffixMod;
            return this;
        }

        public Builder setAssetsDir(String dir) {
            if (dir != null) {
                this.mAssetsDir = dir;
            }
            return this;
        }

        public void setDns(Dns dns) {
            this.mDns = dns;
        }

        public WebViewRequestInterceptor build() {
            return new WebViewCacheInterceptor(this);
        }
    }

    boolean isValidUrl(String url) {
        return URLUtil.isValidUrl(url);
    }

    public String getJson(String fileName, Context context) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open(fileName)));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    private boolean getFileMapper(InputStream inputStream) {
        String stringBuffer;
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                stringBuffer2.append(new String(bArr, 0, read));
            }
            stringBuffer = stringBuffer2.toString();
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(stringBuffer)) {
            return false;
        }
        Map<String, String> jsonToHashMap = jsonToHashMap(new JSONObject(stringBuffer));
        this.filemapper = jsonToHashMap;
        if (jsonToHashMap != null && !jsonToHashMap.isEmpty()) {
            CacheWebViewLog.d(stringBuffer, this.mDebug);
            return true;
        }
        return false;
    }

    private Map<String, String> jsonToHashMap(JSONObject jsonObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String valueOf = String.valueOf(keys.next());
            hashMap.put(valueOf, jsonObject.optString(valueOf));
        }
        return hashMap;
    }
}
