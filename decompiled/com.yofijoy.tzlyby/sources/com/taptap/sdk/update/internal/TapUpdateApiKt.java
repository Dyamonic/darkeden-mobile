package com.taptap.sdk.update.internal;

import com.taptap.sdk.kit.internal.TapTapKit;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpCompress;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpSign;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: TapUpdateApi.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\b\u0010\u0013\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u001b\u0010\b\u001a\u00020\t8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b\"\u001b\u0010\u000e\u001a\u00020\u000f8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"HOST_CN", "", "HOST_IO", "HOST_RND_CN", "HOST_RND_IO", "INVALID_VERSION_CODE", "", "PATH_UPDATE_GAME", "netApi", "Lcom/taptap/sdk/kit/internal/http/TapHttp;", "getNetApi", "()Lcom/taptap/sdk/kit/internal/http/TapHttp;", "netApi$delegate", "Lkotlin/Lazy;", "updateScope", "Lkotlinx/coroutines/CoroutineScope;", "getUpdateScope", "()Lkotlinx/coroutines/CoroutineScope;", "updateScope$delegate", "getHost", "tap-update_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapUpdateApiKt {
    private static final String HOST_CN = "tapsdk.tapapis.cn";
    private static final String HOST_IO = "tapsdk.tapapis.com";
    private static final String HOST_RND_CN = "tapsdk.api.xdrnd.cn";
    private static final String HOST_RND_IO = "tapsdk.api.xdrnd.com";
    public static final int INVALID_VERSION_CODE = -1;
    public static final String PATH_UPDATE_GAME = "/app/v1/get-uri-by-identifier";
    private static final Lazy updateScope$delegate = LazyKt.lazy(TapUpdateApiKt$updateScope$2.INSTANCE);
    private static final Lazy netApi$delegate = LazyKt.lazy(new Function0<TapHttp>() { // from class: com.taptap.sdk.update.internal.TapUpdateApiKt$netApi$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final TapHttp invoke() {
            return TapHttp.INSTANCE.newBuilder("TapUpdate", "4.5.4").connectTimeout(10000L).writeTimeout(5000L).readTimeout(5000L).domain(TapUpdateApiKt.getHost()).compressHandler(new TapHttpCompress.None()).signHandler(new TapHttpSign.Default()).build();
        }
    });

    public static final CoroutineScope getUpdateScope() {
        return (CoroutineScope) updateScope$delegate.getValue();
    }

    public static final String getHost() {
        return TapUpdateInternal.INSTANCE.getRegionType() == 1 ? TapTapKit.INSTANCE.isRND() ? HOST_RND_IO : HOST_IO : TapTapKit.INSTANCE.isRND() ? HOST_RND_CN : HOST_CN;
    }

    public static final TapHttp getNetApi() {
        return (TapHttp) netApi$delegate.getValue();
    }
}
