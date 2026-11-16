package com.taptap.sdk.login.internal.handlers.web;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.google.android.material.badge.BadgeDrawable;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.utils.CommonUtils;
import com.taptap.sdk.kit.internal.utils.DeviceUtils;
import com.taptap.sdk.kit.internal.utils.PlatformXUA;
import com.taptap.sdk.kit.internal.utils.TapDensityUtilsKt;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.login.R;
import com.taptap.sdk.login.internal.LoginManager;
import com.taptap.sdk.login.internal.bean.LoginRequest;
import com.taptap.sdk.login.internal.bean.LoginResponse;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.login.internal.util.CodeUtil;
import com.taptap.sdk.update.constants.LoggerConst;
import com.tencent.connect.common.Constants;
import com.tencent.tauth.AuthActivity;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.Json;
import org.json.JSONObject;

/* compiled from: WebLoginFragment.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000  2\u00020\u00012\u00020\u0002:\u0003 !\"B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0003J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0010H\u0016J\u0006\u0010\u0011\u001a\u00020\tJ\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J(\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\b\u0010\u001d\u001a\u00020\tH\u0002J\b\u0010\u001e\u001a\u00020\tH\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;", "Landroid/app/Fragment;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "()V", "animation", "Landroid/animation/AnimatorSet;", "request", "Lcom/taptap/sdk/login/internal/bean/LoginRequest;", "endLoadingAnimation", "", "getWebUrl", "", "initWebView", LoggerConst.ACTION_VIEW, "Landroid/view/View;", "onAnimationUpdate", "Landroid/animation/ValueAnimator;", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "startLoadingAnimation", "syncCookie", "updateLayout", "Companion", "Env", "UrlResource", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class WebLoginFragment extends Fragment implements ValueAnimator.AnimatorUpdateListener {
    public static final String QUERY_KEY_CODE = "code";
    public static final String QUERY_KEY_ERROR = "error";
    public static final String QUERY_KEY_ID = "state";
    private AnimatorSet animation;
    private LoginRequest request;

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        if (inflater != null) {
            return inflater.inflate(R.layout.fragment_webview_login, container, false);
        }
        return null;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String preferredLoginType;
        String phoneVerifyToken;
        String trackInfo;
        if (view == null) {
            return;
        }
        LoginRequest loginRequest = (LoginRequest) getArguments().getParcelable("request");
        if (loginRequest == null) {
            loginRequest = savedInstanceState != null ? (LoginRequest) savedInstanceState.getParcelable("request") : null;
            if (loginRequest == null) {
                return;
            }
        }
        this.request = loginRequest;
        Configuration configuration = getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "resources.configuration");
        updateLayout(view, configuration);
        view.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.login.internal.handlers.web.-$$Lambda$WebLoginFragment$BfUAZy441VDE1WBUSTpFKQSlit8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebLoginFragment.onViewCreated$lambda$0(WebLoginFragment.this, view2);
            }
        });
        initWebView(view);
        Uri.Builder buildUpon = Uri.parse(getWebUrl()).buildUpon();
        buildUpon.appendQueryParameter("client_id", LoginManager.INSTANCE.getClientId());
        buildUpon.appendQueryParameter("redirect_uri", "tapoauth://authorize");
        buildUpon.appendQueryParameter("response_type", "code");
        LoginRequest loginRequest2 = this.request;
        if (loginRequest2 != null && (trackInfo = loginRequest2.getTrackInfo()) != null) {
            buildUpon.appendQueryParameter("session_id", new JSONObject(trackInfo).getString("session_id"));
        }
        buildUpon.appendQueryParameter(ClientCookie.VERSION_ATTR, "4.5.4");
        buildUpon.appendQueryParameter(Constants.PARAM_PLATFORM, "android");
        LoginRequest loginRequest3 = this.request;
        if (loginRequest3 != null) {
            buildUpon.appendQueryParameter(Constants.PARAM_SCOPE, ArraysKt.joinToString$default(loginRequest3.getScopes(), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
            buildUpon.appendQueryParameter(QUERY_KEY_ID, loginRequest3.getState());
            buildUpon.appendQueryParameter("code_challenge", CodeUtil.INSTANCE.getCodeChallenge(loginRequest3.getCodeVerifier()));
            Json.Companion companion = Json.INSTANCE;
            HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to("preapproved", Integer.valueOf(loginRequest3.getPreApproved() ? 1 : 0)));
            KSerializer<Object> serializer = SerializersKt.serializer(companion.getSerializersModule(), Reflection.typeOf(HashMap.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Integer.TYPE))));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            buildUpon.appendQueryParameter("extra", companion.encodeToString(serializer, hashMapOf));
            buildUpon.appendQueryParameter("code_challenge_method", loginRequest3.getCodeChallengeMethod());
        }
        Json.Companion companion2 = Json.INSTANCE;
        HashMap hashMapOf2 = MapsKt.hashMapOf(TuplesKt.to(TapEventParamConstants.PARAM_DEVICE_ID, Build.MANUFACTURER + TokenParser.SP + Build.MODEL));
        KSerializer<Object> serializer2 = SerializersKt.serializer(companion2.getSerializersModule(), Reflection.typeOf(HashMap.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
        Intrinsics.checkNotNull(serializer2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        buildUpon.appendQueryParameter("info", companion2.encodeToString(serializer2, hashMapOf2));
        LoginRequest loginRequest4 = this.request;
        if (loginRequest4 != null && (phoneVerifyToken = loginRequest4.getPhoneVerifyToken()) != null) {
            buildUpon.appendQueryParameter("x_phone_verify_token", phoneVerifyToken);
        }
        LoginRequest loginRequest5 = this.request;
        if (loginRequest5 != null && (preferredLoginType = loginRequest5.getPreferredLoginType()) != null) {
            buildUpon.appendQueryParameter("x_login_type", preferredLoginType);
        }
        String uri = buildUpon.build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "parse(getWebUrl()).build…     }.build().toString()");
        syncCookie();
        Pair[] pairArr = new Pair[1];
        LoginRequest loginRequest6 = this.request;
        pairArr[0] = TuplesKt.to("X-SDK-UA", loginRequest6 != null ? loginRequest6.getInfo() : null);
        ((WebView) view.findViewById(R.id.webview)).loadUrl(uri, MapsKt.hashMapOf(pairArr));
        startLoadingAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(WebLoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LoginManager.INSTANCE.notifyCancel(this$0.request);
        this$0.getActivity().finish();
    }

    private final void startLoadingAnimation() {
        AnimatorSet animatorSet = this.animation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        ValueAnimator duration = ValueAnimator.ofInt(0, 200).setDuration(800L);
        WebLoginFragment webLoginFragment = this;
        duration.addUpdateListener(webLoginFragment);
        Unit unit = Unit.INSTANCE;
        ValueAnimator duration2 = ValueAnimator.ofInt(200, 800).setDuration(10000L);
        duration2.addUpdateListener(webLoginFragment);
        Unit unit2 = Unit.INSTANCE;
        animatorSet2.playSequentially(duration, duration2);
        this.animation = animatorSet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void endLoadingAnimation() {
        final ProgressBar progressBar;
        AnimatorSet animatorSet = this.animation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        View view = getView();
        if (view == null || (progressBar = (ProgressBar) view.findViewById(R.id.progress)) == null) {
            return;
        }
        ValueAnimator duration = ValueAnimator.ofInt(progressBar.getProgress(), 1000).setDuration(500L);
        duration.addUpdateListener(this);
        duration.addListener(new Animator.AnimatorListener() { // from class: com.taptap.sdk.login.internal.handlers.web.WebLoginFragment$endLoadingAnimation$1$1$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                progressBar.setVisibility(8);
            }
        });
        duration.start();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        View view = getView();
        if (view != null) {
            updateLayout(view, newConfig);
        }
    }

    private final void initWebView(View view) {
        WebView webView = (WebView) view.findViewById(R.id.webview);
        if (webView != null) {
            webView.setDownloadListener(new DownloadListener() { // from class: com.taptap.sdk.login.internal.handlers.web.-$$Lambda$WebLoginFragment$HZsBX8OlEAOHLMtNVg-NuZOFzYc
                @Override // android.webkit.DownloadListener
                public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                    WebLoginFragment.initWebView$lambda$14$lambda$12(WebLoginFragment.this, str, str2, str3, str4, j);
                }
            });
            webView.setWebViewClient(new WebViewClient() { // from class: com.taptap.sdk.login.internal.handlers.web.WebLoginFragment$initWebView$1$2
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView view2, String url) {
                    super.onPageFinished(view2, url);
                    WebLoginFragment.this.endLoadingAnimation();
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView view2, String url) {
                    if (WebLoginFragment.this.getActivity() == null) {
                        LoginManager.INSTANCE.notifyCancel(WebLoginFragment.this.request);
                        return false;
                    }
                    String str = url;
                    if (!(str == null || str.length() == 0)) {
                        String lowerCase = url.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                        if (StringsKt.startsWith$default(lowerCase, "tapoauth", false, 2, (Object) null)) {
                            Uri parse = Uri.parse(url);
                            LoginManager loginManager = LoginManager.INSTANCE;
                            Activity activity = WebLoginFragment.this.getActivity();
                            Intrinsics.checkNotNullExpressionValue(activity, "activity");
                            Activity activity2 = activity;
                            LoginRequest loginRequest = WebLoginFragment.this.request;
                            String queryParameter = parse.getQueryParameter(WebLoginFragment.QUERY_KEY_ID);
                            if (queryParameter == null) {
                                queryParameter = "";
                            }
                            loginManager.handleLoginResponse(activity2, loginRequest, new LoginResponse(queryParameter, null, parse.getQueryParameter("code"), parse.getQueryParameter(WebLoginFragment.QUERY_KEY_ERROR), false, url));
                            WebLoginFragment.this.getActivity().finish();
                            return true;
                        }
                    }
                    return false;
                }
            });
            WebSettings settings = webView.getSettings();
            settings.setAllowUniversalAccessFromFileURLs(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowFileAccess(false);
            settings.setJavaScriptEnabled(true);
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            settings.setCacheMode(2);
            settings.setUserAgentString(PlatformXUA.getTrackUA());
            webView.addJavascriptInterface(new UrlResource(), "urlResource");
            webView.setOverScrollMode(2);
            webView.setVerticalScrollBarEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initWebView$lambda$14$lambda$12(WebLoginFragment this$0, String str, String str2, String str3, String str4, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        try {
            this$0.getActivity().startActivity(intent);
        } catch (Exception unused) {
        }
    }

    private final void updateLayout(View view, Configuration newConfig) {
        int[] deviceSize = DeviceUtils.getDeviceSize(getActivity());
        int max = Math.max(deviceSize[0], deviceSize[1]);
        if (max <= 0) {
            return;
        }
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.progress);
        if (progressBar != null) {
            progressBar.setMax(1000);
        }
        FrameLayout.LayoutParams layoutParams = null;
        if (newConfig.orientation == 2) {
            View findViewById = view.findViewById(R.id.container);
            if (findViewById != null) {
                ViewGroup.LayoutParams layoutParams2 = findViewById.getLayoutParams();
                layoutParams2.width = ((int) (max * 0.6d)) + TapDensityUtilsKt.getDip(84.0f);
                layoutParams2.height = -1;
                findViewById.setLayoutParams(layoutParams2);
            }
            View findViewById2 = view.findViewById(R.id.web_container);
            if (findViewById2 != null) {
                ViewGroup.LayoutParams layoutParams3 = findViewById2.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
                if (marginLayoutParams != null) {
                    int dip = TapDensityUtilsKt.getDip(16.0f);
                    int dip2 = TapDensityUtilsKt.getDip(42.0f);
                    marginLayoutParams.topMargin = dip;
                    marginLayoutParams.bottomMargin = dip;
                    marginLayoutParams.leftMargin = dip2;
                    marginLayoutParams.rightMargin = dip2;
                } else {
                    marginLayoutParams = null;
                }
                findViewById2.setLayoutParams(marginLayoutParams);
                findViewById2.setClipToOutline(true);
            }
            View findViewById3 = view.findViewById(R.id.close);
            if (findViewById3 != null) {
                ViewGroup.LayoutParams layoutParams4 = findViewById3.getLayoutParams();
                FrameLayout.LayoutParams layoutParams5 = layoutParams4 instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams4 : null;
                if (layoutParams5 != null) {
                    layoutParams5.gravity = BadgeDrawable.TOP_START;
                    layoutParams5.setMargins(TapDensityUtilsKt.getDip(4.0f), TapDensityUtilsKt.getDip(16.0f), 0, 0);
                    layoutParams = layoutParams5;
                }
                findViewById3.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        if (newConfig.orientation == 1) {
            View findViewById4 = view.findViewById(R.id.container);
            if (findViewById4 != null) {
                ViewGroup.LayoutParams layoutParams6 = findViewById4.getLayoutParams();
                layoutParams6.width = -1;
                layoutParams6.height = ((int) (max * 0.8d)) + TapDensityUtilsKt.getDip(38.0f);
                findViewById4.setLayoutParams(layoutParams6);
            }
            View findViewById5 = view.findViewById(R.id.web_container);
            if (findViewById5 != null) {
                ViewGroup.LayoutParams layoutParams7 = findViewById5.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
                if (marginLayoutParams2 != null) {
                    int dip3 = TapDensityUtilsKt.getDip(20.0f);
                    marginLayoutParams2.topMargin = TapDensityUtilsKt.getDip(38.0f);
                    marginLayoutParams2.bottomMargin = dip3;
                    marginLayoutParams2.leftMargin = dip3;
                    marginLayoutParams2.rightMargin = dip3;
                } else {
                    marginLayoutParams2 = null;
                }
                findViewById5.setLayoutParams(marginLayoutParams2);
                findViewById5.setClipToOutline(true);
            }
            View findViewById6 = view.findViewById(R.id.close);
            if (findViewById6 != null) {
                ViewGroup.LayoutParams layoutParams8 = findViewById6.getLayoutParams();
                FrameLayout.LayoutParams layoutParams9 = layoutParams8 instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams8 : null;
                if (layoutParams9 != null) {
                    layoutParams9.gravity = BadgeDrawable.TOP_END;
                    layoutParams9.setMargins(0, 0, TapDensityUtilsKt.getDip(20.0f), 0);
                    layoutParams = layoutParams9;
                }
                findViewById6.setLayoutParams(layoutParams);
            }
        }
    }

    private final String getWebUrl() {
        return TapTapKit.INSTANCE.isRND() ? LoginManager.INSTANCE.getRegionType() == 0 ? "https://accounts.xdrnd.cn/authorize" : "https://accounts-io.xdrnd.com/authorize" : LoginManager.INSTANCE.getRegionType() == 0 ? "https://accounts.taptap.cn/authorize" : "https://www.taptapauth.com/authorize";
    }

    private final void syncCookie() {
        CookieSyncManager.createInstance(getActivity());
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setCookie("https://www.xdrnd.com/", "skip_captcha=1");
        cookieManager.flush();
    }

    /* compiled from: WebLoginFragment.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\u0007"}, d2 = {"Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;", "", "(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V", "TapTapAPI", "", AuthActivity.ACTION_KEY, MetricsSQLiteCacheKt.METRICS_PARAMS, "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public final class UrlResource {
        public UrlResource() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @JavascriptInterface
        public final String TapTapAPI(String action, final String params) {
            View view;
            String trackInfo;
            String info;
            Intrinsics.checkNotNullParameter(action, "action");
            if (TextUtils.isEmpty(action)) {
                return null;
            }
            switch (action.hashCode()) {
                case -880997814:
                    if (action.equals("tapEnv")) {
                        Json.Companion companion = Json.INSTANCE;
                        Env env = new Env((String) null, (String) null, (String) null, 0, (String) null, (String) null, (String) null, 127, (DefaultConstructorMarker) null);
                        KSerializer<Object> serializer = SerializersKt.serializer(companion.getSerializersModule(), Reflection.typeOf(Env.class));
                        Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                        return companion.encodeToString(serializer, env);
                    }
                    return null;
                case -45886082:
                    if (action.equals("openBrowser") && (view = WebLoginFragment.this.getView()) != null) {
                        final WebLoginFragment webLoginFragment = WebLoginFragment.this;
                        view.post(new Runnable() { // from class: com.taptap.sdk.login.internal.handlers.web.-$$Lambda$WebLoginFragment$UrlResource$8mOJIwNz6Oix2Y0sQU4W7uTP2zY
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebLoginFragment.UrlResource.TapTapAPI$lambda$1(params, this, webLoginFragment);
                            }
                        });
                    }
                    return null;
                case 719887843:
                    if (action.equals("getTrackInfo")) {
                        LoginRequest loginRequest = WebLoginFragment.this.request;
                        return (loginRequest == null || (trackInfo = loginRequest.getTrackInfo()) == null) ? "" : trackInfo;
                    }
                    return null;
                case 2038898642:
                    if (action.equals("getSDKInfo")) {
                        LoginRequest loginRequest2 = WebLoginFragment.this.request;
                        return (loginRequest2 == null || (info = loginRequest2.getInfo()) == null) ? "" : info;
                    }
                    return null;
                default:
                    return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void TapTapAPI$lambda$1(String str, UrlResource this$0, WebLoginFragment this$1) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            try {
                Result.Companion companion = Result.INSTANCE;
                this$1.getActivity().startActivity(intent);
                Result.m56constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m56constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator animation) {
        ProgressBar progressBar;
        Intrinsics.checkNotNullParameter(animation, "animation");
        View view = getView();
        if (view == null || (progressBar = (ProgressBar) view.findViewById(R.id.progress)) == null) {
            return;
        }
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        progressBar.setProgress(((Integer) animatedValue).intValue());
    }

    public final void onBackPressed() {
        LoginManager.INSTANCE.notifyCancel(this.request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebLoginFragment.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0083\b\u0018\u0000 62\u00020\u0001:\u000256Bk\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\b\u001a\u00020\u0003\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eBK\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\u000fJ\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003JO\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\t\u0010-\u001a\u00020\u0005HÖ\u0001J!\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204HÇ\u0001R\u001c\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0016R\u001c\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u001a\u0010\u0016R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u001c\u0010\u0016R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001d\u0010\u0011\u001a\u0004\b\u001e\u0010\u0016R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0011\u001a\u0004\b \u0010\u0016¨\u00067"}, d2 = {"Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env;", "", "seen1", "", "manufacturer", "", "model", "appVersion", "appAPI", "sdkVersion", "loc", "lang", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAppAPI$annotations", "()V", "getAppAPI", "()I", "getAppVersion$annotations", "getAppVersion", "()Ljava/lang/String;", "getLang$annotations", "getLang", "getLoc$annotations", "getLoc", "getManufacturer$annotations", "getManufacturer", "getModel$annotations", "getModel", "getSdkVersion$annotations", "getSdkVersion", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "$serializer", "Companion", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @Serializable
    /* loaded from: classes.dex */
    public static final /* data */ class Env {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int appAPI;
        private final String appVersion;
        private final String lang;
        private final String loc;
        private final String manufacturer;
        private final String model;
        private final String sdkVersion;

        public Env() {
            this((String) null, (String) null, (String) null, 0, (String) null, (String) null, (String) null, 127, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ Env copy$default(Env env, String str, String str2, String str3, int i, String str4, String str5, String str6, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = env.manufacturer;
            }
            if ((i2 & 2) != 0) {
                str2 = env.model;
            }
            String str7 = str2;
            if ((i2 & 4) != 0) {
                str3 = env.appVersion;
            }
            String str8 = str3;
            if ((i2 & 8) != 0) {
                i = env.appAPI;
            }
            int i3 = i;
            if ((i2 & 16) != 0) {
                str4 = env.sdkVersion;
            }
            String str9 = str4;
            if ((i2 & 32) != 0) {
                str5 = env.loc;
            }
            String str10 = str5;
            if ((i2 & 64) != 0) {
                str6 = env.lang;
            }
            return env.copy(str, str7, str8, i3, str9, str10, str6);
        }

        @SerialName("VERSION_SDK_INT")
        public static /* synthetic */ void getAppAPI$annotations() {
        }

        @SerialName("VERSION_RELEASE")
        public static /* synthetic */ void getAppVersion$annotations() {
        }

        @SerialName("LANG")
        public static /* synthetic */ void getLang$annotations() {
        }

        @SerialName("LOC")
        public static /* synthetic */ void getLoc$annotations() {
        }

        @SerialName("MANUFACTURER")
        public static /* synthetic */ void getManufacturer$annotations() {
        }

        @SerialName("MODEL")
        public static /* synthetic */ void getModel$annotations() {
        }

        @SerialName("VN_NAME")
        public static /* synthetic */ void getSdkVersion$annotations() {
        }

        /* renamed from: component1, reason: from getter */
        public final String getManufacturer() {
            return this.manufacturer;
        }

        /* renamed from: component2, reason: from getter */
        public final String getModel() {
            return this.model;
        }

        /* renamed from: component3, reason: from getter */
        public final String getAppVersion() {
            return this.appVersion;
        }

        /* renamed from: component4, reason: from getter */
        public final int getAppAPI() {
            return this.appAPI;
        }

        /* renamed from: component5, reason: from getter */
        public final String getSdkVersion() {
            return this.sdkVersion;
        }

        /* renamed from: component6, reason: from getter */
        public final String getLoc() {
            return this.loc;
        }

        /* renamed from: component7, reason: from getter */
        public final String getLang() {
            return this.lang;
        }

        public final Env copy(String manufacturer, String model, String appVersion, int appAPI, String sdkVersion, String loc, String lang) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(appVersion, "appVersion");
            Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
            Intrinsics.checkNotNullParameter(loc, "loc");
            Intrinsics.checkNotNullParameter(lang, "lang");
            return new Env(manufacturer, model, appVersion, appAPI, sdkVersion, loc, lang);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Env)) {
                return false;
            }
            Env env = (Env) other;
            return Intrinsics.areEqual(this.manufacturer, env.manufacturer) && Intrinsics.areEqual(this.model, env.model) && Intrinsics.areEqual(this.appVersion, env.appVersion) && this.appAPI == env.appAPI && Intrinsics.areEqual(this.sdkVersion, env.sdkVersion) && Intrinsics.areEqual(this.loc, env.loc) && Intrinsics.areEqual(this.lang, env.lang);
        }

        public int hashCode() {
            return (((((((((((this.manufacturer.hashCode() * 31) + this.model.hashCode()) * 31) + this.appVersion.hashCode()) * 31) + this.appAPI) * 31) + this.sdkVersion.hashCode()) * 31) + this.loc.hashCode()) * 31) + this.lang.hashCode();
        }

        public String toString() {
            return "Env(manufacturer=" + this.manufacturer + ", model=" + this.model + ", appVersion=" + this.appVersion + ", appAPI=" + this.appAPI + ", sdkVersion=" + this.sdkVersion + ", loc=" + this.loc + ", lang=" + this.lang + ')';
        }

        /* compiled from: WebLoginFragment.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env;", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<Env> serializer() {
                return WebLoginFragment$Env$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ Env(int i, @SerialName("MANUFACTURER") String MANUFACTURER, @SerialName("MODEL") String str, @SerialName("VERSION_RELEASE") String str2, @SerialName("VERSION_SDK_INT") int i2, @SerialName("VN_NAME") String str3, @SerialName("LOC") String str4, @SerialName("LANG") String str5, SerializationConstructorMarker serializationConstructorMarker) {
            if ((i & 0) != 0) {
                PluginExceptionsKt.throwMissingFieldException(i, 0, WebLoginFragment$Env$$serializer.INSTANCE.getDescriptor());
            }
            if ((i & 1) == 0) {
                MANUFACTURER = Build.MANUFACTURER;
                Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            }
            this.manufacturer = MANUFACTURER;
            if ((i & 2) == 0) {
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                this.model = MODEL;
            } else {
                this.model = str;
            }
            if ((i & 4) == 0) {
                String RELEASE = Build.VERSION.RELEASE;
                Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
                this.appVersion = RELEASE;
            } else {
                this.appVersion = str2;
            }
            if ((i & 8) == 0) {
                this.appAPI = Build.VERSION.SDK_INT;
            } else {
                this.appAPI = i2;
            }
            if ((i & 16) == 0) {
                this.sdkVersion = "4.5.4";
            } else {
                this.sdkVersion = str3;
            }
            if ((i & 32) == 0) {
                String displayName = CommonUtils.getCurrentLocale().getDisplayName();
                Intrinsics.checkNotNullExpressionValue(displayName, "getCurrentLocale().displayName");
                this.loc = displayName;
            } else {
                this.loc = str4;
            }
            if ((i & 64) == 0) {
                this.lang = TapLocalizeUtil.getPreferredLanguage().getLanguage();
            } else {
                this.lang = str5;
            }
        }

        public Env(String manufacturer, String model, String appVersion, int i, String sdkVersion, String loc, String lang) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(appVersion, "appVersion");
            Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
            Intrinsics.checkNotNullParameter(loc, "loc");
            Intrinsics.checkNotNullParameter(lang, "lang");
            this.manufacturer = manufacturer;
            this.model = model;
            this.appVersion = appVersion;
            this.appAPI = i;
            this.sdkVersion = sdkVersion;
            this.loc = loc;
            this.lang = lang;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:5:0x002c  */
        @kotlin.jvm.JvmStatic
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void write$Self(com.taptap.sdk.login.internal.handlers.web.WebLoginFragment.Env r6, kotlinx.serialization.encoding.CompositeEncoder r7, kotlinx.serialization.descriptors.SerialDescriptor r8) {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.login.internal.handlers.web.WebLoginFragment.Env.write$Self(com.taptap.sdk.login.internal.handlers.web.WebLoginFragment$Env, kotlinx.serialization.encoding.CompositeEncoder, kotlinx.serialization.descriptors.SerialDescriptor):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ Env(java.lang.String r8, java.lang.String r9, java.lang.String r10, int r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, int r15, kotlin.jvm.internal.DefaultConstructorMarker r16) {
            /*
                r7 = this;
                r0 = r15 & 1
                if (r0 == 0) goto Lc
                java.lang.String r0 = android.os.Build.MANUFACTURER
                java.lang.String r1 = "MANUFACTURER"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                goto Ld
            Lc:
                r0 = r8
            Ld:
                r1 = r15 & 2
                if (r1 == 0) goto L19
                java.lang.String r1 = android.os.Build.MODEL
                java.lang.String r2 = "MODEL"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                goto L1a
            L19:
                r1 = r9
            L1a:
                r2 = r15 & 4
                if (r2 == 0) goto L26
                java.lang.String r2 = android.os.Build.VERSION.RELEASE
                java.lang.String r3 = "RELEASE"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
                goto L27
            L26:
                r2 = r10
            L27:
                r3 = r15 & 8
                if (r3 == 0) goto L2e
                int r3 = android.os.Build.VERSION.SDK_INT
                goto L2f
            L2e:
                r3 = r11
            L2f:
                r4 = r15 & 16
                if (r4 == 0) goto L36
                java.lang.String r4 = "4.5.4"
                goto L37
            L36:
                r4 = r12
            L37:
                r5 = r15 & 32
                if (r5 == 0) goto L49
                java.util.Locale r5 = com.taptap.sdk.kit.internal.utils.CommonUtils.getCurrentLocale()
                java.lang.String r5 = r5.getDisplayName()
                java.lang.String r6 = "getCurrentLocale().displayName"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
                goto L4a
            L49:
                r5 = r13
            L4a:
                r6 = r15 & 64
                if (r6 == 0) goto L57
                com.taptap.sdk.kit.internal.utils.localize.TapLanguageInternal r6 = com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil.getPreferredLanguage()
                java.lang.String r6 = r6.getLanguage()
                goto L58
            L57:
                r6 = r14
            L58:
                r8 = r7
                r9 = r0
                r10 = r1
                r11 = r2
                r12 = r3
                r13 = r4
                r14 = r5
                r15 = r6
                r8.<init>(r9, r10, r11, r12, r13, r14, r15)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.login.internal.handlers.web.WebLoginFragment.Env.<init>(java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public final String getManufacturer() {
            return this.manufacturer;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getAppVersion() {
            return this.appVersion;
        }

        public final int getAppAPI() {
            return this.appAPI;
        }

        public final String getSdkVersion() {
            return this.sdkVersion;
        }

        public final String getLoc() {
            return this.loc;
        }

        public final String getLang() {
            return this.lang;
        }
    }
}
