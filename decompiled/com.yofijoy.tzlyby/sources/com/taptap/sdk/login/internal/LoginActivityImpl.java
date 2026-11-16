package com.taptap.sdk.login.internal;

import android.R;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.exception.TapTapException;
import com.taptap.sdk.login.internal.bean.LoginRequest;
import com.taptap.sdk.login.internal.handlers.LoginHandler;
import com.taptap.sdk.login.internal.handlers.client.ClientLoginHandler;
import com.taptap.sdk.login.internal.handlers.cloud.CloudLoginHandler;
import com.taptap.sdk.login.internal.handlers.phone.PhoneLoginHandler;
import com.taptap.sdk.login.internal.handlers.web.WebHandler;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.login.ui.TapTapLoginActivity;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: LoginActivityImpl.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00172\u00020\u0001:\u0002\u0017\u0018B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ(\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/taptap/sdk/login/internal/LoginActivityImpl;", "", "()V", "loginHandlers", "", "Lcom/taptap/sdk/login/internal/handlers/LoginHandler;", "[Lcom/taptap/sdk/login/internal/handlers/LoginHandler;", "webHandler", "Lcom/taptap/sdk/login/internal/handlers/web/WebHandler;", "fallbackToWeb", "", "activity", "Landroid/app/Activity;", "request", "Lcom/taptap/sdk/login/internal/bean/LoginRequest;", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onBackPressed", "onCreate", "Companion", "TapLoginActivityCallback", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class LoginActivityImpl {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String FRAGMENT_TAG = "login_fragment";
    public static final String PARAM_REQUEST = "request";
    private final LoginHandler[] loginHandlers = {new CloudLoginHandler(), new ClientLoginHandler(), PhoneLoginHandler.INSTANCE};
    private final WebHandler webHandler = new WebHandler();

    /* compiled from: LoginActivityImpl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;", "", "fallbackToWeb", "", "request", "Lcom/taptap/sdk/login/internal/bean/LoginRequest;", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface TapLoginActivityCallback {
        void fallbackToWeb(LoginRequest request);
    }

    /* compiled from: LoginActivityImpl.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;", "", "()V", "FRAGMENT_TAG", "", "PARAM_REQUEST", "startLoginActivity", "", "context", "Landroid/content/Context;", "request", "Lcom/taptap/sdk/login/internal/bean/LoginRequest;", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void startLoginActivity(Context context, LoginRequest request) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(request, "request");
            Intent intent = new Intent(context, (Class<?>) TapTapLoginActivity.class);
            intent.putExtra("request", request);
            context.startActivity(intent);
        }
    }

    public final void onCreate(Activity activity) {
        Unit unit;
        LoginEntrance loginEntrance;
        Intrinsics.checkNotNullParameter(activity, "activity");
        LoginRequest loginRequest = (LoginRequest) activity.getIntent().getParcelableExtra("request");
        if (loginRequest != null) {
            try {
                for (LoginHandler loginHandler : this.loginHandlers) {
                    if (loginHandler.canHandle(activity, loginRequest)) {
                        LoginManager loginManager = LoginManager.INSTANCE;
                        if (loginHandler instanceof CloudLoginHandler) {
                            loginEntrance = LoginEntrance.CLOUD;
                        } else if (loginHandler instanceof ClientLoginHandler) {
                            loginEntrance = LoginEntrance.CLIENT;
                        } else {
                            loginEntrance = loginHandler instanceof PhoneLoginHandler ? LoginEntrance.CLIENT : LoginEntrance.WEB;
                        }
                        loginManager.setCurrentLoginEntrance$tap_login_release(loginEntrance);
                        JSONObject jSONObject = new JSONObject(loginRequest.getTrackInfo());
                        jSONObject.put("tapsdk_login_type", LoginManager.INSTANCE.getLoginType$tap_login_release());
                        String jSONObject2 = jSONObject.toString();
                        Intrinsics.checkNotNullExpressionValue(jSONObject2, "JSONObject(it.trackInfo)…             }.toString()");
                        loginRequest.setTrackInfo(jSONObject2);
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("request", loginRequest);
                        FragmentTransaction beginTransaction = activity.getFragmentManager().beginTransaction();
                        Fragment fragment = loginHandler.getFragment();
                        fragment.setArguments(bundle);
                        Unit unit2 = Unit.INSTANCE;
                        beginTransaction.add(R.id.content, fragment, FRAGMENT_TAG);
                        beginTransaction.commit();
                        LoginTracker.INSTANCE.trackLoginStart$tap_login_release("loginWithScopes", LoginManager.INSTANCE.getSessionId$tap_login_release(), MapsKt.mapOf(TuplesKt.to(TapEventParamConstants.PARAM_SUB_LOGIN_TYPE, LoginManager.INSTANCE.getLoginType$tap_login_release()), TuplesKt.to("scopes", ArraysKt.joinToString$default(loginRequest.getScopes(), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null))));
                        return;
                    }
                }
            } catch (Exception e) {
                TapLogger.loge("TapLoginLog", "login handler error", e);
            }
            fallbackToWeb(activity, loginRequest);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LoginManager.INSTANCE.notifyFail(null, new TapTapException("request cannot be null"));
            activity.finish();
        }
    }

    public final void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag(FRAGMENT_TAG);
        if (findFragmentByTag != null) {
            findFragmentByTag.onActivityResult(requestCode, resultCode, data);
        }
    }

    public final void fallbackToWeb(Activity activity, LoginRequest request) {
        Unit unit;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (request != null) {
            LoginManager.INSTANCE.setCurrentLoginEntrance$tap_login_release(LoginEntrance.WEB);
            JSONObject jSONObject = new JSONObject(request.getTrackInfo());
            jSONObject.put("tapsdk_login_type", LoginManager.INSTANCE.getLoginType$tap_login_release());
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "JSONObject(it.trackInfo)…\n            }.toString()");
            request.setTrackInfo(jSONObject2);
            FragmentTransaction beginTransaction = activity.getFragmentManager().beginTransaction();
            Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag(FRAGMENT_TAG);
            if (findFragmentByTag != null) {
                Intrinsics.checkNotNullExpressionValue(findFragmentByTag, "findFragmentByTag(FRAGMENT_TAG)");
                beginTransaction.remove(findFragmentByTag);
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("request", request);
            Fragment fragment = this.webHandler.getFragment();
            fragment.setArguments(bundle);
            Unit unit2 = Unit.INSTANCE;
            beginTransaction.add(R.id.content, fragment, FRAGMENT_TAG);
            beginTransaction.commit();
            LoginTracker.INSTANCE.trackLoginStart$tap_login_release("loginWithScopes", LoginManager.INSTANCE.getSessionId$tap_login_release(), MapsKt.mapOf(TuplesKt.to(TapEventParamConstants.PARAM_SUB_LOGIN_TYPE, LoginManager.INSTANCE.getLoginType$tap_login_release()), TuplesKt.to("scopes", ArraysKt.joinToString$default(request.getScopes(), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null))));
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LoginManager.INSTANCE.notifyFail(null, new TapTapException("request cannot be null"));
            activity.finish();
        }
    }

    public final void onBackPressed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag(FRAGMENT_TAG);
        if (findFragmentByTag == null || !(findFragmentByTag instanceof WebLoginFragment)) {
            return;
        }
        ((WebLoginFragment) findFragmentByTag).onBackPressed();
    }
}
