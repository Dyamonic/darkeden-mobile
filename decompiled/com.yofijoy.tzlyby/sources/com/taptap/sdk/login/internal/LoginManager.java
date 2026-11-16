package com.taptap.sdk.login.internal;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.net.Uri;
import android.webkit.CookieManager;
import com.taptap.sdk.compliance.api.ComplianceService;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.initializer.api.check.TapSdkChecker;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.callback.TapTapCallback;
import com.taptap.sdk.kit.internal.exception.TapTapException;
import com.taptap.sdk.kit.internal.extensions.StringExtKt;
import com.taptap.sdk.kit.internal.http.TapErrorConstants;
import com.taptap.sdk.kit.internal.http.TapHttpException;
import com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil;
import com.taptap.sdk.login.AccessToken;
import com.taptap.sdk.login.R;
import com.taptap.sdk.login.TapTapAccount;
import com.taptap.sdk.login.internal.bean.LoginRequest;
import com.taptap.sdk.login.internal.bean.LoginResponse;
import com.taptap.sdk.login.internal.bean.Profile;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.taptap.sdk.login.internal.net.HttpCallback;
import com.taptap.sdk.login.internal.net.NetworkClient;
import com.taptap.sdk.login.internal.ui.LoginToastHelper;
import com.taptap.sdk.login.internal.util.Constants;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* compiled from: LoginManager.kt */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010%\u001a\u00020&H\u0002J7\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070+2\u0006\u0010,\u001a\u00020\u00192\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010.J\b\u0010/\u001a\u00020&H\u0002J&\u00100\u001a\u00020\u00072\u0006\u0010(\u001a\u00020)2\u0006\u0010,\u001a\u00020\u00192\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000702H\u0002J\u0016\u00103\u001a\u00020\u00072\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u000702H\u0002J\b\u00105\u001a\u0004\u0018\u00010\u001cJ\r\u00106\u001a\u00020\u0007H\u0000¢\u0006\u0002\b7J\r\u00108\u001a\u00020\u0007H\u0000¢\u0006\u0002\b9J\b\u0010:\u001a\u00020\u0007H\u0002J\"\u0010;\u001a\u00020&2\u0006\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010?2\b\u0010@\u001a\u0004\u0018\u00010AJ(\u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020\u00072\b\u0010>\u001a\u0004\u0018\u00010?2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020&0EH\u0002J(\u0010F\u001a\u00020&2\u0006\u0010G\u001a\u00020\u00052\b\u0010>\u001a\u0004\u0018\u00010?2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020&0EH\u0002J\u0016\u0010H\u001a\u00020&2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!J/\u0010I\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070+2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0004¢\u0006\u0002\u0010JJ7\u0010I\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070+2\u0006\u0010,\u001a\u00020\u00192\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0004¢\u0006\u0002\u0010.J\u0006\u0010K\u001a\u00020&J\u0010\u0010L\u001a\u00020&2\b\u0010>\u001a\u0004\u0018\u00010?J\u0018\u0010M\u001a\u00020&2\b\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010N\u001a\u00020OJ\u0010\u0010P\u001a\u00020&2\b\u0010>\u001a\u0004\u0018\u00010?J\u0010\u0010Q\u001a\u00020&2\b\u0010(\u001a\u0004\u0018\u00010)J3\u0010R\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070+2\u0006\u0010,\u001a\u00020\u00192\u0006\u0010S\u001a\u00020\u0019H\u0002¢\u0006\u0002\u0010TR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u001d@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020!@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u0006U"}, d2 = {"Lcom/taptap/sdk/login/internal/LoginManager;", "", "()V", "authCallback", "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;", "Lcom/taptap/sdk/login/AccessToken;", "<set-?>", "", "clientId", "getClientId", "()Ljava/lang/String;", "complianceService", "Lcom/taptap/sdk/compliance/api/ComplianceService;", "getComplianceService", "()Lcom/taptap/sdk/compliance/api/ComplianceService;", "complianceService$delegate", "Lkotlin/Lazy;", "currentLoginEntrance", "Lcom/taptap/sdk/login/internal/LoginEntrance;", "getCurrentLoginEntrance$tap_login_release", "()Lcom/taptap/sdk/login/internal/LoginEntrance;", "setCurrentLoginEntrance$tap_login_release", "(Lcom/taptap/sdk/login/internal/LoginEntrance;)V", "currentSessionId", "isHandlingResponse", "", "isInitialized", "loginCallback", "Lcom/taptap/sdk/login/TapTapAccount;", "Lcom/taptap/sdk/login/internal/net/NetworkClient;", "networkClient", "getNetworkClient", "()Lcom/taptap/sdk/login/internal/net/NetworkClient;", "", "regionType", "getRegionType", "()I", "assertInitialized", "", "authWithScope", "activity", "Landroid/app/Activity;", "scopes", "", "isPreApproved", "callback", "(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V", "clearLoginDomainCookies", "generateInfo", "requestScope", "", "generateTrackInfo", "requestedScope", "getCurrentTapAccount", "getLoginType", "getLoginType$tap_login_release", "getSessionId", "getSessionId$tap_login_release", "getWebUrl", "handleLoginResponse", "context", "Landroid/content/Context;", "request", "Lcom/taptap/sdk/login/internal/bean/LoginRequest;", "response", "Lcom/taptap/sdk/login/internal/bean/LoginResponse;", "handleLoginWithCode", "code", "onSuccessCallback", "Lkotlin/Function0;", "handleLoginWithToken", "token", "init", "loginWithScope", "(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V", "logout", "notifyCancel", "notifyFail", "exception", "Lcom/taptap/sdk/kit/internal/exception/TapTapException;", "onActivityDestroy", "onBackPressed", "startLoginProcess", "isAuth", "(Landroid/app/Activity;[Ljava/lang/String;ZZ)V", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class LoginManager {
    public static final LoginManager INSTANCE = new LoginManager();
    private static TapTapCallback<AccessToken> authCallback;
    private static String clientId;

    /* renamed from: complianceService$delegate, reason: from kotlin metadata */
    private static final Lazy complianceService;
    private static LoginEntrance currentLoginEntrance;
    private static volatile String currentSessionId;
    private static boolean isHandlingResponse;
    private static boolean isInitialized;
    private static TapTapCallback<TapTapAccount> loginCallback;
    private static NetworkClient networkClient;
    private static int regionType;

    /* compiled from: LoginManager.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginEntrance.values().length];
            try {
                iArr[LoginEntrance.CLOUD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoginEntrance.CLIENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoginEntrance.WEB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private LoginManager() {
    }

    public final NetworkClient getNetworkClient() {
        NetworkClient networkClient2 = networkClient;
        if (networkClient2 != null) {
            return networkClient2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("networkClient");
        return null;
    }

    public final String getClientId() {
        String str = clientId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("clientId");
        return null;
    }

    public final int getRegionType() {
        return regionType;
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        complianceService = LazyKt.lazy(new Function0<ComplianceService>() { // from class: com.taptap.sdk.login.internal.LoginManager$special$$inlined$injectOrNull$1
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [com.taptap.sdk.compliance.api.ComplianceService, com.taptap.sdk.servicemanager.ServiceManager$Service] */
            @Override // kotlin.jvm.functions.Function0
            public final ComplianceService invoke() {
                return ServiceManager.INSTANCE.getService(ComplianceService.class);
            }
        });
        currentSessionId = "";
        currentLoginEntrance = LoginEntrance.WEB;
    }

    private final ComplianceService getComplianceService() {
        return (ComplianceService) complianceService.getValue();
    }

    public final LoginEntrance getCurrentLoginEntrance$tap_login_release() {
        return currentLoginEntrance;
    }

    public final void setCurrentLoginEntrance$tap_login_release(LoginEntrance loginEntrance) {
        Intrinsics.checkNotNullParameter(loginEntrance, "<set-?>");
        currentLoginEntrance = loginEntrance;
    }

    public final void init(String clientId2, int regionType2) {
        Intrinsics.checkNotNullParameter(clientId2, "clientId");
        if (isInitialized) {
            TapLogger.logd(Constants.TAG, "LoginManager is already initialized, do not init again");
            return;
        }
        AccountManager.INSTANCE.init();
        clientId = clientId2;
        regionType = regionType2;
        networkClient = new NetworkClient(clientId2, regionType2);
        getNetworkClient().refreshToken(new Function1<AccessToken, Unit>() { // from class: com.taptap.sdk.login.internal.LoginManager$init$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AccessToken accessToken) {
                invoke2(accessToken);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(final AccessToken token) {
                Intrinsics.checkNotNullParameter(token, "token");
                LoginManager.INSTANCE.getNetworkClient().fetchProfile(token, new HttpCallback<Profile>() { // from class: com.taptap.sdk.login.internal.LoginManager$init$1.1
                    @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
                    public void onFail(TapTapException exception) {
                        Intrinsics.checkNotNullParameter(exception, "exception");
                    }

                    @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
                    public void onSuccess(Profile result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        AccountManager.INSTANCE.setAccount(new TapTapAccount(AccessToken.this, result.getOpenId(), result.getUnionId(), result.getName(), result.getAvatar(), result.getEmail()));
                    }
                });
            }
        }, new Function1<Throwable, Unit>() { // from class: com.taptap.sdk.login.internal.LoginManager$init$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                if ((exception instanceof TapHttpException.ServerError) && Intrinsics.areEqual(((TapHttpException.ServerError) exception).getError().getError(), TapErrorConstants.ERROR_INVALID_GRANT)) {
                    AccountManager.INSTANCE.clearCache();
                }
            }
        });
        isInitialized = true;
    }

    public final void authWithScope(Activity activity, String[] scopes, boolean isPreApproved, TapTapCallback<AccessToken> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        Intrinsics.checkNotNullParameter(callback, "callback");
        assertInitialized();
        if (authCallback != null) {
            callback.onFail(new TapTapException("Another auth request is in progress"));
            return;
        }
        authCallback = callback;
        currentSessionId = StringExtKt.generateSessionId();
        startLoginProcess(activity, scopes, isPreApproved, true);
    }

    public final void loginWithScope(Activity activity, String[] scopes, TapTapCallback<TapTapAccount> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loginWithScope(activity, scopes, false, callback);
    }

    public final void loginWithScope(Activity activity, String[] scopes, boolean isPreApproved, TapTapCallback<TapTapAccount> callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (TapSdkChecker.INSTANCE.checkInitialize()) {
            assertInitialized();
            if (loginCallback != null) {
                callback.onFail(new TapTapException("Another login request is in progress"));
                return;
            }
            currentSessionId = StringExtKt.generateSessionId();
            LoginTracker.INSTANCE.trackFuncStart$tap_login_release("loginWithScopes", getSessionId$tap_login_release());
            if (scopes.length == 0) {
                LoginTracker.INSTANCE.trackFail$tap_login_release("loginWithScopes", getSessionId$tap_login_release(), MapsKt.mapOf(TuplesKt.to(TapEventParamConstants.PARAM_SUB_LOGIN_TYPE, getLoginType$tap_login_release())), -1, "Scope is empty");
                callback.onFail(new TapTapException("Scope cannot be empty"));
            } else {
                loginCallback = callback;
                startLoginProcess(activity, scopes, isPreApproved, false);
            }
        }
    }

    private final void startLoginProcess(Activity activity, String[] scopes, boolean isPreApproved, boolean isAuth) {
        ComplianceService complianceService2;
        String ageRangeScope;
        List<String> mutableList = ArraysKt.toMutableList(scopes);
        if (!isAuth && (complianceService2 = getComplianceService()) != null && (ageRangeScope = complianceService2.getAgeRangeScope()) != null && !mutableList.contains(ageRangeScope)) {
            mutableList.add(ageRangeScope);
        }
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        LoginActivityImpl.INSTANCE.startLoginActivity(activity, new LoginRequest(uuid, getClientId(), (String[]) mutableList.toArray(new String[0]), "4.5.4", generateInfo(activity, isPreApproved, mutableList), generateTrackInfo(mutableList), regionType, isPreApproved, null, null, null, null, null, null, null, isAuth, 32512, null));
    }

    public final void handleLoginResponse(final Context context, LoginRequest request, final LoginResponse response) {
        Unit unit;
        Intrinsics.checkNotNullParameter(context, "context");
        if (request == null || response == null || !Intrinsics.areEqual(request.getState(), response.getId())) {
            notifyFail(request, new TapTapException("Fail to login"));
            return;
        }
        if (response.getCancel()) {
            notifyCancel(request);
            return;
        }
        String errorMessage = response.getErrorMessage();
        if (!(errorMessage == null || errorMessage.length() == 0)) {
            if (Intrinsics.areEqual(response.getErrorMessage(), TapErrorConstants.ERROR_ACCESS_DENIED)) {
                notifyCancel(request);
                return;
            } else {
                String errorMessage2 = response.getErrorMessage();
                notifyFail(request, new TapTapException(errorMessage2 != null ? errorMessage2 : "Fail to login"));
                return;
            }
        }
        Function0<Unit> function0 = new Function0<Unit>() { // from class: com.taptap.sdk.login.internal.LoginManager$handleLoginResponse$onSuccessCallback$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                String serverUri = LoginResponse.this.getServerUri();
                if (serverUri != null) {
                    Context context2 = context;
                    try {
                        String queryParameter = Uri.parse(serverUri).getQueryParameter("name");
                        if (queryParameter != null) {
                            LoginToastHelper loginToastHelper = LoginToastHelper.INSTANCE;
                            Context applicationContext = context2.getApplicationContext();
                            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
                            String string = context2.getResources().getString(R.string.login_account_logged_tip, queryParameter);
                            Intrinsics.checkNotNullExpressionValue(string, "context.resources.getStr…account_logged_tip, name)");
                            loginToastHelper.showToast(applicationContext, string);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        };
        String code = response.getCode();
        if (code != null) {
            LoginManager loginManager = INSTANCE;
            isHandlingResponse = true;
            loginManager.handleLoginWithCode(code, request, function0);
            unit = Unit.INSTANCE;
        } else {
            AccessToken token = response.getToken();
            if (token != null) {
                LoginManager loginManager2 = INSTANCE;
                isHandlingResponse = true;
                loginManager2.handleLoginWithToken(token, request, function0);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
        }
        if (unit == null) {
            notifyFail(request, new TapTapException("Fail to login"));
        }
    }

    private final void handleLoginWithCode(String code, final LoginRequest request, final Function0<Unit> onSuccessCallback) {
        String str;
        String codeVerifier;
        LoginTracker loginTracker = LoginTracker.INSTANCE;
        String str2 = "";
        if (request == null || (str = request.getTrackInfo()) == null) {
            str = "";
        }
        loginTracker.trackAuthCode$tap_login_release(str);
        if (request != null && (codeVerifier = request.getCodeVerifier()) != null) {
            str2 = codeVerifier;
        }
        getNetworkClient().loginWithCode(code, str2, new HttpCallback<AccessToken>() { // from class: com.taptap.sdk.login.internal.LoginManager$handleLoginWithCode$1
            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onSuccess(AccessToken result) {
                Intrinsics.checkNotNullParameter(result, "result");
                LoginManager.INSTANCE.handleLoginWithToken(result, LoginRequest.this, onSuccessCallback);
            }

            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onFail(TapTapException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                LoginManager.INSTANCE.notifyFail(LoginRequest.this, new TapTapException("Fail to login"));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleLoginWithToken(final AccessToken token, final LoginRequest request, final Function0<Unit> onSuccessCallback) {
        if (request != null ? request.isAuth() : false) {
            isHandlingResponse = false;
            TapTapCallback<AccessToken> tapTapCallback = authCallback;
            if (tapTapCallback != null) {
                tapTapCallback.onSuccess(token);
            }
            authCallback = null;
            return;
        }
        getNetworkClient().fetchProfile(token, new HttpCallback<Profile>() { // from class: com.taptap.sdk.login.internal.LoginManager$handleLoginWithToken$1
            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onSuccess(Profile result) {
                TapTapCallback tapTapCallback2;
                Intrinsics.checkNotNullParameter(result, "result");
                TapTapAccount tapTapAccount = new TapTapAccount(AccessToken.this, result.getOpenId(), result.getUnionId(), result.getName(), result.getAvatar(), result.getEmail());
                AccountManager.INSTANCE.setAccount(tapTapAccount);
                onSuccessCallback.invoke();
                LoginTracker.INSTANCE.trackSuccess$tap_login_release("loginWithScopes", LoginManager.INSTANCE.getSessionId$tap_login_release(), MapsKt.mapOf(TuplesKt.to(TapEventParamConstants.PARAM_SUB_LOGIN_TYPE, LoginManager.INSTANCE.getLoginType$tap_login_release())));
                LoginManager loginManager = LoginManager.INSTANCE;
                LoginManager.isHandlingResponse = false;
                tapTapCallback2 = LoginManager.loginCallback;
                if (tapTapCallback2 != null) {
                    tapTapCallback2.onSuccess(tapTapAccount);
                }
                LoginManager loginManager2 = LoginManager.INSTANCE;
                LoginManager.loginCallback = null;
            }

            @Override // com.taptap.sdk.kit.internal.callback.TapTapCallback
            public void onFail(TapTapException exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                LoginManager.INSTANCE.notifyFail(request, new TapTapException("Fail to fetch profile"));
            }
        });
    }

    public final TapTapAccount getCurrentTapAccount() {
        assertInitialized();
        return AccountManager.INSTANCE.getAccount();
    }

    public final void logout() {
        assertInitialized();
        AccountManager.INSTANCE.clearCache();
        clearLoginDomainCookies();
    }

    private final void clearLoginDomainCookies() {
        List split$default;
        String webUrl = getWebUrl();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(webUrl);
        if (cookie == null || (split$default = StringsKt.split$default((CharSequence) cookie, new String[]{";"}, false, 0, 6, (Object) null)) == null) {
            return;
        }
        Iterator it = split$default.iterator();
        while (it.hasNext()) {
            List<String> split$default2 = StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 0, 6, (Object) null);
            for (String str : split$default2) {
                cookieManager.setCookie(webUrl, StringsKt.trim((CharSequence) split$default2.get(0)).toString() + "=;Max-Age=0");
            }
        }
    }

    private final String getWebUrl() {
        return TapTapKit.INSTANCE.isRND() ? regionType == 0 ? "https://accounts.xdrnd.cn/authorize" : "https://accounts-io.xdrnd.com/authorize" : regionType == 0 ? "https://accounts.taptap.cn/authorize" : "https://www.taptapauth.com/authorize";
    }

    public final void notifyCancel(LoginRequest request) {
        isHandlingResponse = false;
        if (request != null ? request.isAuth() : false) {
            TapTapCallback<AccessToken> tapTapCallback = authCallback;
            if (tapTapCallback != null) {
                tapTapCallback.onCancel();
            }
            authCallback = null;
            return;
        }
        TapTapCallback<TapTapAccount> tapTapCallback2 = loginCallback;
        if (tapTapCallback2 != null) {
            LoginTracker loginTracker = LoginTracker.INSTANCE;
            LoginManager loginManager = INSTANCE;
            loginTracker.trackCancel$tap_login_release("loginWithScopes", loginManager.getSessionId$tap_login_release(), MapsKt.mapOf(TuplesKt.to(TapEventParamConstants.PARAM_SUB_LOGIN_TYPE, loginManager.getLoginType$tap_login_release())));
            tapTapCallback2.onCancel();
        }
        loginCallback = null;
    }

    public final void onBackPressed(Activity activity) {
        FragmentManager fragmentManager;
        Fragment findFragmentByTag;
        if (activity == null || (fragmentManager = activity.getFragmentManager()) == null || (findFragmentByTag = fragmentManager.findFragmentByTag(LoginActivityImpl.FRAGMENT_TAG)) == null || !(findFragmentByTag instanceof WebLoginFragment)) {
            return;
        }
        ((WebLoginFragment) findFragmentByTag).onBackPressed();
    }

    public final void onActivityDestroy(LoginRequest request) {
        if (isHandlingResponse) {
            return;
        }
        notifyCancel(request);
    }

    public final void notifyFail(LoginRequest request, TapTapException exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        isHandlingResponse = false;
        if (request != null ? request.isAuth() : false) {
            TapTapCallback<AccessToken> tapTapCallback = authCallback;
            if (tapTapCallback != null) {
                tapTapCallback.onFail(exception);
            }
            authCallback = null;
            return;
        }
        TapTapCallback<TapTapAccount> tapTapCallback2 = loginCallback;
        if (tapTapCallback2 != null) {
            LoginTracker loginTracker = LoginTracker.INSTANCE;
            LoginManager loginManager = INSTANCE;
            loginTracker.trackFail$tap_login_release("loginWithScopes", loginManager.getSessionId$tap_login_release(), MapsKt.mapOf(TuplesKt.to(TapEventParamConstants.PARAM_SUB_LOGIN_TYPE, loginManager.getLoginType$tap_login_release())), -1, exception.getMessage());
            tapTapCallback2.onFail(exception);
        }
        loginCallback = null;
    }

    private final void assertInitialized() {
        if (!isInitialized) {
            throw new TapTapException("TapLogin has not been initialized!");
        }
    }

    public final String getLoginType$tap_login_release() {
        int i = WhenMappings.$EnumSwitchMapping$0[currentLoginEntrance.ordinal()];
        if (i == 1) {
            return "cloud";
        }
        if (i == 2) {
            return "mobile_client";
        }
        if (i == 3) {
            return "embedded_web";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String generateTrackInfo(List<String> requestedScope) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("scopes", CollectionsKt.joinToString$default(requestedScope, ",", null, null, 0, null, null, 62, null));
        LoginManager loginManager = INSTANCE;
        jSONObject.put("session_id", loginManager.getSessionId$tap_login_release());
        jSONObject.put("session_type", "tapsdk");
        jSONObject.put("tapsdk_client_id", loginManager.getClientId());
        jSONObject.put("tapsdk_login_type", loginManager.getLoginType$tap_login_release());
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "JSONObject().apply {\n   …e())\n        }.toString()");
        return jSONObject2;
    }

    public final String getSessionId$tap_login_release() {
        String str = currentSessionId;
        if (str.length() == 0) {
            str = StringExtKt.generateSessionId();
            currentSessionId = str;
        }
        return str;
    }

    private final String generateInfo(Activity activity, boolean isPreApproved, List<String> requestScope) {
        return "biz_source=GAME&client_id=" + getClientId() + "&uuid=" + TapIdentifierUtil.INSTANCE.getInstallUUID() + "&name=TapLoginAndroid&scopes=" + CollectionsKt.joinToString$default(requestScope, ",", null, null, 0, null, null, 62, null) + "&session_id=" + getSessionId$tap_login_release() + "&session_type=tapsdk&tapsdk_login_type=" + getLoginType$tap_login_release() + "&orientation=" + (activity.getResources().getConfiguration().orientation == 1 ? "vertical" : "horizontal") + "&version=4.5.4&version_code=405040000&preapproved=" + (isPreApproved ? 1 : 0);
    }
}
