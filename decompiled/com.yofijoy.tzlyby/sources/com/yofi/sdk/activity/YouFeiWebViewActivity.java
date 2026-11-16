package com.yofi.sdk.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.applog.util.WebViewJsUtil;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.kit.internal.callback.TapTapCallback;
import com.taptap.sdk.kit.internal.exception.TapTapException;
import com.taptap.sdk.login.AccessToken;
import com.taptap.sdk.login.TapTapAccount;
import com.taptap.sdk.login.TapTapLogin;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import com.yofi.sdk.IFlashCallback;
import com.yofi.sdk.YoFiSDK;
import com.yofi.sdk.cachewebviewlib.CacheType;
import com.yofi.sdk.cachewebviewlib.WebViewCacheInterceptor;
import com.yofi.sdk.cachewebviewlib.WebViewCacheInterceptorInst;
import com.yofi.sdk.cachewebviewlib.config.CacheExtensionConfig;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.common.ConstantsExternal;
import com.yofi.sdk.imp.middle.common.SQLFunction;
import com.yofi.sdk.imp.middle.data.Content;
import com.yofi.sdk.imp.middle.eventreword.EventReword;
import com.yofi.sdk.imp.middle.manager.UserManager;
import com.yofi.sdk.notchlib.NotchScreenManager;
import com.yofi.sdk.utils.AndroidBug5497Workaround;
import com.yofi.sdk.utils.CommonUtils;
import com.yofi.sdk.utils.ResUtils;
import com.yofi.sdk.utils.ToastUtils;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class YouFeiWebViewActivity extends YofiBaseActivity {
    private static final String YoFiTAG = "YoFiImpWebvieTag";
    private String callBack;
    private boolean isLoginOut;
    private BaseUiListener mUiListener;
    private WebView mWebView;
    private WeChatBroadcastReceiver receiver;
    private int mUrlType = 0;
    private Set<String> codeSet = new HashSet();
    private boolean isURLOnReceivedHttpError = false;
    private int httpErrorCode = -1;

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yofi.sdk.activity.YofiBaseActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        if (YoFiSdkImp.instance().isShowThirdLogin()) {
            this.receiver = new WeChatBroadcastReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(ConstantsExternal.WECHAT_BROADCAST);
            registerReceiver(this.receiver, intentFilter);
            this.mUiListener = new BaseUiListener();
        }
        setContentView(ResUtils.getId(this, "yofi_webview", "layout"));
        AndroidBug5497Workaround.assistActivity(this);
        NotchScreenManager.getInstance().setDisplayInNotch(this);
        this.isLoginOut = getIntent().getBooleanExtra("isLoginOut", false);
        Log.d("isLoginOut", this.isLoginOut + "");
        this.mUrlType = getIntent().getIntExtra("urlType", 0);
        WebView webView = (WebView) findViewById(ResUtils.getId(this, "wv", BreakpointSQLiteKey.ID));
        this.mWebView = webView;
        webView.setBackgroundColor(0);
        this.mWebView.getBackground().setAlpha(0);
        this.mWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.mWebView.clearCache(true);
        this.mWebView.clearHistory();
        this.mWebView.clearFormData();
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                Log.d(YouFeiWebViewActivity.YoFiTAG, "setWebViewClient onPageFinished url =" + url);
                if (YouFeiWebViewActivity.this.isURLOnReceivedHttpError && url.equals(YouFeiWebViewActivity.this.getmUrl())) {
                    YouFeiWebViewActivity.this.isURLOnReceivedHttpError = false;
                    YouFeiWebViewActivity.this.mWebView.evaluateJavascript("(function() { return document.title; })();", new ValueCallback<String>() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.1.1
                        @Override // android.webkit.ValueCallback
                        public void onReceiveValue(String title) {
                            Log.d(YouFeiWebViewActivity.YoFiTAG, "error Page Title: " + title);
                            YouFeiWebViewActivity.this.showErrorDialog("登录加载失败，code: " + YouFeiWebViewActivity.this.httpErrorCode + "，msg：" + title);
                            YouFeiWebViewActivity.this.mWebView.loadUrl(WebViewJsUtil.EMPTY_PAGE);
                        }
                    });
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideKeyEvent(WebView view, KeyEvent event) {
                return super.shouldOverrideKeyEvent(view, event);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                WebViewCacheInterceptorInst.getInstance().loadUrl(YouFeiWebViewActivity.this.mWebView, url);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView2, WebResourceRequest webResourceRequest) {
                return WebViewCacheInterceptorInst.getInstance().interceptRequest(webResourceRequest);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
                return WebViewCacheInterceptorInst.getInstance().interceptRequest(url);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                super.onReceivedError(view, request, error);
                if (request.isForMainFrame() && request.getUrl().toString().equals(YouFeiWebViewActivity.this.getmUrl())) {
                    Log.d(YouFeiWebViewActivity.YoFiTAG, "onReceivedError code= " + error.getErrorCode() + " msg=" + ((Object) error.getDescription()));
                    YouFeiWebViewActivity.this.showErrorDialog("登录加载失败，code=" + error.getErrorCode() + "，msg=" + ((Object) error.getDescription()));
                    view.loadUrl(WebViewJsUtil.EMPTY_PAGE);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
                super.onReceivedHttpError(view, request, errorResponse);
                if (request.isForMainFrame() && request.getUrl().toString().equals(YouFeiWebViewActivity.this.getmUrl()) && errorResponse != null) {
                    int statusCode = errorResponse.getStatusCode();
                    Log.d(YouFeiWebViewActivity.YoFiTAG, "onReceivedHttpError statusCode=" + statusCode);
                    if (statusCode >= 400) {
                        YouFeiWebViewActivity.this.isURLOnReceivedHttpError = true;
                        YouFeiWebViewActivity.this.httpErrorCode = statusCode;
                    }
                }
            }
        });
        init();
    }

    private void init() {
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowFileAccess(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        settings.setSupportMultipleWindows(false);
        settings.setAppCacheEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setAppCachePath(getDir("appcache", 0).getPath());
        settings.setGeolocationDatabasePath(getDir("geolocation", 0).getPath());
        settings.setCacheMode(2);
        this.mWebView.addJavascriptInterface(this, "SDKBridge");
        WebViewCacheInterceptor.Builder builder = new WebViewCacheInterceptor.Builder(this);
        builder.isAssetsSuffixMod(false);
        builder.setDebug(false);
        builder.setCachePath(new File(getCacheDir(), "cache_path_name")).setCacheSize(-2147483648L).setConnectTimeoutSecond(30L).setReadTimeoutSecond(30L).setCacheType(CacheType.FORCE).setCatchControl(new CacheControl.Builder().noStore().maxStale(20, TimeUnit.SECONDS).build());
        CacheExtensionConfig cacheExtensionConfig = new CacheExtensionConfig();
        cacheExtensionConfig.addExtension("json").addExtension("wave").addExtension("ttf").addExtension("bin").addExtension("atlas").addExtension("mp3").addExtension("ogg").addExtension("zip").addExtension("mem");
        builder.setAssetsDir("");
        builder.setCacheExtensionConfig(cacheExtensionConfig);
        WebViewCacheInterceptorInst.getInstance().init(builder);
        WebViewCacheInterceptorInst.getInstance().initAssetsData();
        String str = getmUrl();
        Log.v("开始加载YofiSdk地址：", str);
        WebViewCacheInterceptorInst.getInstance().loadUrl(this.mWebView, str);
        new Thread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.2
            @Override // java.lang.Runnable
            public void run() {
                YouFeiWebViewActivity.this.scanAndDeleteCacheFile();
            }
        }).start();
        YoFiSdkImp.instance().setSyOneKeyLoginNativeCallJs(new IFlashCallback() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.3
            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int var1, String msg) {
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String var1) {
                try {
                    final String format = String.format("javascript:window.doPhoneLogin('" + var1 + "')", new Object[0]);
                    YouFeiWebViewActivity.this.mWebView.post(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.d(YouFeiWebViewActivity.YoFiTAG, "一键登录主动回调js=" + format);
                            YouFeiWebViewActivity.this.mWebView.loadUrl(format);
                        }
                    });
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getmUrl() {
        Log.d(YoFiTAG, "开始获取sdk地址");
        return YoFiSdkImp.instance().getWebUrl(this.mUrlType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanAndDeleteCacheFile() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        File[] listFiles = new File(WebViewCacheInterceptorInst.getInstance().getCachePath().getAbsolutePath()).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (currentTimeMillis - (file.lastModified() / 1000) > 2592000) {
                    file.delete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorDialog(String errorMessage) {
        new AlertDialog.Builder(this, getResources().getIdentifier("YoFi_Web_HttpError_Dialog", "style", getPackageName())).setTitle("提示").setMessage(errorMessage).setPositiveButton("重试", new DialogInterface.OnClickListener() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                WebViewCacheInterceptorInst.getInstance().clearCache();
                YouFeiWebViewActivity.this.mWebView.clearCache(true);
                YouFeiWebViewActivity.this.mWebView.loadUrl(YouFeiWebViewActivity.this.getmUrl());
            }
        }).setCancelable(false).show();
    }

    @JavascriptInterface
    public void getHeader(String msg) {
        int i;
        String uniqueID = CommonUtils.instance().getUniqueID(this);
        String md5 = CommonUtils.instance().md5(uniqueID);
        String uniqueID2 = CommonUtils.instance().getUniqueID(this);
        String mac = CommonUtils.instance().getMac(this);
        String touristUser = UserManager.instance().getTouristUser();
        String touristPassword = UserManager.instance().getTouristPassword();
        if (TextUtils.isEmpty(touristUser)) {
            i = 8;
        } else {
            uniqueID = touristUser;
            md5 = touristPassword;
            i = 0;
        }
        try {
            String string = new JSONObject(msg).getString("callback");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("clientId", YoFiSdkImp.instance().getAppId());
            jSONObject.put("appKey", YoFiSdkImp.instance().getAppKey());
            jSONObject.put("isShowGuest", YoFiSdkImp.instance().isShowGuest());
            jSONObject.put("isShowTaptap", YoFiSdkImp.instance().isShowTapTap());
            jSONObject.put("isShowQQ", YoFiSdkImp.instance().isShowQQ());
            jSONObject.put("isShowSyOneKeyLogin", YoFiSdkImp.instance().isShowSyOneKeyLogin());
            jSONObject.put("isShowThirdLogin", YoFiSdkImp.instance().isShowThirdLogin());
            jSONObject.put("yofiSystem", "1");
            jSONObject.put("yofiSystemVersion", Build.VERSION.RELEASE);
            jSONObject.put("yofiSdkVersion", Constants.CLIENT_VERSION);
            jSONObject.put("yofiVersion", CommonUtils.instance().getAppVersionName(this));
            jSONObject.put("yofiDeviceId", uniqueID2);
            jSONObject.put("yofiMac", mac);
            jSONObject.put("yofiAndroidId", uniqueID2);
            jSONObject.put("yofiChannelId", YoFiSdkImp.instance().getAppChannel());
            jSONObject.put("yofiOaid", YoFiSdkImp.instance().getOaid());
            jSONObject.put("yofiPackageName", getPackageName());
            jSONObject.put("yofiLogout", this.isLoginOut);
            jSONObject.put("loginWithoutAccount", YoFiSdkImp.instance().getLoginWithoutAccount());
            jSONObject.put("guestLoginName", uniqueID);
            jSONObject.put("guestLoginPassword", md5);
            jSONObject.put("guestLoginType", i);
            jSONObject.put("baseUrl", YoFiSdkImp.instance().getIsDebug().booleanValue() ? Constants.DEBUG_SERVER_URL : Constants.SERVER_URL);
            final String format = String.format("javascript:%s(%d,%s)", string, 0, jSONObject.toString());
            Log.d("YouFeiWebViewActivity", "getHeader: ====" + format);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.mWebView.post(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    YouFeiWebViewActivity.this.mWebView.loadUrl(format);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        NotchScreenManager.getInstance().setDisplayInNotch(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WeChatBroadcastReceiver weChatBroadcastReceiver = this.receiver;
        if (weChatBroadcastReceiver != null) {
            unregisterReceiver(weChatBroadcastReceiver);
        }
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.destroy();
            this.mWebView = null;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getKeyCode() == 4) {
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    @JavascriptInterface
    public void logout(String msg) {
        try {
            if (new JSONObject(msg).getString(ActionUtils.METHOD).equals("logout")) {
                runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        SharedPreferences sharedPreferences = YouFeiWebViewActivity.this.getSharedPreferences(Constants.TAG, 0);
                        sharedPreferences.edit().putBoolean("logout", true).commit();
                        sharedPreferences.edit().putBoolean("hasLoginSuccess", false).commit();
                        YoFiSdkImp.instance().hideFloat();
                        YoFiSdkImp.instance().destroyHideWebView();
                        YoFiSdkImp.instance().setLoginOut(true);
                        YoFiSdkImp.instance().setHasLoginSuccess(false);
                        YoFiSdkImp.instance().getLoginCallback().onLogoutSuccess("");
                        UserManager.instance().clearSession();
                        YouFeiWebViewActivity.this.finish();
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void bindSuccess(String msg) {
        try {
            JSONObject jSONObject = new JSONObject(msg);
            String string = jSONObject.getString(ActionUtils.METHOD);
            JSONObject jSONObject2 = jSONObject.getJSONObject("param");
            if (string.equals("bindSuccess")) {
                UserManager.instance().setPhoneNumber(jSONObject2.getString("phone"));
                YoFiSdkImp.instance().getBindCallBack().onSuccess("");
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void closeWebView(String msg) {
        try {
            if (new JSONObject(msg).getString(ActionUtils.METHOD).equals("closeWebView")) {
                runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        YouFeiWebViewActivity.this.finish();
                    }
                });
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void loginSuccess(String msg) {
        try {
            JSONObject jSONObject = new JSONObject(msg);
            String string = jSONObject.getString(ActionUtils.METHOD);
            JSONObject jSONObject2 = jSONObject.getJSONObject("param");
            if (string.equals("loginSuccess")) {
                Log.d("loginSuccess", "js调用登录成功");
                int i = jSONObject2.has("loginType") ? jSONObject2.getInt("loginType") : 0;
                final String string2 = jSONObject2.has("userId") ? jSONObject2.getString("userId") : "";
                String string3 = jSONObject2.has("uuid") ? jSONObject2.getString("uuid") : "";
                String string4 = jSONObject2.has("phone") ? jSONObject2.getString("phone") : "";
                String string5 = jSONObject2.has("age") ? jSONObject2.getString("age") : "";
                String string6 = jSONObject2.has("nickname") ? jSONObject2.getString("nickname") : "";
                String string7 = jSONObject2.has("accessToken") ? jSONObject2.getString("accessToken") : "";
                final int i2 = jSONObject2.has("isRegGame") ? jSONObject2.getInt("isRegGame") : 0;
                boolean z = jSONObject2.has("isAuthentication") ? jSONObject2.getBoolean("isAuthentication") : true;
                YoFiSdkImp.instance().setNickname(string6);
                YoFiSdkImp.instance().setUserId(string2);
                YoFiSdkImp.instance().setUuid(string3);
                YoFiSdkImp.instance().setAccessToken(string7);
                YoFiSdkImp.instance().setLoginOut(false);
                YoFiSdkImp.instance().setHasLoginSuccess(true);
                YoFiSdkImp.instance().heartbeat();
                UserManager.instance().setPhoneNumber(string4);
                UserManager.instance().setAge(Integer.parseInt(string5));
                UserManager.instance().setTourist(i == 0);
                UserManager.instance().setAuthen(z);
                SharedPreferences sharedPreferences = getSharedPreferences(Constants.TAG, 0);
                sharedPreferences.edit().putBoolean("logout", false).commit();
                sharedPreferences.edit().putBoolean("hasLoginSuccess", true).commit();
                if (SQLFunction.content != null) {
                    SQLFunction.content.setId(SQLFunction.getContentId(this));
                } else {
                    SQLFunction.content = new Content(SQLFunction.getContentId(this));
                }
                SQLFunction.getMaxMsgId(this);
                final JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("code", 0);
                jSONObject3.put("accessToken", string7);
                jSONObject3.put("msg", "ok");
                if (i == 0) {
                    jSONObject3.put("isGuest", true);
                } else {
                    jSONObject3.put("isGuest", false);
                }
                jSONObject3.put("uuid", jSONObject2.getString("uuid"));
                final String str = string6;
                final String str2 = string7;
                runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i2 == 1) {
                            YoFiSdkImp.instance().sdkStage(20);
                            EventReword.getInstance().eventRecord(Constants.YoFiEventName.Complete_Registration, null);
                        } else {
                            YoFiSdkImp.instance().sdkStage(30);
                            EventReword.getInstance().eventRecord(Constants.YoFiEventName.Login, null);
                        }
                        ToastUtils.showToast(YoFiSdkImp.instance().getMainActivity(), "欢迎归来," + str);
                        YoFiSdkImp.instance().getLoginCallback().onLoginSuccess(jSONObject3.toString());
                        YoFiSdkImp.instance().sdkStage(80);
                        YoFiSdkImp.instance().getInitParams(new IFlashCallback() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.8.1
                            @Override // com.yofi.sdk.IFlashCallback
                            public void onFailed(int code, String msg2) {
                            }

                            @Override // com.yofi.sdk.IFlashCallback
                            public void onSuccess(String info) {
                                YoFiSdkImp.instance().querySession(string2);
                                if (YoFiSdkImp.instance().getIsOpenBackH5() == 1) {
                                    YoFiSdkImp.instance().showHideWebView();
                                }
                            }
                        });
                        YouFeiWebViewActivity.this.showFloatButton(str2);
                        YouFeiWebViewActivity.this.finish();
                    }
                });
                return;
            }
            runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    YoFiSdkImp.instance().getLoginCallback().onLoginFailed(-1);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloatButton(String accessToken) {
        Boolean isShowFloatButton = YoFiSdkImp.instance().getIsShowFloatButton();
        Activity mainActivity = YoFiSdkImp.instance().getMainActivity();
        if (mainActivity == null || !isShowFloatButton.booleanValue()) {
            return;
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("FUNCTION_CODE", 4);
        bundle.putString(Constants.ACCESS_TOKEN, accessToken);
        bundle.putInt(Constants.GRAVITY, 7);
        intent.putExtras(bundle);
        YoFiSDK.execute(mainActivity, intent, new IFlashCallback() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.10
            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int code, String msg) {
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String info) {
            }
        });
    }

    @JavascriptInterface
    public void localPhoneLogin(String msg) {
        try {
            this.callBack = new JSONObject(msg).getString("callback");
            YoFiSdkImp.instance().txOneKeyGetToken(new IFlashCallback() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.11
                @Override // com.yofi.sdk.IFlashCallback
                public void onSuccess(String var1) {
                    YouFeiWebViewActivity.this.sendToWeb(var1);
                }

                @Override // com.yofi.sdk.IFlashCallback
                public void onFailed(int var1, String msg2) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("errorMsg", msg2);
                        final String format = String.format("javascript:%s(%d,%s)", YouFeiWebViewActivity.this.callBack, 1, jSONObject.toString());
                        YouFeiWebViewActivity.this.mWebView.post(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.11.1
                            @Override // java.lang.Runnable
                            public void run() {
                                YouFeiWebViewActivity.this.mWebView.loadUrl(format);
                            }
                        });
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void taptapLogin(String msg) {
        try {
            this.callBack = new JSONObject(msg).getString("callback");
            tapTpaLogin();
        } catch (Exception unused) {
        }
    }

    private void tapTpaLogin() {
        TapTapLogin.loginWithScopes(this, new String[]{"public_profile"}, new TapTapCallback<TapTapAccount>() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.12
            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onSuccess(TapTapAccount tapTapAccount) {
                AccessToken accessToken = tapTapAccount.getAccessToken();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("kid", accessToken.getKid());
                    jSONObject.put("mac_key", accessToken.getMacKey());
                    YouFeiWebViewActivity.this.sendToWeb(jSONObject.toString());
                } catch (Exception unused) {
                }
            }

            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onFail(TapTapException exception) {
                Log.d(YouFeiWebViewActivity.YoFiTAG, exception.toString());
                YoFiSdkImp.instance().getLoginCallback().onLoginFailed(-1);
            }

            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onCancel() {
                Log.d(YouFeiWebViewActivity.YoFiTAG, "onLoginCancel");
            }
        });
    }

    @JavascriptInterface
    public void wxLogin(String msg) {
        try {
            this.callBack = new JSONObject(msg).getString("callback");
            if (YoFiSdkImp.instance().wxApi.isWXAppInstalled()) {
                SendAuth.Req req = new SendAuth.Req();
                req.scope = "snsapi_userinfo";
                YoFiSdkImp.instance().wxApi.sendReq(req);
            } else {
                runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.13
                    @Override // java.lang.Runnable
                    public void run() {
                        ToastUtils.show(YouFeiWebViewActivity.this, "未安装微信!");
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void qqLogin(String msg) {
        try {
            this.callBack = new JSONObject(msg).getString("callback");
            if (YoFiSdkImp.instance().mTencent.isQQInstalled(this)) {
                if (!YoFiSdkImp.instance().mTencent.isSessionValid()) {
                    YoFiSdkImp.instance().mTencent.login(this, "get_simple_userinfo", this.mUiListener);
                }
            } else {
                runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.14
                    @Override // java.lang.Runnable
                    public void run() {
                        ToastUtils.show(YouFeiWebViewActivity.this, "未安装QQ!");
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        try {
            Log.d(YoFiTAG, "onActivityResult----requestCode=" + requestCode + "----resultCode=" + resultCode);
        } catch (Exception e) {
            Log.d(YoFiTAG, "onActivityResult Exception =" + e.toString());
        }
        BaseUiListener baseUiListener = this.mUiListener;
        if (baseUiListener != null) {
            Tencent.onActivityResultData(requestCode, resultCode, data, baseUiListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendToWeb(String code) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", code);
            if (TextUtils.isEmpty(this.callBack)) {
                return;
            }
            final String format = String.format("javascript:%s(%d,%s)", this.callBack, 0, jSONObject.toString());
            this.mWebView.post(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.15
                @Override // java.lang.Runnable
                public void run() {
                    YouFeiWebViewActivity.this.mWebView.loadUrl(format);
                }
            });
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void sdkMaidian(String msg) {
        try {
            JSONObject jSONObject = new JSONObject(msg);
            jSONObject.getString(ActionUtils.METHOD);
            YoFiSdkImp.instance().sdkStage(jSONObject.getInt("param"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void getPasteData(String msg) {
        String clipboardContent = getClipboardContent(this);
        try {
            String string = new JSONObject(msg).getString("callback");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("content", clipboardContent);
            final String format = TextUtils.isEmpty(clipboardContent) ? String.format("javascript:%s(%d)", string, 1) : String.format("javascript:%s(%d,%s)", string, 0, jSONObject.toString());
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.mWebView.post(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.16
                @Override // java.lang.Runnable
                public void run() {
                    YouFeiWebViewActivity.this.mWebView.loadUrl(format);
                }
            });
        } catch (Exception unused) {
        }
    }

    public static String getClipboardContent(Context context) {
        ClipData primaryClip;
        ClipData.Item itemAt;
        CharSequence coerceToText;
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0 || (itemAt = primaryClip.getItemAt(0)) == null || (coerceToText = itemAt.coerceToText(context)) == null) {
            return null;
        }
        return coerceToText.toString();
    }

    /* loaded from: classes2.dex */
    class WeChatBroadcastReceiver extends BroadcastReceiver {
        WeChatBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("code");
            if (stringExtra == null || stringExtra.length() == 0 || YouFeiWebViewActivity.this.codeSet.contains(stringExtra)) {
                return;
            }
            YouFeiWebViewActivity.this.codeSet.add(stringExtra);
            Log.d(YouFeiWebViewActivity.YoFiTAG, "微信登录code " + stringExtra);
            YouFeiWebViewActivity.this.sendToWeb(stringExtra);
        }
    }

    /* loaded from: classes2.dex */
    private class BaseUiListener implements IUiListener {
        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
        }

        private BaseUiListener() {
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object response) {
            try {
                String string = ((JSONObject) response).getString(com.tencent.connect.common.Constants.PARAM_ACCESS_TOKEN);
                Log.d(YouFeiWebViewActivity.YoFiTAG, "QQ登录code " + string);
                YouFeiWebViewActivity.this.sendToWeb(string);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(final UiError e) {
            YouFeiWebViewActivity.this.runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.YouFeiWebViewActivity.BaseUiListener.1
                @Override // java.lang.Runnable
                public void run() {
                    ToastUtils.show(YouFeiWebViewActivity.this, e.errorMessage);
                }
            });
        }
    }
}
