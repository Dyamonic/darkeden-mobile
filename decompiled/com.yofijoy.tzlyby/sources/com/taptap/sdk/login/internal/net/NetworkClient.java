package com.taptap.sdk.login.internal.net;

import android.os.Build;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.callback.TapTapCallback;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.identifier.TapIdentifierUtil;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.login.AccessToken;
import com.taptap.sdk.login.TapTapAccount;
import com.taptap.sdk.login.internal.AccountManager;
import com.taptap.sdk.login.internal.bean.Profile;
import com.taptap.sdk.login.internal.util.Constants;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: NetworkClient.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015J\b\u0010\u0017\u001a\u00020\u0003H\u0002J\b\u0010\u0018\u001a\u00020\u0003H\u0002J$\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u001cJ.\u0010\u001d\u001a\u00020\u00112\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00110\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00110\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u000e\u0010\n¨\u0006#"}, d2 = {"Lcom/taptap/sdk/login/internal/net/NetworkClient;", "", "clientId", "", "regionType", "", "(Ljava/lang/String;I)V", "openAPIHttp", "Lcom/taptap/sdk/kit/internal/http/TapHttp;", "getOpenAPIHttp", "()Lcom/taptap/sdk/kit/internal/http/TapHttp;", "openAPIHttp$delegate", "Lkotlin/Lazy;", "tokenHttp", "getTokenHttp", "tokenHttp$delegate", "fetchProfile", "", "accessToken", "Lcom/taptap/sdk/login/AccessToken;", "callback", "Lcom/taptap/sdk/login/internal/net/HttpCallback;", "Lcom/taptap/sdk/login/internal/bean/Profile;", "getOpenAPIDomain", "getTokenDomain", "loginWithCode", "code", "codeVerifier", "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;", "refreshToken", "onSuccess", "Lkotlin/Function1;", "onFail", "", "Companion", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NetworkClient {
    private static final CoroutineScope loginNetworkScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain()));
    private final String clientId;

    /* renamed from: openAPIHttp$delegate, reason: from kotlin metadata */
    private final Lazy openAPIHttp;
    private final int regionType;

    /* renamed from: tokenHttp$delegate, reason: from kotlin metadata */
    private final Lazy tokenHttp;

    public NetworkClient(String clientId, int i) {
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        this.clientId = clientId;
        this.regionType = i;
        this.openAPIHttp = LazyKt.lazy(new Function0<TapHttp>() { // from class: com.taptap.sdk.login.internal.net.NetworkClient$openAPIHttp$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TapHttp invoke() {
                String openAPIDomain;
                TapHttp.Builder newBuilder = TapHttp.INSTANCE.newBuilder(Constants.TAG, "4.5.4");
                openAPIDomain = NetworkClient.this.getOpenAPIDomain();
                return newBuilder.domain(openAPIDomain).signHandler(new TapSignLogin()).build();
            }
        });
        this.tokenHttp = LazyKt.lazy(new Function0<TapHttp>() { // from class: com.taptap.sdk.login.internal.net.NetworkClient$tokenHttp$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TapHttp invoke() {
                String tokenDomain;
                TapHttp.Builder newBuilder = TapHttp.INSTANCE.newBuilder(Constants.TAG, "4.5.4");
                tokenDomain = NetworkClient.this.getTokenDomain();
                return newBuilder.domain(tokenDomain).signHandler(new TapSignLogin()).build();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TapHttp getOpenAPIHttp() {
        return (TapHttp) this.openAPIHttp.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TapHttp getTokenHttp() {
        return (TapHttp) this.tokenHttp.getValue();
    }

    public final void refreshToken(Function1<? super AccessToken, Unit> onSuccess, Function1<? super Throwable, Unit> onFail) {
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(onFail, "onFail");
        TapTapAccount account = AccountManager.INSTANCE.getAccount();
        if (account == null) {
            return;
        }
        Pair[] pairArr = new Pair[5];
        pairArr[0] = TuplesKt.to("client_id", this.clientId);
        pairArr[1] = TuplesKt.to("grant_type", "refresh_token");
        pairArr[2] = TuplesKt.to("token", account.getAccessToken().getKid());
        pairArr[3] = TuplesKt.to("token_type_hint", com.tencent.connect.common.Constants.PARAM_ACCESS_TOKEN);
        TapJson tapJson = TapJson.INSTANCE;
        HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to(TapEventParamConstants.PARAM_DEVICE_ID, Build.MANUFACTURER + TokenParser.SP + Build.MODEL), TuplesKt.to("uuid", TapIdentifierUtil.INSTANCE.getInstallUUID()));
        String str = null;
        try {
            Json json = tapJson.getJson();
            KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(HashMap.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            str = json.encodeToString(serializer, hashMapOf);
        } catch (Exception e) {
            TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
        }
        if (str == null) {
            str = "";
        }
        pairArr[4] = TuplesKt.to("info", str);
        BuildersKt__Builders_commonKt.launch$default(loginNetworkScope, null, null, new NetworkClient$refreshToken$1(this, MapsKt.hashMapOf(pairArr), onSuccess, onFail, null), 3, null);
    }

    public final void fetchProfile(AccessToken accessToken, HttpCallback<Profile> callback) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(loginNetworkScope, null, null, new NetworkClient$fetchProfile$1(this, accessToken.getScopes().contains("public_profile") ? "/account/profile/v1" : "/account/basic-info/v1", accessToken, callback, null), 3, null);
    }

    public final void loginWithCode(String code, String codeVerifier, TapTapCallback<AccessToken> callback) {
        String str;
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Pair[] pairArr = new Pair[9];
        pairArr[0] = TuplesKt.to("client_id", this.clientId);
        pairArr[1] = TuplesKt.to("grant_type", "authorization_code");
        pairArr[2] = TuplesKt.to("secret_type", "hmac-sha-1");
        pairArr[3] = TuplesKt.to("code", code);
        pairArr[4] = TuplesKt.to("redirect_uri", "tapoauth://authorize");
        pairArr[5] = TuplesKt.to("code_verifier", codeVerifier);
        pairArr[6] = TuplesKt.to(ClientCookie.VERSION_ATTR, "4.5.4");
        pairArr[7] = TuplesKt.to(com.tencent.connect.common.Constants.PARAM_PLATFORM, "android");
        TapJson tapJson = TapJson.INSTANCE;
        HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to(TapEventParamConstants.PARAM_DEVICE_ID, Build.MANUFACTURER + TokenParser.SP + Build.MODEL), TuplesKt.to("uuid", TapIdentifierUtil.INSTANCE.getInstallUUID()));
        try {
            Json json = tapJson.getJson();
            KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(HashMap.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            str = json.encodeToString(serializer, hashMapOf);
        } catch (Exception e) {
            TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
            str = null;
        }
        if (str == null) {
            str = "";
        }
        pairArr[8] = TuplesKt.to("info", str);
        BuildersKt__Builders_commonKt.launch$default(loginNetworkScope, null, null, new NetworkClient$loginWithCode$1(this, MapsKt.hashMapOf(pairArr), callback, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getOpenAPIDomain() {
        return TapTapKit.INSTANCE.isRND() ? this.regionType == 0 ? "open.api.xdrnd.cn" : "open.api.xdrnd.com" : this.regionType == 0 ? "open.tapapis.cn" : "open.tapapis.com";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getTokenDomain() {
        return TapTapKit.INSTANCE.isRND() ? this.regionType == 0 ? "oauth.api.xdrnd.cn" : "oauth.api.xdrnd.com" : this.regionType == 0 ? "accounts.tapapis.cn" : "accounts.tapapis.com";
    }
}
