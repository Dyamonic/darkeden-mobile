package com.taptap.sdk.update.internal;

import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import com.taptap.sdk.kit.internal.http.call.ITapHttpCall;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.ITapHttpResponseHandler;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpJsonParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpNoBodyParam;
import com.taptap.sdk.update.TapUpdateApiCallback;
import com.taptap.sdk.update.bean.UpdateResult;
import com.taptap.sdk.update.extension.SystemExtKt;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import org.json.JSONObject;

/* compiled from: TapUpdateApi.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JH\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0006\b\u0000\u0010\u0007\u0018\u00012\u0006\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000bH\u0086Hø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\f\u0010\rJT\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0006\b\u0000\u0010\u0007\u0018\u00012\u0006\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0086Hø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\u0010\u0010\u0011J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/taptap/sdk/update/internal/TapUpdateApi;", "", "()V", "cachedUpdateInfo", "Lcom/taptap/sdk/update/bean/UpdateResult;", "get", "Lkotlin/Result;", "T", ClientCookie.PATH_ATTR, "", "queryMap", "", "get-0E7RQCE", "(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "post", "body", "post-BWLJW6A", "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestUpdateInfo", "Lkotlinx/coroutines/Job;", BillingClientConstants.PACKAGE_NAME, "versionCode", "", "callback", "Lcom/taptap/sdk/update/TapUpdateApiCallback;", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapUpdateApi {
    public static final TapUpdateApi INSTANCE = new TapUpdateApi();
    private static UpdateResult cachedUpdateInfo;

    private TapUpdateApi() {
    }

    public static /* synthetic */ Job requestUpdateInfo$default(TapUpdateApi tapUpdateApi, String str, int i, TapUpdateApiCallback tapUpdateApiCallback, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        if ((i2 & 4) != 0) {
            tapUpdateApiCallback = null;
        }
        return tapUpdateApi.requestUpdateInfo(str, i, tapUpdateApiCallback);
    }

    public final Job requestUpdateInfo(String packageName, int versionCode, TapUpdateApiCallback callback) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return SystemExtKt.runAsync(new TapUpdateApi$requestUpdateInfo$1(packageName, versionCode, callback, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: get-0E7RQCE$default, reason: not valid java name */
    public static /* synthetic */ Object m42get0E7RQCE$default(TapUpdateApi tapUpdateApi, String str, Map map, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            map = new LinkedHashMap();
        }
        TapHttpNoBodyParam tapHttpNoBodyParam = TapUpdateApiKt.getNetApi().get(str);
        for (Map.Entry entry : map.entrySet()) {
            AbsTapHttpParam.addQuery$default(tapHttpNoBodyParam, (String) entry.getKey(), (String) entry.getValue(), false, 4, null);
            Unit unit = Unit.INSTANCE;
        }
        TapHttpNoBodyParam tapHttpNoBodyParam2 = tapHttpNoBodyParam;
        Intrinsics.needClassReification();
        TapHttpCall tapHttpCall = new TapHttpCall(tapHttpNoBodyParam2, new TapHttpParser.SdkDefaultParser(null, TapUpdateApi$get0E7RQCE$$inlined$toCall$1.INSTANCE, 1, 0 == true ? 1 : 0), new TapHttpRetry.SdkDefault(tapHttpNoBodyParam2.getBackoffHandler()));
        InlineMarker.mark(0);
        Object m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(tapHttpCall, 0L, continuation, 1, null);
        InlineMarker.mark(1);
        InlineMarker.mark(8);
        Object value = ((Result) m16enqueueResultgIAlus$default).getValue();
        InlineMarker.mark(9);
        return value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: get-0E7RQCE, reason: not valid java name */
    public final /* synthetic */ <T> Object m44get0E7RQCE(String str, Map<String, String> map, Continuation<? super Result<? extends T>> continuation) {
        TapHttpNoBodyParam tapHttpNoBodyParam = TapUpdateApiKt.getNetApi().get(str);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            AbsTapHttpParam.addQuery$default(tapHttpNoBodyParam, entry.getKey(), entry.getValue(), false, 4, null);
            Unit unit = Unit.INSTANCE;
        }
        TapHttpNoBodyParam tapHttpNoBodyParam2 = tapHttpNoBodyParam;
        Intrinsics.needClassReification();
        TapHttpCall tapHttpCall = new TapHttpCall(tapHttpNoBodyParam2, new TapHttpParser.SdkDefaultParser(null, TapUpdateApi$get0E7RQCE$$inlined$toCall$1.INSTANCE, 1, 0 == true ? 1 : 0), new TapHttpRetry.SdkDefault(tapHttpNoBodyParam2.getBackoffHandler()));
        InlineMarker.mark(0);
        Object m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(tapHttpCall, 0L, continuation, 1, null);
        InlineMarker.mark(1);
        InlineMarker.mark(8);
        Object value = ((Result) m16enqueueResultgIAlus$default).getValue();
        InlineMarker.mark(9);
        return value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: post-BWLJW6A$default, reason: not valid java name */
    public static /* synthetic */ Object m43postBWLJW6A$default(TapUpdateApi tapUpdateApi, String str, Map map, String str2, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            map = new LinkedHashMap();
        }
        int i2 = i & 4;
        ITapHttpResponseHandler iTapHttpResponseHandler = null;
        Object[] objArr = 0;
        if (i2 != 0) {
            str2 = null;
        }
        TapHttpJsonParam postJson = TapUpdateApiKt.getNetApi().postJson(str);
        for (Map.Entry entry : map.entrySet()) {
            AbsTapHttpParam.addQuery$default(postJson, (String) entry.getKey(), (String) entry.getValue(), false, 4, null);
            Unit unit = Unit.INSTANCE;
        }
        if (str2 != null) {
            postJson.addBody(new JSONObject(str2));
        }
        TapHttpJsonParam tapHttpJsonParam = postJson;
        Intrinsics.needClassReification();
        TapHttpCall tapHttpCall = new TapHttpCall(tapHttpJsonParam, new TapHttpParser.SdkDefaultParser(iTapHttpResponseHandler, TapUpdateApi$postBWLJW6A$$inlined$toCall$1.INSTANCE, 1, objArr == true ? 1 : 0), new TapHttpRetry.SdkDefault(tapHttpJsonParam.getBackoffHandler()));
        InlineMarker.mark(0);
        Object m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(tapHttpCall, 0L, continuation, 1, null);
        InlineMarker.mark(1);
        InlineMarker.mark(8);
        Object value = ((Result) m16enqueueResultgIAlus$default).getValue();
        InlineMarker.mark(9);
        return value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: post-BWLJW6A, reason: not valid java name */
    public final /* synthetic */ <T> Object m45postBWLJW6A(String str, Map<String, String> map, String str2, Continuation<? super Result<? extends T>> continuation) {
        TapHttpJsonParam postJson = TapUpdateApiKt.getNetApi().postJson(str);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            AbsTapHttpParam.addQuery$default(postJson, entry.getKey(), entry.getValue(), false, 4, null);
            Unit unit = Unit.INSTANCE;
        }
        if (str2 != null) {
            postJson.addBody(new JSONObject(str2));
        }
        TapHttpJsonParam tapHttpJsonParam = postJson;
        Intrinsics.needClassReification();
        TapHttpCall tapHttpCall = new TapHttpCall(tapHttpJsonParam, new TapHttpParser.SdkDefaultParser(null, TapUpdateApi$postBWLJW6A$$inlined$toCall$1.INSTANCE, 1, 0 == true ? 1 : 0), new TapHttpRetry.SdkDefault(tapHttpJsonParam.getBackoffHandler()));
        InlineMarker.mark(0);
        Object m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(tapHttpCall, 0L, continuation, 1, null);
        InlineMarker.mark(1);
        InlineMarker.mark(8);
        Object value = ((Result) m16enqueueResultgIAlus$default).getValue();
        InlineMarker.mark(9);
        return value;
    }
}
