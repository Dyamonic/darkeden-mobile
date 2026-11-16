package com.taptap.sdk.moment.wrapper;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import com.taptap.sdk.kit.internal.callback.TapTapCallback;
import com.taptap.sdk.kit.internal.exception.TapTapException;
import com.taptap.sdk.login.AccessToken;
import com.taptap.sdk.login.TapTapAccount;
import com.taptap.sdk.login.api.LoginService;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.moment.constant.Constant;
import com.taptap.sdk.moment.legacy.utils.SimpleLocalBroadcastManager;
import com.taptap.sdk.moment.legacy.widget.JavaScriptBridgeWebView;
import com.taptap.sdk.moment.wrapper.AccessTokenUtils;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import org.json.JSONObject;

/* compiled from: AccessTokenUtils.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;", "", "()V", "Companion", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AccessTokenUtils {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<LoginService> tapLoginService$delegate;

    @JvmStatic
    public static final void authDenied(String str, String... strArr) {
        INSTANCE.authDenied(str, strArr);
    }

    @JvmStatic
    public static final void getAccessToken(JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
        INSTANCE.getAccessToken(webViewJavascriptBridgeResponseCallback);
    }

    @JvmStatic
    public static final void loginByTap(Activity activity, JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback) {
        INSTANCE.loginByTap(activity, webViewJavascriptBridgeResponseCallback);
    }

    private AccessTokenUtils() {
    }

    /* compiled from: AccessTokenUtils.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000e\"\u00020\fH\u0007¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\fH\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0019"}, d2 = {"Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;", "", "()V", "tapLoginService", "Lcom/taptap/sdk/login/api/LoginService;", "getTapLoginService", "()Lcom/taptap/sdk/login/api/LoginService;", "tapLoginService$delegate", "Lkotlin/Lazy;", "authDenied", "", "data", "", "errors", "", "(Ljava/lang/String;[Ljava/lang/String;)V", "errResponse2Json", NotificationCompat.CATEGORY_ERROR, "msg", "getAccessToken", "callback", "Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;", "loginByTap", "activity", "Landroid/app/Activity;", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final LoginService getTapLoginService() {
            return (LoginService) AccessTokenUtils.tapLoginService$delegate.getValue();
        }

        @JvmStatic
        public final void getAccessToken(JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            try {
                TapTapAccount currentTapAccount = getTapLoginService().getCurrentTapAccount();
                AccessToken accessToken = currentTapAccount != null ? currentTapAccount.getAccessToken() : null;
                if (accessToken == null) {
                    callback.onResult(errResponse2Json("failed", "empty access token"));
                    return;
                }
                Json.Companion companion = Json.INSTANCE;
                KSerializer<Object> serializer = SerializersKt.serializer(companion.getSerializersModule(), Reflection.typeOf(AccessToken.class));
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                callback.onResult(companion.encodeToString(serializer, accessToken));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @JvmStatic
        public final void loginByTap(Activity activity, final JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback callback) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(callback, "callback");
            TapTapAccount currentTapAccount = getTapLoginService().getCurrentTapAccount();
            if ((currentTapAccount != null ? currentTapAccount.getAccessToken() : null) != null) {
                callback.onResult(errResponse2Json("accessToken not empty"));
            } else {
                getTapLoginService().loginWithScopeInternal(activity, new String[]{"public_profile"}, false, new TapTapCallback<TapTapAccount>() { // from class: com.taptap.sdk.moment.wrapper.AccessTokenUtils$Companion$loginByTap$1
                    @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
                    public void onSuccess(TapTapAccount result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        Json.Companion companion = Json.INSTANCE;
                        AccessToken accessToken = result.getAccessToken();
                        KSerializer<Object> serializer = SerializersKt.serializer(companion.getSerializersModule(), Reflection.typeOf(AccessToken.class));
                        Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                        String encodeToString = companion.encodeToString(serializer, accessToken);
                        JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback.this.onResult(encodeToString);
                        SimpleLocalBroadcastManager.getInstance().sendBroadcast(Constant.TAP_MOMENT_LOGIN_SUCCESS_ACTION, MapsKt.mapOf(TuplesKt.to("token", encodeToString)));
                    }

                    @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
                    public void onCancel() {
                        String errResponse2Json;
                        JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback = JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback.this;
                        errResponse2Json = AccessTokenUtils.INSTANCE.errResponse2Json("login cancel");
                        webViewJavascriptBridgeResponseCallback.onResult(errResponse2Json);
                    }

                    @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
                    public void onFail(TapTapException exception) {
                        String errResponse2Json;
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback webViewJavascriptBridgeResponseCallback = JavaScriptBridgeWebView.WebViewJavascriptBridgeResponseCallback.this;
                        AccessTokenUtils.Companion companion = AccessTokenUtils.INSTANCE;
                        String message = exception.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        errResponse2Json = companion.errResponse2Json(message);
                        webViewJavascriptBridgeResponseCallback.onResult(errResponse2Json);
                    }
                });
            }
        }

        @JvmStatic
        public final void authDenied(String data, String... errors) {
            JSONObject optJSONObject;
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(errors, "errors");
            TapTapAccount currentTapAccount = getTapLoginService().getCurrentTapAccount();
            if (currentTapAccount == null || currentTapAccount.getAccessToken() == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.optBoolean("success", false) || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
                return;
            }
            for (String str : errors) {
                if (StringsKt.equals(str, optJSONObject.getString(WebLoginFragment.QUERY_KEY_ERROR), true)) {
                    AccessTokenUtils.INSTANCE.getTapLoginService().logout();
                    return;
                }
            }
        }

        private final String errResponse2Json(String err, String msg) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NotificationCompat.CATEGORY_ERROR, err);
                jSONObject.put("msg", msg);
                String jSONObject2 = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "`object`.toString()");
                return jSONObject2;
            } catch (Exception e) {
                e.printStackTrace();
                return "{}";
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String errResponse2Json(String err) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NotificationCompat.CATEGORY_ERROR, err);
                String jSONObject2 = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "`object`.toString()");
                return jSONObject2;
            } catch (Exception e) {
                e.printStackTrace();
                return "{}";
            }
        }
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        tapLoginService$delegate = LazyKt.lazy(new Function0<LoginService>() { // from class: com.taptap.sdk.moment.wrapper.AccessTokenUtils$special$$inlined$inject$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LoginService invoke() {
                ServiceManager.Service service = ServiceManager.INSTANCE.getService(LoginService.class);
                Objects.requireNonNull(service, "null cannot be cast to non-null type com.taptap.sdk.login.api.LoginService");
                return (LoginService) service;
            }
        });
    }
}
