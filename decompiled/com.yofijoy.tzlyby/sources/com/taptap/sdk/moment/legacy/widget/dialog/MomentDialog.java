package com.taptap.sdk.moment.legacy.widget.dialog;

import android.app.Activity;
import android.app.DialogFragment;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.core.app.NotificationCompat;
import com.juhe.juhesdk.middle.common.UrlHttpUtil;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.kit.internal.http.TapErrorConstants;
import com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.moment.R;
import com.taptap.sdk.moment.TapMomentInternal;
import com.taptap.sdk.moment.constant.Constant;
import com.taptap.sdk.moment.legacy.utils.ActivityUtils;
import com.taptap.sdk.moment.legacy.utils.DeviceUtils;
import com.taptap.sdk.moment.legacy.utils.LongClickHandler;
import com.taptap.sdk.moment.legacy.utils.ScreenHelper;
import com.taptap.sdk.moment.legacy.utils.SimpleLocalBroadcastManager;
import com.taptap.sdk.moment.legacy.utils.Utils;
import com.taptap.sdk.moment.legacy.utils.notch.NotchTools;
import com.taptap.sdk.moment.legacy.utils.permission.PermissionConfig;
import com.taptap.sdk.moment.legacy.utils.permission.RequestPermissionCallback;
import com.taptap.sdk.moment.legacy.utils.permission.TdsPermission;
import com.taptap.sdk.moment.legacy.widget.AndroidBug5497Workaround;
import com.taptap.sdk.moment.legacy.widget.FilePicker;
import com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView;
import com.taptap.sdk.moment.legacy.widget.TTMGifView;
import com.taptap.sdk.moment.legacy.widget.dialog.Alert;
import com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog;
import com.taptap.sdk.moment.wrapper.AccessTokenUtils;
import com.taptap.sdk.moment.wrapper.MomentHostUtils;
import com.taptap.sdk.update.download.DownloadTask;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.taptap.sdk.update.extension.BizExtKt;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MomentDialog extends DialogFragment {
    private static final int CLEAR_CACHE = 32;
    public static final int FILE_CHOOSER_RESULT_CODE = 10000;
    private static final int HIDE_CLOSE = 16;
    private static final int HIDE_LOADING = 20;
    private static final int ON_LONG_CLICK_SAVE_IMAGE = 1;
    private static final int OPEN_WEB_VIEW_FRAGMENT_REQUEST_CODE = 10001;
    private static final int SHOW_CLOSE = 17;
    private static final int SHOW_LOADING = 21;
    private Runnable afterResultRunnable;
    private String baseUrl;
    private JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback callback;
    private ImageButton close;
    private FilePicker filePicker;
    private ForumHandler handler;
    private TTMGifView loading;
    private Locale locale;
    private JavaScriptBridgeWebView mWebView;
    private NetworkErrorDialog networkErrorDialog;
    private NetworkReceiver networkReceiver;
    private FrameLayout root;
    private ValueCallback<Uri> uploadMessage;
    private ValueCallback<Uri[]> uploadMessageAboveL;
    String urlExtra;
    private String clientId = "";
    private boolean isNotch = false;
    private boolean isRequestFile = false;

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.clientId = arguments.getString("client_id");
            if (arguments.getSerializable("locale") != null) {
                this.locale = (Locale) arguments.getSerializable("locale");
            }
            this.baseUrl = MomentHostUtils.getMomentUrl();
            this.urlExtra = arguments.getString("url_extra");
            String string = arguments.getString("data");
            if (string != null) {
                this.filePicker = new FilePicker(string);
            }
        }
        Activity activity = getActivity();
        if (activity == null) {
            return null;
        }
        if (this.networkReceiver == null) {
            this.networkReceiver = new NetworkReceiver();
        }
        activity.registerReceiver(this.networkReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        return layoutInflater.inflate(Utils.getLayoutId(getActivity(), "ttos_moment_fragment_moment"), viewGroup, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        this.handler = new ForumHandler(this);
        this.mWebView = (JavaScriptBridgeWebView) view.findViewById(Utils.getViewId(getActivity(), "webview"));
        this.root = (FrameLayout) view.findViewById(Utils.getViewId(getActivity(), "root"));
        this.close = (ImageButton) view.findViewById(Utils.getViewId(getActivity(), "close"));
        this.loading = (TTMGifView) view.findViewById(Utils.getViewId(getActivity(), "loading"));
        this.close.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MomentDialog.this.dismiss();
            }
        });
        AndroidBug5497Workaround.assistActivity(this.root);
        initWebView();
        this.mWebView.getSettings().setUserAgentString("TapMomentAndroid/4.5.4" + this.mWebView.getSettings().getUserAgentString());
        View decorView = activity.getWindow().getDecorView();
        activity.getWindow().setSoftInputMode(16);
        decorView.post(new Runnable() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.2
            @Override // java.lang.Runnable
            public void run() {
                if (MomentDialog.this.isAdded()) {
                    MomentDialog.this.isNotch = true;
                    if (MomentDialog.this.getDialog() != null && MomentDialog.this.getDialog().getWindow() != null) {
                        MomentDialog.this.isNotch = NotchTools.getFullScreenTools().isNotchScreen(MomentDialog.this.getDialog().getWindow());
                    }
                    MomentDialog momentDialog = MomentDialog.this;
                    momentDialog.handleLayout(momentDialog.getOrientation());
                    JavaScriptBridgeWebView javaScriptBridgeWebView = MomentDialog.this.mWebView;
                    StringBuilder sb = new StringBuilder();
                    sb.append(String.format(MomentDialog.this.baseUrl + "/%s/", MomentDialog.this.clientId));
                    sb.append(MomentDialog.this.urlExtra);
                    javaScriptBridgeWebView.loadUrl(sb.toString());
                    Activity activity2 = MomentDialog.this.getActivity();
                    if (Utils.getNetworkState(activity2) <= 0) {
                        MomentDialog.this.networkErrorDialog = new NetworkErrorDialog(activity2, MomentDialog.this.isNotch, new NetworkErrorDialog.RefreshCallback() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.2.1
                            @Override // com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog.RefreshCallback
                            public void onRefresh() {
                                if (MomentDialog.this.mWebView != null) {
                                    MomentDialog.this.mWebView.reload();
                                }
                            }

                            @Override // com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog.RefreshCallback
                            public void onClose() {
                                MomentDialog.this.dismiss();
                            }
                        });
                        MomentDialog.this.networkErrorDialog.show();
                    }
                }
            }
        });
        this.loading.setMovieResource(Utils.getDrawable(activity, "ttos_moment_loading"));
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        setFullScreen();
        super.onStart();
        if (getDialog() != null) {
            getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.3
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    if (i == 4 && keyEvent.getAction() == 1) {
                        return MomentDialog.this.back();
                    }
                    return false;
                }
            });
        }
        JavaScriptBridgeWebView javaScriptBridgeWebView = this.mWebView;
        if (javaScriptBridgeWebView != null) {
            javaScriptBridgeWebView.callHandler("enterForeground");
        }
    }

    @Override // android.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        Log.d("moment", "onViewStateRestored data=" + bundle);
        if (bundle != null) {
            dismiss();
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStop() {
        super.onStop();
        JavaScriptBridgeWebView javaScriptBridgeWebView = this.mWebView;
        if (javaScriptBridgeWebView != null) {
            javaScriptBridgeWebView.callHandler("enterBackground");
        }
    }

    public boolean back() {
        JavaScriptBridgeWebView javaScriptBridgeWebView = this.mWebView;
        if (javaScriptBridgeWebView == null || !javaScriptBridgeWebView.canGoBack()) {
            return false;
        }
        this.mWebView.goBack();
        return true;
    }

    private void initWebView() {
        this.mWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.mWebView.registerHandler("supportHandlers", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.4
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<String> it = MomentDialog.this.mWebView.getRegisteredHandlerNameList().iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next());
                    }
                    jSONObject.put("name", jSONArray);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                webViewJavascriptBridgeResponseCallback.onResult(jSONObject);
            }
        });
        this.mWebView.registerHandler("loadComplete", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.5
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.handler != null) {
                    MomentDialog.this.handler.sendMessage(MomentDialog.this.handler.obtainMessage(20));
                }
            }
        });
        this.mWebView.registerHandler("showCloseButton", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.6
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.handler != null) {
                    MomentDialog.this.handler.sendMessage(MomentDialog.this.handler.obtainMessage(17));
                }
            }
        });
        this.mWebView.registerHandler("hideCloseButton", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.7
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (!(obj instanceof JSONObject) || MomentDialog.this.handler == null) {
                    return;
                }
                try {
                    final int i = ((JSONObject) obj).getInt("duration");
                    MomentDialog.this.handler.postDelayed(new Runnable() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MomentDialog.this.handler.removeMessages(17);
                            MomentDialog.this.handler.sendMessage(MomentDialog.this.handler.obtainMessage(16));
                            MomentDialog.this.handler.sendMessageDelayed(MomentDialog.this.handler.obtainMessage(17), i);
                        }
                    }, 0L);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
        this.mWebView.registerHandler("openBrowser", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.8
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                try {
                    String str = (String) obj;
                    if (str.length() <= 0 || !str.contains("tapitk://browser/external")) {
                        return;
                    }
                    String decodeFromBase64 = Utils.decodeFromBase64(str.replace("tapitk://browser/external?to=", ""));
                    if (decodeFromBase64.length() > 0) {
                        MomentDialog.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decodeFromBase64)));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        this.mWebView.registerHandler("openUrl", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.9
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                try {
                    JSONObject jSONObject = (JSONObject) obj;
                    Uri parse = Uri.parse(jSONObject.getString("url"));
                    LinkedList linkedList = new LinkedList();
                    JSONArray optJSONArray = jSONObject.optJSONArray("allowProtocols");
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            linkedList.add(optJSONArray.optString(i));
                        }
                    }
                    LinkedList linkedList2 = new LinkedList();
                    JSONArray optJSONArray2 = jSONObject.optJSONArray("allowUrls");
                    if (optJSONArray2 != null) {
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            try {
                                linkedList2.add(Pattern.compile(optJSONArray2.optString(i2)));
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                    }
                    InnerBrowserDialog innerBrowserDialog = new InnerBrowserDialog();
                    innerBrowserDialog.setAllowProtocols(linkedList);
                    innerBrowserDialog.setAllowUrls(linkedList2);
                    innerBrowserDialog.loadUrl(MomentDialog.this.getActivity(), parse);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        });
        this.mWebView.registerHandler("getDeviceInfo", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.10
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.deviceInfo2Json());
            }
        });
        this.mWebView.registerHandler("clearCache", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.11
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.handler != null) {
                    MomentDialog.this.handler.sendMessage(MomentDialog.this.handler.obtainMessage(32));
                }
            }
        });
        this.mWebView.registerHandler("getAccessToken", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.12
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                AccessTokenUtils.getAccessToken(webViewJavascriptBridgeResponseCallback);
            }
        });
        this.mWebView.registerHandler("bindTapAccount", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.13
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.handler != null) {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.errResponse2Json("no xdsdk"));
                }
            }
        });
        this.mWebView.registerHandler("getPrivateUserInfo", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.14
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.handler != null) {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.errResponse2Json("no xdsdk"));
                }
            }
        });
        this.mWebView.registerHandler("getMomentConfig", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.15
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.filePicker != null) {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.filePicker.getData());
                }
            }
        });
        this.mWebView.registerHandler("getFileData", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.16
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.filePicker != null) {
                    JSONObject jSONObject = (JSONObject) obj;
                    try {
                        String fileData = MomentDialog.this.filePicker.getFileData(jSONObject.getString(BreakpointSQLiteKey.ID), jSONObject.optInt("offset", 0), jSONObject.optInt("limit", 10000));
                        if (fileData == null) {
                            fileData = "";
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("data", fileData);
                        webViewJavascriptBridgeResponseCallback.onResult(jSONObject2);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        this.mWebView.registerHandler("closeMoment", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.17
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                JSONObject jSONObject = (JSONObject) obj;
                int optInt = jSONObject.optInt(WebLoginFragment.QUERY_KEY_ID, 0);
                String optString = jSONObject.optString("message", "");
                String str = optInt == 0 ? Constant.TAP_MOMENT_PUBLISH_CANCEL_ACTION : optInt == 2 ? Constant.TAP_MOMENT_PUBLISH_FAIL_ACTION : Constant.TAP_MOMENT_PUBLISH_SUCCESS_ACTION;
                if (MomentDialog.this.getActivity() != null) {
                    new Intent(str).putExtra("message", optString);
                    SimpleLocalBroadcastManager.getInstance().sendBroadcast(str);
                }
                MomentDialog.this.dismiss();
            }
        });
        this.mWebView.registerHandler("sendCertification", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.18
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
            }
        });
        this.mWebView.registerHandler("longClick", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.19
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (obj instanceof JSONObject) {
                    LongClickHandler.newInstance((JSONObject) obj, new LongClickHandler.ClickEventLifecycleCallback() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.19.1
                        @Override // com.taptap.sdk.moment.legacy.utils.LongClickHandler.ClickEventLifecycleCallback
                        public void onFinally(boolean z) {
                            String localizedString;
                            JSONObject jSONObject = new JSONObject();
                            try {
                                if (z) {
                                    localizedString = TapLocalizeUtil.getLocalizedString(R.string.moment_save_success);
                                } else {
                                    localizedString = TapLocalizeUtil.getLocalizedString(R.string.moment_save_fail);
                                }
                                jSONObject.put("message", localizedString);
                                jSONObject.put("duration", DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS);
                                jSONObject.put("type", z ? "success" : "fail");
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                            if (MomentDialog.this.mWebView != null) {
                                MomentDialog.this.mWebView.callHandler("toast", jSONObject);
                            }
                        }
                    }).handler(MomentDialog.this.getActivity());
                }
            }
        });
        this.mWebView.registerHandler("alert", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.20
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, final JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) obj;
                    Alert.newInstance(jSONObject.optString("title"), jSONObject.optString("content"), jSONObject.optString("positive"), jSONObject.optString("negative"), jSONObject.optBoolean("cancelable"), new Alert.ClickStub() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.20.1
                        @Override // com.taptap.sdk.moment.legacy.widget.dialog.Alert.ClickStub, com.taptap.sdk.moment.legacy.widget.dialog.Alert.OnClickListener
                        public void onNegative() {
                            super.onNegative();
                            try {
                                webViewJavascriptBridgeResponseCallback.onResult(new JSONObject().put("negative", "onNegative"));
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }

                        @Override // com.taptap.sdk.moment.legacy.widget.dialog.Alert.ClickStub, com.taptap.sdk.moment.legacy.widget.dialog.Alert.OnClickListener
                        public void onPositive() {
                            super.onPositive();
                            try {
                                webViewJavascriptBridgeResponseCallback.onResult(new JSONObject().put("positive", "onPositive"));
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }).show(MomentDialog.this.getActivity().getFragmentManager(), Alert.TAG);
                }
            }
        });
        this.mWebView.registerHandler("loginByTap", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.21
            private final long DELAY_TIME = 500;
            private long lastClickTime;

            private boolean isFastDoubleClick() {
                long currentTimeMillis = System.currentTimeMillis();
                long j = currentTimeMillis - this.lastClickTime;
                this.lastClickTime = currentTimeMillis;
                return 0 < j && j < 500;
            }

            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (isFastDoubleClick()) {
                    return;
                }
                AccessTokenUtils.loginByTap(MomentDialog.this.getActivity(), webViewJavascriptBridgeResponseCallback);
            }
        });
        this.mWebView.registerHandler("getTapToken", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.22
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.handler != null) {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.customErrResponse("no xdsdk", "no xdsdk"));
                } else {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.customErrResponse("failed", "handler empty"));
                }
            }
        });
        this.mWebView.registerHandler("checkBindTap", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.23
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.checkHandlerNotNull(webViewJavascriptBridgeResponseCallback)) {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.customErrResponse("failed", "accessToken format error"));
                }
            }
        });
        this.mWebView.registerHandler("bindTapTap", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.24
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                if (MomentDialog.this.checkHandlerNotNull(webViewJavascriptBridgeResponseCallback)) {
                    webViewJavascriptBridgeResponseCallback.onResult(MomentDialog.this.customErrResponse("failed", "accessToken format error"));
                }
            }
        });
        this.mWebView.registerHandler("reportError", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.25
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                AccessTokenUtils.authDenied(obj.toString(), TapErrorConstants.ERROR_ACCESS_DENIED);
            }
        });
        this.mWebView.registerHandler("sendSceneEventCallback", new JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.26
            @Override // com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView.WebViewJavascriptBridgeHandler
            public void handler(Object obj, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
                HashMap hashMap = new HashMap();
                hashMap.put(NotificationCompat.CATEGORY_EVENT, obj.toString());
                SimpleLocalBroadcastManager.getInstance().sendBroadcast(Constant.TAP_MOMENT_SCENE_EVENT_ACTION, hashMap);
            }
        });
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.27
            @Override // android.webkit.WebViewClient
            public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
                super.doUpdateVisitedHistory(webView, str, z);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                if (Build.VERSION.SDK_INT == 21) {
                    if (MomentDialog.this.filePicker != null) {
                        WebResourceResponse generateWebResponse = MomentDialog.this.filePicker.generateWebResponse(webResourceRequest.getUrl().toString());
                        if (generateWebResponse != null) {
                            return generateWebResponse;
                        }
                    }
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse generateWebResponse;
                return (MomentDialog.this.filePicker == null || (generateWebResponse = MomentDialog.this.filePicker.generateWebResponse(str)) == null) ? super.shouldInterceptRequest(webView, str) : generateWebResponse;
            }
        });
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.28
            private View mCustomView;
            private WebChromeClient.CustomViewCallback mCustomViewCallback;

            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
                WebView webView2 = new WebView(webView.getContext());
                webView2.setWebViewClient(new WebViewClient() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.28.1
                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView3, String str) {
                        MomentDialog.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        return true;
                    }
                });
                ((WebView.WebViewTransport) message.obj).setWebView(webView2);
                message.sendToTarget();
                return true;
            }

            public void openFileChooser(ValueCallback<Uri> valueCallback) {
                MomentDialog.this.uploadMessage = valueCallback;
                MomentDialog.this.openImageChooserActivity(null);
            }

            public void openFileChooser(ValueCallback valueCallback, String str) {
                MomentDialog.this.uploadMessage = valueCallback;
                MomentDialog.this.openImageChooserActivity(new String[]{str});
            }

            public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
                MomentDialog.this.uploadMessage = valueCallback;
                MomentDialog.this.openImageChooserActivity(new String[]{str});
            }

            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                MomentDialog.this.uploadMessageAboveL = valueCallback;
                if (Build.VERSION.SDK_INT < 21) {
                    return true;
                }
                MomentDialog.this.openImageChooserActivity(fileChooserParams.getAcceptTypes());
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
                if (this.mCustomView != null) {
                    customViewCallback.onCustomViewHidden();
                    return;
                }
                this.mCustomView = view;
                MomentDialog.this.root.addView(this.mCustomView);
                MomentDialog.this.mWebView.setVisibility(8);
                this.mCustomView.setVisibility(0);
                this.mCustomView.bringToFront();
                this.mCustomViewCallback = customViewCallback;
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                if (this.mCustomView == null) {
                    return;
                }
                MomentDialog.this.root.removeView(this.mCustomView);
                MomentDialog.this.mWebView.setVisibility(0);
                this.mCustomViewCallback.onCustomViewHidden();
                this.mCustomView = null;
                super.onHideCustomView();
            }
        });
        this.mWebView.setOnKeyListener(new View.OnKeyListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.29
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkHandlerNotNull(JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
        if (this.handler != null) {
            return true;
        }
        webViewJavascriptBridgeResponseCallback.onResult(errResponse2Json("no handler"));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openImageChooserActivity(final String[] strArr) {
        if (Build.VERSION.SDK_INT < 24) {
            TdsPermission.with(this).forwardSetting(new PermissionConfig(TapLocalizeUtil.getLocalizedString(R.string.moment_permission_intent_title), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_intent_reason), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_intent_confirm), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_tip_title), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_tip_reason), TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_cancel), TapLocalizeUtil.getLocalizedString(R.string.moment_permission_tip_confirm))).permission("android.permission.READ_EXTERNAL_STORAGE").request(new RequestPermissionCallback() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.30
                @Override // com.taptap.sdk.moment.legacy.utils.permission.RequestPermissionCallback
                public void onResult(boolean z, List<String> list, List<String> list2) {
                    if (!z) {
                        if (MomentDialog.this.uploadMessage != null) {
                            MomentDialog.this.uploadMessage.onReceiveValue(null);
                            MomentDialog.this.uploadMessage = null;
                        }
                        if (MomentDialog.this.uploadMessageAboveL != null) {
                            MomentDialog.this.uploadMessageAboveL.onReceiveValue(null);
                            MomentDialog.this.uploadMessageAboveL = null;
                            return;
                        }
                        return;
                    }
                    MomentDialog.this.sendChooseFileIntent(strArr);
                }
            });
        } else {
            sendChooseFileIntent(strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendChooseFileIntent(String[] strArr) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        if (strArr != null && strArr.length > 0) {
            intent.setType(strArr[0]);
        } else {
            intent.setType(UrlHttpUtil.FILE_TYPE_IMAGE);
        }
        startActivityForResult(Intent.createChooser(intent, "Image Chooser"), 10000);
        this.isRequestFile = true;
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.isRequestFile = false;
        Runnable runnable = this.afterResultRunnable;
        if (runnable != null) {
            this.mWebView.post(runnable);
            this.afterResultRunnable = null;
        }
        if (i == 10000) {
            if (this.uploadMessage == null && this.uploadMessageAboveL == null) {
                return;
            }
            Uri data = (intent == null || i2 != -1) ? null : intent.getData();
            if (this.uploadMessageAboveL != null) {
                onActivityResultAboveL(i, i2, intent);
                return;
            }
            ValueCallback<Uri> valueCallback = this.uploadMessage;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(data);
                this.uploadMessage = null;
                return;
            }
            return;
        }
        if (i != 10001 || this.callback == null) {
            return;
        }
        try {
            this.callback.onResult(intent.getExtras().getString("content"));
        } catch (Exception unused) {
            this.callback.onResult("");
        }
    }

    private void onActivityResultAboveL(int i, int i2, Intent intent) {
        Uri[] uriArr;
        if (i != 10000 || this.uploadMessageAboveL == null) {
            return;
        }
        if (i2 != -1 || intent == null) {
            uriArr = null;
        } else {
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr = new Uri[clipData.getItemCount()];
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    uriArr[i3] = clipData.getItemAt(i3).getUri();
                }
            } else {
                uriArr = null;
            }
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            }
        }
        this.uploadMessageAboveL.onReceiveValue(uriArr);
        this.uploadMessageAboveL = null;
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        handleLayout(configuration.orientation);
        onDeviceInfoDidChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFullScreen() {
        Window window;
        if (getDialog() == null || (window = getDialog().getWindow()) == null) {
            return;
        }
        window.setFlags(1024, 1024);
        window.getDecorView().setPadding(0, 0, 0, 0);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            attributes2.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes2);
            window.getDecorView().setSystemUiVisibility(1280);
        }
        window.setFlags(16777216, 16777216);
        window.setAttributes(attributes);
        ScreenHelper.fullScreenImmersive(window);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (getActivity() == null || this.networkReceiver == null) {
            return;
        }
        getActivity().unregisterReceiver(this.networkReceiver);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.callback = null;
        this.handler.removeCallbacks(null);
        JavaScriptBridgeWebView javaScriptBridgeWebView = this.mWebView;
        if (javaScriptBridgeWebView != null) {
            javaScriptBridgeWebView.removeAllViews();
            ((ViewGroup) this.mWebView.getParent()).removeView(this.mWebView);
            this.mWebView.setTag(null);
            this.mWebView.clearHistory();
            this.mWebView.destroy();
            this.mWebView = null;
        }
        SimpleLocalBroadcastManager.getInstance().sendBroadcast(Constant.TAP_MOMENT_DISAPPEAR_ACTION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLayout(int i) {
        try {
            float f = getActivity().getResources().getDisplayMetrics().density;
            if (i == 1) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.close.getLayoutParams();
                if (this.isNotch) {
                    marginLayoutParams.setMargins(0, (int) (30.0f * f), (int) (f * 0.0f), 0);
                } else {
                    int i2 = (int) (f * 0.0f);
                    marginLayoutParams.setMargins(0, i2, i2, 0);
                }
                marginLayoutParams.setMarginEnd((int) (f * 0.0f));
                this.close.setLayoutParams(marginLayoutParams);
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mWebView.getLayoutParams();
                marginLayoutParams2.topMargin = 0;
                this.mWebView.setLayoutParams(marginLayoutParams2);
            } else if (i == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.close.getLayoutParams();
                int i3 = (int) (0.0f * f);
                int i4 = (int) (f * 29.0f);
                marginLayoutParams3.setMargins(0, i3, i4, 0);
                marginLayoutParams3.setMarginEnd(i4);
                this.close.setLayoutParams(marginLayoutParams3);
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) this.mWebView.getLayoutParams();
                marginLayoutParams4.topMargin = 0;
                this.mWebView.setLayoutParams(marginLayoutParams4);
            }
            Log.d("moment", "config changed");
            this.mWebView.postDelayed(new Runnable() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.31
                @Override // java.lang.Runnable
                public void run() {
                    MomentDialog.this.setFullScreen();
                }
            }, 1000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeviceInfoDidChange() {
        Log.d("Moment", "deviceStatusDidChange = " + deviceInfo2Json());
        this.mWebView.callHandler("deviceStatusDidChange", deviceInfo2Json());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String deviceInfo2Json() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("SV", Build.VERSION.RELEASE);
            jSONObject.put("ANDROID_ID", TapIdentifierUtil.getAndroidID(getActivity()));
            jSONObject.put("UUID", TapIdentifierUtil.INSTANCE.getInstallUUID());
            jSONObject.put("MOBILE_TYPE", Utils.getNetworkStateString(getActivity()));
            jSONObject.put("HARDWARE", Utils.getHardware());
            jSONObject.put("RAM", DeviceUtils.getDeviceTotalRam(getActivity()));
            jSONObject.put("ROM", DeviceUtils.getDeviceTotalRom(getActivity()));
            jSONObject.put("SR", Utils.getScreenResolution(getActivity()));
            jSONObject.put("PN", "TapTap");
            jSONObject.put("VN", "4.5.4");
            Locale locale = this.locale;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            jSONObject.put("LANG", locale.toString());
            jSONObject.put("LOC", Locale.getDefault().getCountry());
            jSONObject.put("PLT", "Android");
            jSONObject.put("MANUFACTURER", Build.MANUFACTURER);
            jSONObject.put("MODEL", Build.MODEL);
            int i = 1;
            jSONObject.put("VERSION_RELEASE", String.format(Locale.getDefault(), "%d", Integer.valueOf(Build.VERSION.SDK_INT)));
            jSONObject.put("CPU_ARCHITECTURE", getCpuArchitecture());
            jSONObject.put("ORIENTATION", getOrientation());
            jSONObject.put("NOTCH", this.isNotch);
            jSONObject.put("VERSION_CODE", 405040000);
            jSONObject.put("TAPDB_DEVICE_ID", TapIdentifierUtil.INSTANCE.getDeviceId(getActivity()));
            if (ActivityUtils.isActivityAlive(getActivity())) {
                jSONObject.put("HAS_TAPTAP_CLIENT", DeviceUtils.isAppExist(getActivity(), TapMomentInternal.INSTANCE.getRegionType() == 0 ? "com.taptap" : BizExtKt.PACKAGE_NAME_GLOBAL));
            }
            int intExtra = (int) ((r1.getIntExtra(ActionUtils.LEVEL, -1) / r1.getIntExtra("scale", -1)) * 100.0f);
            int intExtra2 = getActivity().getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
            if (intExtra2 == 5) {
                i = 2;
            } else if (intExtra2 != 2) {
                i = 0;
            }
            jSONObject.put("BATTERY_STATUS", Integer.valueOf(i));
            jSONObject.put("BATTERY_LEVEL", Integer.valueOf(intExtra));
            jSONObject.put("NETWORK_TYPE", Integer.valueOf(Utils.getNetworkState(getActivity())));
            jSONObject.put("SDK_LANG", TapLocalizeUtil.getPreferredLanguage().getLanguage());
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "{}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getOrientation() {
        return getResources().getConfiguration().orientation;
    }

    public static String getCpuArchitecture() {
        if (Build.VERSION.SDK_INT >= 21) {
            for (String str : Build.SUPPORTED_ABIS) {
                if (str != null) {
                    return str.contains("arm") ? "arm" : str.contains("x86") ? "x86" : str;
                }
            }
            return "unKnow";
        }
        String str2 = Build.CPU_ABI;
        return str2 != null ? str2.contains("arm") ? "arm" : str2.contains("x86") ? "x86" : str2 : "unKnow";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String customErrResponse(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(WebLoginFragment.QUERY_KEY_ERROR, str);
            jSONObject.put("error_description", str2);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "{}";
        }
    }

    private String errResponse2Json(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_ERROR, str);
            jSONObject.put("msg", str2);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "{}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String errResponse2Json(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_ERROR, str);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "{}";
        }
    }

    public void setResultCallback(Runnable runnable) {
        this.afterResultRunnable = runnable;
    }

    public boolean isShowing() {
        JavaScriptBridgeWebView javaScriptBridgeWebView;
        return (getDialog() == null || !getDialog().isShowing() || this.isRequestFile || (javaScriptBridgeWebView = this.mWebView) == null || javaScriptBridgeWebView.getVisibility() != 0) ? false : true;
    }

    /* loaded from: classes.dex */
    private static class DeviceInfoReceiver extends BroadcastReceiver {
        private final WeakReference<MomentDialog> mFragmentWeRef;

        public DeviceInfoReceiver(MomentDialog momentDialog) {
            this.mFragmentWeRef = new WeakReference<>(momentDialog);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MomentDialog momentDialog = this.mFragmentWeRef.get();
            if (momentDialog == null) {
                return;
            }
            momentDialog.onDeviceInfoDidChange();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ForumHandler extends Handler {
        private final WeakReference<MomentDialog> mFragmentWeRef;

        ForumHandler(MomentDialog momentDialog) {
            this.mFragmentWeRef = new WeakReference<>(momentDialog);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MomentDialog momentDialog = this.mFragmentWeRef.get();
            int i = message.what;
            if (i == 16) {
                if (momentDialog != null) {
                    momentDialog.close.setVisibility(4);
                    return;
                }
                return;
            }
            if (i == 17) {
                if (momentDialog != null) {
                    momentDialog.close.setVisibility(0);
                    return;
                }
                return;
            }
            if (i == 20) {
                if (momentDialog != null) {
                    momentDialog.loading.setVisibility(4);
                    return;
                }
                return;
            }
            if (i == 21) {
                if (momentDialog != null) {
                    momentDialog.loading.setVisibility(0);
                }
            } else if (i == 32 && momentDialog != null) {
                momentDialog.mWebView.clearCache(true);
                if (Build.VERSION.SDK_INT < 21) {
                    CookieSyncManager.getInstance().startSync();
                    CookieManager cookieManager = CookieManager.getInstance();
                    cookieManager.removeAllCookie();
                    cookieManager.removeSessionCookie();
                    CookieSyncManager.getInstance().stopSync();
                    CookieSyncManager.getInstance().sync();
                    return;
                }
                CookieManager.getInstance().removeAllCookies(new ValueCallback<Boolean>() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.MomentDialog.ForumHandler.1
                    @Override // android.webkit.ValueCallback
                    public void onReceiveValue(Boolean bool) {
                    }
                });
            }
        }
    }

    /* loaded from: classes.dex */
    class NetworkReceiver extends BroadcastReceiver {
        NetworkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int networkState = Utils.getNetworkState(context);
            if (networkState > 0 && MomentDialog.this.networkErrorDialog != null && MomentDialog.this.networkErrorDialog.isShowing()) {
                if (MomentDialog.this.mWebView != null) {
                    MomentDialog.this.mWebView.reload();
                }
                MomentDialog.this.networkErrorDialog.dismiss();
            }
            if (MomentDialog.this.mWebView != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(WebLoginFragment.QUERY_KEY_ID, networkState);
                    Log.d("Moment", " networkStateChanged =" + jSONObject);
                    MomentDialog.this.mWebView.callHandler("networkStateChanged", jSONObject);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
