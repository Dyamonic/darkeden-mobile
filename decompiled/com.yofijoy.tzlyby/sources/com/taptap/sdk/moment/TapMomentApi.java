package com.taptap.sdk.moment;

import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.call.ITapHttpCall;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpNoBodyParam;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapMomentApi.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\\\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u000b0\n\"\u0006\b\u0000\u0010\u000b\u0018\u00012\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000f2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000fH\u0087Hø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\rR\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/taptap/sdk/moment/TapMomentApi;", "", "()V", "netApi", "Lcom/taptap/sdk/kit/internal/http/TapHttp;", "getNetApi", "()Lcom/taptap/sdk/kit/internal/http/TapHttp;", "netApi$delegate", "Lkotlin/Lazy;", "get", "Lkotlin/Result;", "T", ClientCookie.PATH_ATTR, "", "queryMap", "", "headerMap", "get-BWLJW6A", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getHost", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapMomentApi {
    public static final TapMomentApi INSTANCE = new TapMomentApi();

    /* renamed from: netApi$delegate, reason: from kotlin metadata */
    private static final Lazy netApi = LazyKt.lazy(new Function0<TapHttp>() { // from class: com.taptap.sdk.moment.TapMomentApi$netApi$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final TapHttp invoke() {
            return TapHttp.INSTANCE.newBuilder("TapMoment", "4.5.4").enableAuthorization().domain(TapMomentApi.INSTANCE.getHost()).connectTimeout(10000L).writeTimeout(5000L).readTimeout(5000L).build();
        }
    });

    private TapMomentApi() {
    }

    public final TapHttp getNetApi() {
        return (TapHttp) netApi.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: get-BWLJW6A$default, reason: not valid java name */
    public static /* synthetic */ Object m25getBWLJW6A$default(String str, Map map, Map map2, Continuation continuation, int i, Object obj) {
        if ((i & 4) != 0) {
            map2 = MapsKt.emptyMap();
        }
        TapHttpNoBodyParam tapHttpNoBodyParam = INSTANCE.getNetApi().get(str);
        for (Map.Entry entry : map.entrySet()) {
            AbsTapHttpParam.addQuery$default(tapHttpNoBodyParam, (String) entry.getKey(), (String) entry.getValue(), false, 4, null);
            Unit unit = Unit.INSTANCE;
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            AbsTapHttpParam.addHeader$default(tapHttpNoBodyParam, (String) entry2.getKey(), (String) entry2.getValue(), false, 4, null);
            Unit unit2 = Unit.INSTANCE;
        }
        TapHttpNoBodyParam tapHttpNoBodyParam2 = tapHttpNoBodyParam;
        Intrinsics.needClassReification();
        TapHttpCall tapHttpCall = new TapHttpCall(tapHttpNoBodyParam2, new TapHttpParser.SdkDefaultParser(null, TapMomentApi$getBWLJW6A$$inlined$toCall$1.INSTANCE, 1, 0 == true ? 1 : 0), new TapHttpRetry.SdkDefault(tapHttpNoBodyParam2.getBackoffHandler()));
        InlineMarker.mark(0);
        Object m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(tapHttpCall, 0L, continuation, 1, null);
        InlineMarker.mark(1);
        InlineMarker.mark(8);
        Object value = ((Result) m16enqueueResultgIAlus$default).getValue();
        InlineMarker.mark(9);
        return value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmStatic
    /* renamed from: get-BWLJW6A, reason: not valid java name */
    public static final /* synthetic */ <T> Object m24getBWLJW6A(String str, Map<String, String> map, Map<String, String> map2, Continuation<? super Result<? extends T>> continuation) {
        TapHttpNoBodyParam tapHttpNoBodyParam = INSTANCE.getNetApi().get(str);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            AbsTapHttpParam.addQuery$default(tapHttpNoBodyParam, entry.getKey(), entry.getValue(), false, 4, null);
            Unit unit = Unit.INSTANCE;
        }
        for (Map.Entry<String, String> entry2 : map2.entrySet()) {
            AbsTapHttpParam.addHeader$default(tapHttpNoBodyParam, entry2.getKey(), entry2.getValue(), false, 4, null);
            Unit unit2 = Unit.INSTANCE;
        }
        TapHttpNoBodyParam tapHttpNoBodyParam2 = tapHttpNoBodyParam;
        Intrinsics.needClassReification();
        TapHttpCall tapHttpCall = new TapHttpCall(tapHttpNoBodyParam2, new TapHttpParser.SdkDefaultParser(null, TapMomentApi$getBWLJW6A$$inlined$toCall$1.INSTANCE, 1, 0 == true ? 1 : 0), new TapHttpRetry.SdkDefault(tapHttpNoBodyParam2.getBackoffHandler()));
        InlineMarker.mark(0);
        Object m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(tapHttpCall, 0L, continuation, 1, null);
        InlineMarker.mark(1);
        InlineMarker.mark(8);
        Object value = ((Result) m16enqueueResultgIAlus$default).getValue();
        InlineMarker.mark(9);
        return value;
    }

    public final String getHost() {
        return TapMomentInternal.INSTANCE.getRegionType() == 1 ? TapTapKit.INSTANCE.isRND() ? "tapsdk.api.xdrnd.com" : "tapsdk.tapapis.com" : TapTapKit.INSTANCE.isRND() ? "tapsdk.api.xdrnd.cn" : "tapsdk.tapapis.cn";
    }
}
