package com.yofi.sdk.widget;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.qq.gdt.action.ActionUtils;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.eventreword.EventReword;
import com.yofi.sdk.imp.middle.manager.LittleApiImp;
import com.yofi.sdk.interfaces.OnAppStatusListener;
import com.yofi.sdk.utils.CommonUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class HideWebView extends RelativeLayout implements OnAppStatusListener {
    private static final String TAG = "HideWebViewTag";
    WindowManager.LayoutParams floatLayoutParams;
    private Context mContext;
    int mScreenHeight;
    int mScreenWidth;
    private String mUrl;
    private WebView mWebView;
    WindowManager mWindowManager;

    public HideWebView(Context context, String url) {
        super(context);
        this.mScreenWidth = 10;
        this.mScreenHeight = 10;
        this.mContext = context;
        this.mScreenWidth = context.getResources().getDisplayMetrics().widthPixels;
        this.mScreenHeight = context.getResources().getDisplayMetrics().heightPixels;
        this.mWindowManager = (WindowManager) getContext().getSystemService("window");
        this.mUrl = url;
        WebView webView = new WebView(context);
        this.mWebView = webView;
        configureWebView(webView);
    }

    private void configureWebView(WebView webView) {
        WebSettings settings = webView.getSettings();
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
        settings.setCacheMode(2);
        webView.addJavascriptInterface(this, "SDKBridge");
        webView.setWebViewClient(new WebViewClient() { // from class: com.yofi.sdk.widget.HideWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                Log.i(HideWebView.TAG, "setWebViewClient onPageFinished url =" + url);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                Log.d(HideWebView.TAG, "shouldOverrideUrlLoading url =" + url);
                return super.shouldOverrideUrlLoading(view, url);
            }
        });
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.yofi.sdk.widget.HideWebView.2
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return super.onConsoleMessage(consoleMessage);
            }
        });
    }

    public void show() {
        try {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 1000, 552, -3);
            this.floatLayoutParams = layoutParams;
            layoutParams.gravity = 51;
            this.floatLayoutParams.x = 0;
            this.floatLayoutParams.y = 0;
            this.floatLayoutParams.width = 0;
            this.floatLayoutParams.height = 0;
            this.mWindowManager.addView(this, this.floatLayoutParams);
            addView(this.mWebView, new RelativeLayout.LayoutParams(-1, -1));
            this.mWebView.setVisibility(8);
            this.mWebView.loadUrl(this.mUrl);
        } catch (Exception e) {
            Log.d(TAG, "show: " + e.toString());
        }
    }

    public void destroy() {
        WebView webView = this.mWebView;
        if (webView != null) {
            removeView(webView);
            this.mWebView.destroy();
            this.mWebView = null;
        }
    }

    @JavascriptInterface
    public void getHeader(String msg) {
        String uniqueID = CommonUtils.instance().getUniqueID(this.mContext);
        String md5 = CommonUtils.instance().md5(uniqueID);
        String uniqueID2 = CommonUtils.instance().getUniqueID(this.mContext);
        String mac = CommonUtils.instance().getMac(this.mContext);
        YoFiSdkImp.instance().setLoadHideWebViewSuccess(true);
        try {
            String string = new JSONObject(msg).getString("callback");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("clientId", YoFiSdkImp.instance().getAppId());
            jSONObject.put("appKey", YoFiSdkImp.instance().getAppKey());
            jSONObject.put("isShowGuest", YoFiSdkImp.instance().isShowGuest());
            jSONObject.put("isShowTaptap", YoFiSdkImp.instance().isShowTapTap());
            jSONObject.put("isShowThirdLogin", YoFiSdkImp.instance().isShowThirdLogin());
            jSONObject.put("yofiSystem", "1");
            jSONObject.put("yofiSystemVersion", Build.VERSION.RELEASE);
            jSONObject.put("yofiSdkVersion", Constants.CLIENT_VERSION);
            jSONObject.put("yofiVersion", CommonUtils.instance().getAppVersionName(this.mContext));
            jSONObject.put("yofiDeviceId", uniqueID2);
            jSONObject.put("yofiChannelId", YoFiSdkImp.instance().getAppChannel());
            jSONObject.put("yofiOaid", YoFiSdkImp.instance().getOaid());
            jSONObject.put("yofiMac", mac);
            jSONObject.put("yofiAndroidId", uniqueID2);
            jSONObject.put("yofiPackageName", this.mContext.getPackageName());
            jSONObject.put("yofiLogout", YoFiSdkImp.instance().isLoginOut());
            jSONObject.put("loginWithoutAccount", YoFiSdkImp.instance().getLoginWithoutAccount());
            jSONObject.put("guestLoginName", uniqueID);
            jSONObject.put("guestLoginPassword", md5);
            jSONObject.put("guestLoginType", 8);
            final String format = String.format("javascript:%s(%d,%s)", string, 0, jSONObject.toString());
            Log.d(TAG, "getHeader: ====" + format);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.mWebView.post(new Runnable() { // from class: com.yofi.sdk.widget.HideWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    HideWebView.this.mWebView.loadUrl(format);
                }
            });
        } catch (Exception unused) {
        }
    }

    @JavascriptInterface
    public void touTiaoDataReport(String msg) {
        Log.d(TAG, "touTiaoDataReport: " + msg);
        try {
            JSONObject jSONObject = new JSONObject(msg);
            String string = jSONObject.getString(ActionUtils.METHOD);
            JSONObject jSONObject2 = jSONObject.getJSONObject("param");
            if (string.equals("touTiaoDataReport")) {
                reportData(1, "touTiaoDataReport", jSONObject2.getString("amount"), jSONObject2.getString("orderId"));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void tencentDataReport(String msg) {
        Log.d(TAG, "tencentDataReport: " + msg);
        try {
            JSONObject jSONObject = new JSONObject(msg);
            String string = jSONObject.getString(ActionUtils.METHOD);
            JSONObject jSONObject2 = jSONObject.getJSONObject("param");
            if (string.equals("tencentDataReport")) {
                reportData(2, "tencentDataReport", jSONObject2.getString("amount"), jSONObject2.getString("orderId"));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void reportData(int reportType, String methodName, String amount, String orderId) {
        int floatValue = (int) Float.valueOf(amount).floatValue();
        if (reportType == 1) {
            Bundle bundle = new Bundle();
            bundle.putInt("amount", floatValue);
            bundle.putInt("reportType", 1);
            EventReword.getInstance().eventRecord(Constants.YoFiEventName.Purchase, bundle);
            LittleApiImp.clientLog("支付成功 上报头条  |orderId：" + orderId + " |amount: " + amount, null);
            Log.d(TAG, "调用" + methodName + "上报头条 |orderId：" + orderId + " |amount: " + amount);
            return;
        }
        if (reportType == 2) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("amount", floatValue);
            bundle2.putInt("reportType", 2);
            EventReword.getInstance().eventRecord(Constants.YoFiEventName.Purchase, bundle2);
            LittleApiImp.clientLog("支付成功 上报腾讯广点通  |orderId：" + orderId + " |amount: " + amount, null);
            Log.d(TAG, "调用" + methodName + "上报腾讯广点通 |orderId：" + orderId + " |amount: " + amount);
        }
    }

    public void paySuccess() {
        final String format = String.format("window.%s()", "paySuccess");
        Log.d(TAG, "paySuccess: ====" + format);
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.yofi.sdk.widget.HideWebView.4
                @Override // java.lang.Runnable
                public void run() {
                    HideWebView.this.mWebView.evaluateJavascript(format, null);
                }
            });
        }
    }

    @Override // com.yofi.sdk.interfaces.OnAppStatusListener
    public void onBecameForeground() {
        final String format = String.format("window.%s()", "onAppForeground");
        Log.d(TAG, "onAppForeground: ====" + format);
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.post(new Runnable() { // from class: com.yofi.sdk.widget.HideWebView.5
                @Override // java.lang.Runnable
                public void run() {
                    HideWebView.this.mWebView.evaluateJavascript(format, null);
                }
            });
        }
    }

    @Override // com.yofi.sdk.interfaces.OnAppStatusListener
    public void onBecameBackground() {
        Log.d(TAG, "onAppBackground");
    }
}
