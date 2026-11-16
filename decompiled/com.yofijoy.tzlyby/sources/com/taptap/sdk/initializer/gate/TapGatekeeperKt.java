package com.taptap.sdk.initializer.gate;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* compiled from: TapGatekeeper.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"DEFAULT_GATEKEEPER_ERROR_LOG", "", "DEFAULT_GATEKEEPER_ERROR_TOAST", "showGatekeeperError", "Lkotlinx/coroutines/Job;", "Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;", "tap-initializer_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapGatekeeperKt {
    private static final String DEFAULT_GATEKEEPER_ERROR_LOG = "当前应用初始化信息错误, 请在 TapTap 开发者中心检查[当前应用包名]与[调用初始化接口设置的 clientId 、clientToken]是否匹配";
    private static final String DEFAULT_GATEKEEPER_ERROR_TOAST = "当前应用初始化信息错误";

    public static final Job showGatekeeperError(TapGatekeeperError tapGatekeeperError) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(tapGatekeeperError, "<this>");
        launch$default = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new TapGatekeeperKt$showGatekeeperError$1(tapGatekeeperError, null), 2, null);
        return launch$default;
    }
}
