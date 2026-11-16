package com.taptap.sdk.moment.legacy.widget;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.ClientCertRequest;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.GeolocationPermissions;
import android.webkit.HttpAuthHandler;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JavaScriptBridgeWebView extends WebView {
    private static final int APP_CACHE_MAX_SIZE = 8388608;
    private static final String BRIDGE_NAME = "webViewJavascriptInterface";
    private static final int EXEC_SCRIPT = 1;
    private static final int HANDLE_MESSAGE = 4;
    private static final int LOAD_URL = 2;
    private static final int LOAD_URL_WITH_HEADERS = 3;
    private String APP_CACHE_DIRNAME;
    private boolean alertboxBlock;
    private JavascriptCloseWindowListener javascriptCloseWindowListener;
    private WebChromeClient mWebChromeClient;
    private WebViewClient mWebViewClient;
    MyHandler mainThreadHandler;
    private Map<String, WebViewJavascriptBridgeHandler> messageHandlers;
    private Map<String, WebViewJavascriptBridgeResponseCallback> responseCallbacks;
    private ArrayList<WebViewJavascriptBridgeMessage> startupMessageQueue;
    private long uniqueId;
    WebChromeClient webChromeClient;
    WebViewClient webViewClient;

    /* loaded from: classes.dex */
    public interface JavascriptCloseWindowListener {
        boolean onClose();
    }

    /* loaded from: classes.dex */
    public interface WebViewJavascriptBridgeHandler {
        void handler(Object obj, WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback);
    }

    /* loaded from: classes.dex */
    public interface WebViewJavascriptBridgeMethodExistCallback {
        void onResult(boolean z);
    }

    /* loaded from: classes.dex */
    public interface WebViewJavascriptBridgeResponseCallback {
        void onResult(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MyHandler extends Handler {
        WeakReference<Context> mContextReference;

        MyHandler(Context context) {
            this.mContextReference = new WeakReference<>(context);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.mContextReference.get() != null) {
                int i = message.what;
                if (i == 1) {
                    JavaScriptBridgeWebView.this._evaluateJavascript((String) message.obj);
                    return;
                }
                if (i == 2) {
                    JavaScriptBridgeWebView.super.loadUrl((String) message.obj);
                    return;
                }
                if (i == 3) {
                    RequestInfo requestInfo = (RequestInfo) message.obj;
                    JavaScriptBridgeWebView.super.loadUrl(requestInfo.url, requestInfo.headers);
                } else {
                    if (i != 4) {
                        return;
                    }
                    JavaScriptBridgeWebView.this.handleMessage((String) message.obj);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private class RequestInfo {
        Map<String, String> headers;
        String url;

        RequestInfo(String str, Map<String, String> map) {
            this.url = str;
            this.headers = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WebViewJavascriptBridgeMessage {
        String callbackId;
        Object data;
        String handlerName;
        Object responseData;
        String responseId;

        private WebViewJavascriptBridgeMessage() {
            this.data = null;
            this.callbackId = null;
            this.handlerName = null;
            this.responseId = null;
            this.responseData = null;
        }
    }

    public JavaScriptBridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mainThreadHandler = null;
        this.javascriptCloseWindowListener = null;
        this.startupMessageQueue = null;
        this.responseCallbacks = null;
        this.messageHandlers = null;
        this.uniqueId = 0L;
        this.alertboxBlock = true;
        this.mWebChromeClient = new WebChromeClient() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onProgressChanged(webView, i);
                } else {
                    super.onProgressChanged(webView, i);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onReceivedTitle(webView, str);
                } else {
                    super.onReceivedTitle(webView, str);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedIcon(WebView webView, Bitmap bitmap) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onReceivedIcon(webView, bitmap);
                } else {
                    super.onReceivedIcon(webView, bitmap);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onReceivedTouchIconUrl(webView, str, z);
                } else {
                    super.onReceivedTouchIconUrl(webView, str, z);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onShowCustomView(view, customViewCallback);
                } else {
                    super.onShowCustomView(view, customViewCallback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onShowCustomView(view, i, customViewCallback);
                } else {
                    super.onShowCustomView(view, i, customViewCallback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onHideCustomView();
                } else {
                    super.onHideCustomView();
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onCreateWindow(webView, z, z2, message);
                }
                return super.onCreateWindow(webView, z, z2, message);
            }

            @Override // android.webkit.WebChromeClient
            public void onRequestFocus(WebView webView) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onRequestFocus(webView);
                } else {
                    super.onRequestFocus(webView);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onCloseWindow(WebView webView) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onCloseWindow(webView);
                } else {
                    super.onCloseWindow(webView);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                if (!JavaScriptBridgeWebView.this.alertboxBlock) {
                    jsResult.confirm();
                }
                if (JavaScriptBridgeWebView.this.webChromeClient != null && JavaScriptBridgeWebView.this.webChromeClient.onJsAlert(webView, str, str2, jsResult)) {
                    return true;
                }
                new AlertDialog.Builder(JavaScriptBridgeWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        if (JavaScriptBridgeWebView.this.alertboxBlock) {
                            jsResult.confirm();
                        }
                    }
                }).create().show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                if (!JavaScriptBridgeWebView.this.alertboxBlock) {
                    jsResult.confirm();
                }
                if (JavaScriptBridgeWebView.this.webChromeClient != null && JavaScriptBridgeWebView.this.webChromeClient.onJsConfirm(webView, str, str2, jsResult)) {
                    return true;
                }
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (JavaScriptBridgeWebView.this.alertboxBlock) {
                            if (i == -1) {
                                jsResult.confirm();
                            } else {
                                jsResult.cancel();
                            }
                        }
                    }
                };
                new AlertDialog.Builder(JavaScriptBridgeWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(R.string.ok, onClickListener).setNegativeButton(R.string.cancel, onClickListener).show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
                if (!JavaScriptBridgeWebView.this.alertboxBlock) {
                    jsPromptResult.confirm();
                }
                if (JavaScriptBridgeWebView.this.webChromeClient != null && JavaScriptBridgeWebView.this.webChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult)) {
                    return true;
                }
                final EditText editText = new EditText(JavaScriptBridgeWebView.this.getContext());
                editText.setText(str3);
                if (str3 != null) {
                    editText.setSelection(str3.length());
                }
                float f = JavaScriptBridgeWebView.this.getContext().getResources().getDisplayMetrics().density;
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (JavaScriptBridgeWebView.this.alertboxBlock) {
                            if (i == -1) {
                                jsPromptResult.confirm(editText.getText().toString());
                            } else {
                                jsPromptResult.cancel();
                            }
                        }
                    }
                };
                new AlertDialog.Builder(JavaScriptBridgeWebView.this.getContext()).setTitle(str2).setView(editText).setCancelable(false).setPositiveButton(R.string.ok, onClickListener).setNegativeButton(R.string.cancel, onClickListener).show();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                int i = (int) (16.0f * f);
                layoutParams.setMargins(i, 0, i, 0);
                layoutParams.gravity = 1;
                editText.setLayoutParams(layoutParams);
                int i2 = (int) (15.0f * f);
                editText.setPadding(i2 - ((int) (f * 5.0f)), i2, i2, i2);
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onJsBeforeUnload(webView, str, str2, jsResult);
                }
                return super.onJsBeforeUnload(webView, str, str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
                } else {
                    super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
                } else {
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsHidePrompt() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onGeolocationPermissionsHidePrompt();
                } else {
                    super.onGeolocationPermissionsHidePrompt();
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onPermissionRequest(PermissionRequest permissionRequest) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onPermissionRequest(permissionRequest);
                } else {
                    super.onPermissionRequest(permissionRequest);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onPermissionRequestCanceled(permissionRequest);
                } else {
                    super.onPermissionRequestCanceled(permissionRequest);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsTimeout() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onJsTimeout();
                }
                return super.onJsTimeout();
            }

            @Override // android.webkit.WebChromeClient
            public void onConsoleMessage(String str, int i, String str2) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onConsoleMessage(str, i, str2);
                } else {
                    super.onConsoleMessage(str, i, str2);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onConsoleMessage(consoleMessage);
                }
                return super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public Bitmap getDefaultVideoPoster() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.getDefaultVideoPoster();
                }
                return super.getDefaultVideoPoster();
            }

            @Override // android.webkit.WebChromeClient
            public View getVideoLoadingProgressView() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.getVideoLoadingProgressView();
                }
                return super.getVideoLoadingProgressView();
            }

            @Override // android.webkit.WebChromeClient
            public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.getVisitedHistory(valueCallback);
                } else {
                    super.getVisitedHistory(valueCallback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onShowFileChooser(webView, valueCallback, fileChooserParams);
                }
                return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
            }
        };
        this.mWebViewClient = new WebViewClient() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.8
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldOverrideUrlLoading(webView, str);
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onPageStarted(webView, str, bitmap);
                } else {
                    super.onPageStarted(webView, str, bitmap);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                synchronized (JavaScriptBridgeWebView.this) {
                    if (JavaScriptBridgeWebView.this.startupMessageQueue != null) {
                        for (int i = 0; i < JavaScriptBridgeWebView.this.startupMessageQueue.size(); i++) {
                            JavaScriptBridgeWebView javaScriptBridgeWebView = JavaScriptBridgeWebView.this;
                            javaScriptBridgeWebView.dispatchMessage((WebViewJavascriptBridgeMessage) javaScriptBridgeWebView.startupMessageQueue.get(i));
                        }
                        JavaScriptBridgeWebView.this.startupMessageQueue = null;
                    }
                }
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onPageFinished(webView, str);
                } else {
                    super.onPageFinished(webView, str);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onLoadResource(webView, str);
                } else {
                    super.onLoadResource(webView, str);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageCommitVisible(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onPageCommitVisible(webView, str);
                } else {
                    super.onPageCommitVisible(webView, str);
                }
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                if (str != null && str.contains("/api/account/v1/profile")) {
                    if (Build.VERSION.SDK_INT < 21) {
                        CookieSyncManager.getInstance().sync();
                    } else {
                        CookieManager.getInstance().flush();
                    }
                }
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldInterceptRequest(webView, str);
                }
                return super.shouldInterceptRequest(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldInterceptRequest(webView, webResourceRequest);
                }
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public void onTooManyRedirects(WebView webView, Message message, Message message2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onTooManyRedirects(webView, message, message2);
                } else {
                    super.onTooManyRedirects(webView, message, message2);
                }
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedError(webView, i, str, str2);
                } else {
                    super.onReceivedError(webView, i, str, str2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
                } else {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                } else {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onFormResubmission(WebView webView, Message message, Message message2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onFormResubmission(webView, message, message2);
                } else {
                    super.onFormResubmission(webView, message, message2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.doUpdateVisitedHistory(webView, str, z);
                } else {
                    super.doUpdateVisitedHistory(webView, str, z);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
                } else {
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
                } else {
                    super.onReceivedClientCertRequest(webView, clientCertRequest);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                } else {
                    super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
                }
                return super.shouldOverrideKeyEvent(webView, keyEvent);
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onUnhandledKeyEvent(webView, keyEvent);
                } else {
                    super.onUnhandledKeyEvent(webView, keyEvent);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onScaleChanged(WebView webView, float f, float f2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onScaleChanged(webView, f, f2);
                } else {
                    super.onScaleChanged(webView, f, f2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
                } else {
                    super.onReceivedLoginRequest(webView, str, str2, str3);
                }
            }
        };
        init();
    }

    public JavaScriptBridgeWebView(Context context) {
        super(context);
        this.mainThreadHandler = null;
        this.javascriptCloseWindowListener = null;
        this.startupMessageQueue = null;
        this.responseCallbacks = null;
        this.messageHandlers = null;
        this.uniqueId = 0L;
        this.alertboxBlock = true;
        this.mWebChromeClient = new WebChromeClient() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onProgressChanged(webView, i);
                } else {
                    super.onProgressChanged(webView, i);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onReceivedTitle(webView, str);
                } else {
                    super.onReceivedTitle(webView, str);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedIcon(WebView webView, Bitmap bitmap) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onReceivedIcon(webView, bitmap);
                } else {
                    super.onReceivedIcon(webView, bitmap);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onReceivedTouchIconUrl(webView, str, z);
                } else {
                    super.onReceivedTouchIconUrl(webView, str, z);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onShowCustomView(view, customViewCallback);
                } else {
                    super.onShowCustomView(view, customViewCallback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onShowCustomView(view, i, customViewCallback);
                } else {
                    super.onShowCustomView(view, i, customViewCallback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onHideCustomView();
                } else {
                    super.onHideCustomView();
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onCreateWindow(webView, z, z2, message);
                }
                return super.onCreateWindow(webView, z, z2, message);
            }

            @Override // android.webkit.WebChromeClient
            public void onRequestFocus(WebView webView) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onRequestFocus(webView);
                } else {
                    super.onRequestFocus(webView);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onCloseWindow(WebView webView) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onCloseWindow(webView);
                } else {
                    super.onCloseWindow(webView);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                if (!JavaScriptBridgeWebView.this.alertboxBlock) {
                    jsResult.confirm();
                }
                if (JavaScriptBridgeWebView.this.webChromeClient != null && JavaScriptBridgeWebView.this.webChromeClient.onJsAlert(webView, str, str2, jsResult)) {
                    return true;
                }
                new AlertDialog.Builder(JavaScriptBridgeWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        if (JavaScriptBridgeWebView.this.alertboxBlock) {
                            jsResult.confirm();
                        }
                    }
                }).create().show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                if (!JavaScriptBridgeWebView.this.alertboxBlock) {
                    jsResult.confirm();
                }
                if (JavaScriptBridgeWebView.this.webChromeClient != null && JavaScriptBridgeWebView.this.webChromeClient.onJsConfirm(webView, str, str2, jsResult)) {
                    return true;
                }
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (JavaScriptBridgeWebView.this.alertboxBlock) {
                            if (i == -1) {
                                jsResult.confirm();
                            } else {
                                jsResult.cancel();
                            }
                        }
                    }
                };
                new AlertDialog.Builder(JavaScriptBridgeWebView.this.getContext()).setMessage(str2).setCancelable(false).setPositiveButton(R.string.ok, onClickListener).setNegativeButton(R.string.cancel, onClickListener).show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
                if (!JavaScriptBridgeWebView.this.alertboxBlock) {
                    jsPromptResult.confirm();
                }
                if (JavaScriptBridgeWebView.this.webChromeClient != null && JavaScriptBridgeWebView.this.webChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult)) {
                    return true;
                }
                final EditText editText = new EditText(JavaScriptBridgeWebView.this.getContext());
                editText.setText(str3);
                if (str3 != null) {
                    editText.setSelection(str3.length());
                }
                float f = JavaScriptBridgeWebView.this.getContext().getResources().getDisplayMetrics().density;
                DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.7.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (JavaScriptBridgeWebView.this.alertboxBlock) {
                            if (i == -1) {
                                jsPromptResult.confirm(editText.getText().toString());
                            } else {
                                jsPromptResult.cancel();
                            }
                        }
                    }
                };
                new AlertDialog.Builder(JavaScriptBridgeWebView.this.getContext()).setTitle(str2).setView(editText).setCancelable(false).setPositiveButton(R.string.ok, onClickListener).setNegativeButton(R.string.cancel, onClickListener).show();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                int i = (int) (16.0f * f);
                layoutParams.setMargins(i, 0, i, 0);
                layoutParams.gravity = 1;
                editText.setLayoutParams(layoutParams);
                int i2 = (int) (15.0f * f);
                editText.setPadding(i2 - ((int) (f * 5.0f)), i2, i2, i2);
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onJsBeforeUnload(webView, str, str2, jsResult);
                }
                return super.onJsBeforeUnload(webView, str, str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
                } else {
                    super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
                } else {
                    super.onGeolocationPermissionsShowPrompt(str, callback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsHidePrompt() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onGeolocationPermissionsHidePrompt();
                } else {
                    super.onGeolocationPermissionsHidePrompt();
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onPermissionRequest(PermissionRequest permissionRequest) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onPermissionRequest(permissionRequest);
                } else {
                    super.onPermissionRequest(permissionRequest);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onPermissionRequestCanceled(permissionRequest);
                } else {
                    super.onPermissionRequestCanceled(permissionRequest);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsTimeout() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onJsTimeout();
                }
                return super.onJsTimeout();
            }

            @Override // android.webkit.WebChromeClient
            public void onConsoleMessage(String str, int i, String str2) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.onConsoleMessage(str, i, str2);
                } else {
                    super.onConsoleMessage(str, i, str2);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onConsoleMessage(consoleMessage);
                }
                return super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public Bitmap getDefaultVideoPoster() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.getDefaultVideoPoster();
                }
                return super.getDefaultVideoPoster();
            }

            @Override // android.webkit.WebChromeClient
            public View getVideoLoadingProgressView() {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.getVideoLoadingProgressView();
                }
                return super.getVideoLoadingProgressView();
            }

            @Override // android.webkit.WebChromeClient
            public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    JavaScriptBridgeWebView.this.webChromeClient.getVisitedHistory(valueCallback);
                } else {
                    super.getVisitedHistory(valueCallback);
                }
            }

            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                if (JavaScriptBridgeWebView.this.webChromeClient != null) {
                    return JavaScriptBridgeWebView.this.webChromeClient.onShowFileChooser(webView, valueCallback, fileChooserParams);
                }
                return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
            }
        };
        this.mWebViewClient = new WebViewClient() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.8
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldOverrideUrlLoading(webView, str);
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onPageStarted(webView, str, bitmap);
                } else {
                    super.onPageStarted(webView, str, bitmap);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                synchronized (JavaScriptBridgeWebView.this) {
                    if (JavaScriptBridgeWebView.this.startupMessageQueue != null) {
                        for (int i = 0; i < JavaScriptBridgeWebView.this.startupMessageQueue.size(); i++) {
                            JavaScriptBridgeWebView javaScriptBridgeWebView = JavaScriptBridgeWebView.this;
                            javaScriptBridgeWebView.dispatchMessage((WebViewJavascriptBridgeMessage) javaScriptBridgeWebView.startupMessageQueue.get(i));
                        }
                        JavaScriptBridgeWebView.this.startupMessageQueue = null;
                    }
                }
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onPageFinished(webView, str);
                } else {
                    super.onPageFinished(webView, str);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onLoadResource(webView, str);
                } else {
                    super.onLoadResource(webView, str);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageCommitVisible(WebView webView, String str) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onPageCommitVisible(webView, str);
                } else {
                    super.onPageCommitVisible(webView, str);
                }
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                if (str != null && str.contains("/api/account/v1/profile")) {
                    if (Build.VERSION.SDK_INT < 21) {
                        CookieSyncManager.getInstance().sync();
                    } else {
                        CookieManager.getInstance().flush();
                    }
                }
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldInterceptRequest(webView, str);
                }
                return super.shouldInterceptRequest(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldInterceptRequest(webView, webResourceRequest);
                }
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public void onTooManyRedirects(WebView webView, Message message, Message message2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onTooManyRedirects(webView, message, message2);
                } else {
                    super.onTooManyRedirects(webView, message, message2);
                }
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedError(webView, i, str, str2);
                } else {
                    super.onReceivedError(webView, i, str, str2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
                } else {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                } else {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onFormResubmission(WebView webView, Message message, Message message2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onFormResubmission(webView, message, message2);
                } else {
                    super.onFormResubmission(webView, message, message2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.doUpdateVisitedHistory(webView, str, z);
                } else {
                    super.doUpdateVisitedHistory(webView, str, z);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
                } else {
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
                } else {
                    super.onReceivedClientCertRequest(webView, clientCertRequest);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                } else {
                    super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    return JavaScriptBridgeWebView.this.webViewClient.shouldOverrideKeyEvent(webView, keyEvent);
                }
                return super.shouldOverrideKeyEvent(webView, keyEvent);
            }

            @Override // android.webkit.WebViewClient
            @Deprecated
            public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onUnhandledKeyEvent(webView, keyEvent);
                } else {
                    super.onUnhandledKeyEvent(webView, keyEvent);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onScaleChanged(WebView webView, float f, float f2) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onScaleChanged(webView, f, f2);
                } else {
                    super.onScaleChanged(webView, f, f2);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
                if (JavaScriptBridgeWebView.this.webViewClient != null) {
                    JavaScriptBridgeWebView.this.webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
                } else {
                    super.onReceivedLoginRequest(webView, str, str2, str3);
                }
            }
        };
        init();
    }

    public void disableJavascriptAlertBoxSafetyTimeout(boolean z) {
        this.alertboxBlock = !z;
    }

    public void callHandler(String str) {
        callHandler(str, null, null);
    }

    public void callHandler(String str, Object obj) {
        callHandler(str, obj, null);
    }

    public void callHandler(String str, Object obj, WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
        sendData(obj, webViewJavascriptBridgeResponseCallback, str);
    }

    public void hasJavascriptMethod(String str, final WebViewJavascriptBridgeMethodExistCallback webViewJavascriptBridgeMethodExistCallback) {
        callHandler("_hasJavascriptMethod", str, new WebViewJavascriptBridgeResponseCallback() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.1
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback
            public void onResult(Object obj) {
                webViewJavascriptBridgeMethodExistCallback.onResult(((Boolean) obj).booleanValue());
            }
        });
    }

    public List<String> getRegisteredHandlerNameList() {
        try {
            return new ArrayList(this.messageHandlers.keySet());
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public void setJavascriptCloseWindowListener(JavascriptCloseWindowListener javascriptCloseWindowListener) {
        this.javascriptCloseWindowListener = javascriptCloseWindowListener;
    }

    public void registerHandler(String str, WebViewJavascriptBridgeHandler webViewJavascriptBridgeHandler) {
        if (str == null || str.length() == 0 || webViewJavascriptBridgeHandler == null) {
            return;
        }
        this.messageHandlers.put(str, webViewJavascriptBridgeHandler);
    }

    private void sendData(Object obj, WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback, String str) {
        if (obj == null && (str == null || str.length() == 0)) {
            return;
        }
        WebViewJavascriptBridgeMessage webViewJavascriptBridgeMessage = new WebViewJavascriptBridgeMessage();
        if (obj != null) {
            webViewJavascriptBridgeMessage.data = obj;
        }
        if (webViewJavascriptBridgeResponseCallback != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("java_cb_");
            long j = this.uniqueId + 1;
            this.uniqueId = j;
            sb.append(j);
            String sb2 = sb.toString();
            this.responseCallbacks.put(sb2, webViewJavascriptBridgeResponseCallback);
            webViewJavascriptBridgeMessage.callbackId = sb2;
        }
        if (str != null) {
            webViewJavascriptBridgeMessage.handlerName = str;
        }
        queueMessage(webViewJavascriptBridgeMessage);
    }

    private synchronized void queueMessage(WebViewJavascriptBridgeMessage webViewJavascriptBridgeMessage) {
        ArrayList<WebViewJavascriptBridgeMessage> arrayList = this.startupMessageQueue;
        if (arrayList != null) {
            arrayList.add(webViewJavascriptBridgeMessage);
        } else {
            dispatchMessage(webViewJavascriptBridgeMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchMessage(WebViewJavascriptBridgeMessage webViewJavascriptBridgeMessage) {
        evaluateJavascript(String.format("WebViewJavascriptBridge._handleMessageFromJava(%s)", message2JSONObject(webViewJavascriptBridgeMessage).toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(String str) {
        try {
            WebViewJavascriptBridgeMessage JSONObject2WebViewJavascriptBridgeMessage = JSONObject2WebViewJavascriptBridgeMessage(new JSONObject(str));
            if (JSONObject2WebViewJavascriptBridgeMessage.responseId != null) {
                WebViewJavascriptBridgeResponseCallback remove = this.responseCallbacks.remove(JSONObject2WebViewJavascriptBridgeMessage.responseId);
                if (remove != null) {
                    remove.onResult(JSONObject2WebViewJavascriptBridgeMessage.responseData);
                    return;
                }
                return;
            }
            WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback = null;
            if (JSONObject2WebViewJavascriptBridgeMessage.callbackId != null) {
                final String str2 = JSONObject2WebViewJavascriptBridgeMessage.callbackId;
                webViewJavascriptBridgeResponseCallback = new WebViewJavascriptBridgeResponseCallback() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.2
                    @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback
                    public void onResult(Object obj) {
                        WebViewJavascriptBridgeMessage webViewJavascriptBridgeMessage = new WebViewJavascriptBridgeMessage();
                        webViewJavascriptBridgeMessage.responseId = str2;
                        webViewJavascriptBridgeMessage.responseData = obj;
                        JavaScriptBridgeWebView.this.dispatchMessage(webViewJavascriptBridgeMessage);
                    }
                };
            }
            WebViewJavascriptBridgeHandler webViewJavascriptBridgeHandler = this.messageHandlers.get(JSONObject2WebViewJavascriptBridgeMessage.handlerName);
            if (webViewJavascriptBridgeHandler != null) {
                webViewJavascriptBridgeHandler.handler(JSONObject2WebViewJavascriptBridgeMessage.data, webViewJavascriptBridgeResponseCallback);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    private JSONObject message2JSONObject(WebViewJavascriptBridgeMessage webViewJavascriptBridgeMessage) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (webViewJavascriptBridgeMessage.callbackId != null) {
                jSONObject.put("callbackId", webViewJavascriptBridgeMessage.callbackId);
            }
            if (webViewJavascriptBridgeMessage.data != null) {
                jSONObject.put("data", webViewJavascriptBridgeMessage.data);
            }
            if (webViewJavascriptBridgeMessage.handlerName != null) {
                jSONObject.put("handlerName", webViewJavascriptBridgeMessage.handlerName);
            }
            if (webViewJavascriptBridgeMessage.responseId != null) {
                jSONObject.put("responseId", webViewJavascriptBridgeMessage.responseId);
            }
            if (webViewJavascriptBridgeMessage.responseData != null) {
                jSONObject.put("responseData", webViewJavascriptBridgeMessage.responseData);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private WebViewJavascriptBridgeMessage JSONObject2WebViewJavascriptBridgeMessage(JSONObject jSONObject) {
        WebViewJavascriptBridgeMessage webViewJavascriptBridgeMessage = new WebViewJavascriptBridgeMessage();
        try {
            if (jSONObject.has("callbackId")) {
                webViewJavascriptBridgeMessage.callbackId = jSONObject.getString("callbackId");
            }
            if (jSONObject.has("data")) {
                webViewJavascriptBridgeMessage.data = jSONObject.get("data");
            }
            if (jSONObject.has("handlerName")) {
                webViewJavascriptBridgeMessage.handlerName = jSONObject.getString("handlerName");
            }
            if (jSONObject.has("responseId")) {
                webViewJavascriptBridgeMessage.responseId = jSONObject.getString("responseId");
            }
            if (jSONObject.has("responseData")) {
                webViewJavascriptBridgeMessage.responseData = jSONObject.get("responseData");
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return webViewJavascriptBridgeMessage;
    }

    void init() {
        this.mainThreadHandler = new MyHandler(getContext());
        this.APP_CACHE_DIRNAME = getContext().getFilesDir().getAbsolutePath() + "/TapTapForumWebCache";
        this.responseCallbacks = new HashMap();
        this.messageHandlers = new HashMap();
        this.startupMessageQueue = new ArrayList<>();
        WebSettings settings = getSettings();
        settings.setDomStorageEnabled(true);
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
            settings.setMixedContentMode(0);
        }
        Method method = null;
        try {
            method = settings.getClass().getMethod("setAllowUniversalAccessFromFileURLs", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        if (method != null) {
            try {
                method.invoke(settings, true);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowFileAccess(false);
        settings.setCacheMode(-1);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setTextZoom(100);
        isHardwareAccelerated();
        removeJavascriptInterface("searchBoxJavaBridge_");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        super.setWebChromeClient(this.mWebChromeClient);
        super.setWebViewClient(this.mWebViewClient);
        if (Build.VERSION.SDK_INT < 21) {
            CookieSyncManager.createInstance(getContext());
        }
        registerHandler("_hasNativeMethod", new WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.3
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                webViewJavascriptBridgeResponseCallback.onResult(Boolean.valueOf(JavaScriptBridgeWebView.this.messageHandlers.get(obj) != null));
            }
        });
        registerHandler("_closePage", new WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.4
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (JavaScriptBridgeWebView.this.javascriptCloseWindowListener == null || JavaScriptBridgeWebView.this.javascriptCloseWindowListener.onClose()) {
                    ((Activity) JavaScriptBridgeWebView.this.getContext()).onBackPressed();
                }
            }
        });
        registerHandler("_disableJavascriptAlertBoxSafetyTimeout", new WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.5
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                JavaScriptBridgeWebView.this.disableJavascriptAlertBoxSafetyTimeout(((Boolean) obj).booleanValue());
            }
        });
        super.addJavascriptInterface(new Object() { // from class: com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.6
            @JavascriptInterface
            public void notice(String str) {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = str;
                JavaScriptBridgeWebView.this.mainThreadHandler.sendMessage(obtain);
            }
        }, BRIDGE_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _evaluateJavascript(String str) {
        super.evaluateJavascript(str, null);
    }

    public void evaluateJavascript(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            _evaluateJavascript(str);
            return;
        }
        Message message = new Message();
        message.what = 1;
        message.obj = str;
        this.mainThreadHandler.sendMessage(message);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        Message message = new Message();
        message.what = 2;
        message.obj = str;
        this.mainThreadHandler.sendMessage(message);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        Message message = new Message();
        message.what = 3;
        message.obj = new RequestInfo(str, map);
        this.mainThreadHandler.sendMessage(message);
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.webChromeClient = webChromeClient;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        this.webViewClient = webViewClient;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        stopLoading();
        clearMatches();
        clearHistory();
        clearDisappearingChildren();
        clearAnimation();
        removeAllViews();
        super.destroy();
    }
}
