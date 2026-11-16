package com.taptap.sdk.login.internal.net;

import android.net.Uri;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.exception.TapTapException;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.TapHttpExtKt;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpBackoff;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpNoBodyParam;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.login.AccessToken;
import com.taptap.sdk.login.internal.bean.Profile;
import com.taptap.sdk.login.internal.util.CodeUtil;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NetworkClient.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.login.internal.net.NetworkClient$fetchProfile$1", f = "NetworkClient.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class NetworkClient$fetchProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AccessToken $accessToken;
    final /* synthetic */ HttpCallback<Profile> $callback;
    final /* synthetic */ String $path;
    int label;
    final /* synthetic */ NetworkClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkClient$fetchProfile$1(NetworkClient networkClient, String str, AccessToken accessToken, HttpCallback<Profile> httpCallback, Continuation<? super NetworkClient$fetchProfile$1> continuation) {
        super(2, continuation);
        this.this$0 = networkClient;
        this.$path = str;
        this.$accessToken = accessToken;
        this.$callback = httpCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NetworkClient$fetchProfile$1(this.this$0, this.$path, this.$accessToken, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((NetworkClient$fetchProfile$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String openAPIDomain;
        String str;
        TapHttp openAPIHttp;
        Object enqueueResult;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Uri.Builder scheme = new Uri.Builder().scheme("https");
            openAPIDomain = this.this$0.getOpenAPIDomain();
            Uri.Builder path = scheme.authority(openAPIDomain).path(this.$path);
            str = this.this$0.clientId;
            String uri = path.appendQueryParameter("client_id", str).build().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "Builder()\n              …      .build().toString()");
            openAPIHttp = this.this$0.getOpenAPIHttp();
            TapHttpNoBodyParam tapHttpNoBodyParam = openAPIHttp.get(uri);
            String authorization = CodeUtil.INSTANCE.getAuthorization(uri, "GET", this.$accessToken.getKid(), this.$accessToken.getMacKey());
            if (authorization == null) {
                authorization = "";
            }
            AbsTapHttpParam<TapHttpNoBodyParam> retryBackoff = ((TapHttpNoBodyParam) AbsTapHttpParam.addHeader$default(tapHttpNoBodyParam, "Authorization", authorization, false, 4, null)).retryBackoff(new TapHttpBackoff.None());
            TapHttpCall tapHttpCall = new TapHttpCall(retryBackoff, new TapHttpParser.SdkDefaultParser(null, new Function1<JsonObject, Profile>() { // from class: com.taptap.sdk.login.internal.net.NetworkClient$fetchProfile$1$invokeSuspend$$inlined$toCall$1
                /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.taptap.sdk.login.internal.bean.Profile] */
                @Override // kotlin.jvm.functions.Function1
                public final Profile invoke(JsonObject jsonObject) {
                    TapJson tapJson = TapJson.INSTANCE;
                    try {
                        if (jsonObject == null) {
                            return null;
                        }
                        Json json = tapJson.getJson();
                        KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.nullableTypeOf(Profile.class));
                        Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                        return json.decodeFromJsonElement(serializer, jsonObject);
                    } catch (Exception e) {
                        TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                        return null;
                    }
                }
            }, 1, null), new TapHttpRetry.SdkDefault(retryBackoff.getBackoffHandler()));
            final HttpCallback<Profile> httpCallback = this.$callback;
            this.label = 1;
            enqueueResult = TapHttpExtKt.enqueueResult(tapHttpCall, new Function1<Profile, Unit>() { // from class: com.taptap.sdk.login.internal.net.NetworkClient$fetchProfile$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Profile profile) {
                    invoke2(profile);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Profile it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    httpCallback.onSuccess(it);
                }
            }, this);
            if (enqueueResult == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            enqueueResult = ((Result) obj).getValue();
        }
        HttpCallback<Profile> httpCallback2 = this.$callback;
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(enqueueResult);
        if (m59exceptionOrNullimpl != null) {
            TapLogger.logd("TapHttp", m59exceptionOrNullimpl);
            httpCallback2.onFail(new TapTapException("Fail to fetch profile"));
        }
        return Unit.INSTANCE;
    }
}
