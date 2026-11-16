package com.yofi.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.utils.CommonUtils;
import com.yofi.sdk.utils.ToastUtils;
import com.yofi.sdk.utils.toolbar.StatusBarUtil;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class WebPayView extends Activity {
    private static final String TAG = "WebPayViewTag";
    private Button btnClose;
    private boolean hasUploadToutiao;
    private String orderAmount;
    private String orderId;
    private JSONObject payResult;
    private boolean paySuccess;
    private WebView webView;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String str;
        String str2;
        super.onCreate(savedInstanceState);
        StatusBarUtil.setStatusBarLightMode(this, Color.parseColor("#ededed"));
        setContentView(getResources().getIdentifier("yofi_pay_webview", "layout", getPackageName()));
        findViewById(getResources().getIdentifier("top_view", BreakpointSQLiteKey.ID, getPackageName()));
        this.webView = (WebView) findViewById(getResources().getIdentifier("wv_pay", BreakpointSQLiteKey.ID, getPackageName()));
        this.btnClose = (Button) findViewById(getResources().getIdentifier("btn_close", BreakpointSQLiteKey.ID, getPackageName()));
        this.paySuccess = false;
        this.hasUploadToutiao = false;
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.yofi.sdk.activity.WebPayView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                Log.i(Constants.TAG, "setWebViewClient onPageFinished");
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                String str3;
                try {
                    if (url.startsWith("weixin://") || url.startsWith("alipays://")) {
                        WebPayView.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                        return true;
                    }
                    return super.shouldOverrideUrlLoading(view, url);
                } catch (Exception unused) {
                    if (url.startsWith("weixin://")) {
                        Log.d(Constants.TAG, "weixin not installed");
                        str3 = "请先安装微信客户端";
                    } else if (url.startsWith("alipays://")) {
                        Log.d(Constants.TAG, "alipay not installed");
                        str3 = "请先安装支付宝客户端";
                        ToastUtils.show(WebPayView.this, "请先安装支付宝客户端");
                    } else {
                        str3 = "";
                    }
                    ToastUtils.show(WebPayView.this, str3);
                    return true;
                }
            }
        });
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.yofi.sdk.activity.WebPayView.2
            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView arg0, String arg1, String arg2, JsResult arg3) {
                Log.i("YiFiSdk", "setWebChromeClient onJsConfirm");
                return super.onJsConfirm(arg0, arg1, arg2, arg3);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                Log.i("YiFiSdk", "setWebChromeClient onShowCustomView");
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                Log.i("YiFiSdk", "setWebChromeClient onHideCustomView");
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView arg0, String arg1, String arg2, JsResult arg3) {
                Log.i("YiFiSdk", "setWebChromeClient onJsAlert");
                return super.onJsAlert(null, arg1, arg2, arg3);
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView arg0, int newProgress) {
                super.onProgressChanged(arg0, newProgress);
            }
        });
        WebSettings settings = this.webView.getSettings();
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
        this.webView.addJavascriptInterface(this, "android");
        this.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.activity.WebPayView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View param1View) {
                if (!WebPayView.this.paySuccess) {
                    if (WebPayView.this.payResult != null) {
                        YoFiSdkImp.instance().getPayCallback().onFailed(-1, "");
                    } else {
                        YoFiSdkImp.instance().getPayCallback().onFailed(0, "");
                    }
                } else {
                    YoFiSdkImp.instance().getPayCallback().onSuccess("pay success");
                }
                if (!WebPayView.this.hasUploadToutiao) {
                    Log.d(WebPayView.TAG, "btnClose hasUploadToutiao = " + WebPayView.this.hasUploadToutiao);
                    YoFiSdkImp.instance().getOrderSatusToUpdataToutiao(WebPayView.this.orderId, WebPayView.this.orderAmount);
                }
                WebPayView.this.finish();
            }
        });
        if (getIntent() != null) {
            Bundle extras = getIntent().getExtras();
            this.orderId = extras.getString(Constants.APP_ORDER_ID);
            this.orderAmount = extras.getString(Constants.APP_ORDER_AMOUNT);
            boolean z = extras.getBoolean(Constants.BOTH_H5);
            int i = extras.getInt(Constants.PAY_TYPE);
            if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
                str = Constants.DEBUG_SERVER_URL;
            } else {
                str = Constants.SERVER_URL;
            }
            if (z) {
                str2 = str + "sdk/api/v1/pay/h5/index?orderId=" + this.orderId;
            } else {
                str2 = str + "sdk/api/v1/pay/h5?orderId=" + this.orderId + "&payChannelId=" + i;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("clientId", YoFiSdkImp.instance().getAppId());
            hashMap.put("accessToken", YoFiSdkImp.instance().getAccessToken());
            hashMap.put("yofiDeviceId", YoFiSdkImp.instance().getImei());
            hashMap.put("yofiSystem", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
            hashMap.put("yofiSdkVersion", Constants.CLIENT_VERSION);
            hashMap.put("yofiVersion", CommonUtils.instance().getAppVersionName(YoFiSdkImp.instance().getMainActivity()));
            hashMap.put("yofiChannelId", YoFiSdkImp.instance().getAppChannel() + "");
            hashMap.put("yofiPackageName", YoFiSdkImp.instance().getMainActivity().getPackageName());
            this.webView.loadUrl(str2, hashMap);
        }
        YoFiSdkImp.instance().addActivity(this);
    }

    @JavascriptInterface
    public void payResult(final String str) {
        Log.d(TAG, "payResult = " + str);
        runOnUiThread(new Runnable() { // from class: com.yofi.sdk.activity.WebPayView.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebPayView.this.payResult = new JSONObject(str);
                    if (WebPayView.this.payResult.optInt("code") == 0) {
                        WebPayView.this.paySuccess = true;
                        WebPayView.this.getSharedPreferences("REGISTER_TIME", 0).getString("time", "");
                        JSONObject jSONObject = WebPayView.this.payResult.getJSONObject("data");
                        int floatValue = jSONObject.has("amount") ? (int) Float.valueOf(jSONObject.getString("amount")).floatValue() : 0;
                        Log.d(WebPayView.TAG, "payResult paySuccess 开始调用clientReportOrderToAd");
                        YoFiSdkImp.instance().clientReportOrderToAd(WebPayView.this.orderId, floatValue);
                        WebPayView.this.hasUploadToutiao = true;
                        return;
                    }
                    WebPayView.this.paySuccess = false;
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public static boolean checkAppInstalled(Context paramContext, String paramString) {
        return new Intent("android.intent.action.VIEW", Uri.parse(paramString)).resolveActivity(paramContext.getPackageManager()) != null;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getKeyCode() == 4) {
            if (this.paySuccess) {
                YoFiSdkImp.instance().getPayCallback().onSuccess("pay success");
            } else if (this.payResult != null) {
                YoFiSdkImp.instance().getPayCallback().onFailed(-1, "");
            } else {
                YoFiSdkImp.instance().getPayCallback().onFailed(0, "");
            }
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    public void onResult(int paramInt1, int paramInt2, Intent paramIntent) {
        Log.d(Constants.TAG, "requestCode = " + paramInt1);
    }

    public boolean parseScheme(String paramString) {
        return paramString.contains("platformapi/startapp") || (paramString.contains("platformapi") && paramString.contains("startapp"));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            WebView webView = this.webView;
            if (webView != null) {
                webView.destroy();
                this.webView = null;
            }
        } catch (Exception unused) {
        }
        YoFiSdkImp.instance().removeActivity(this);
    }
}
