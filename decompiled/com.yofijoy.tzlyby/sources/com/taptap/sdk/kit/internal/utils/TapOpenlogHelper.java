package com.taptap.sdk.kit.internal.utils;

import com.taptap.sdk.common.services.OpenLogService;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.openlog.ITapOpenlog;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import com.tencent.tauth.AuthActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapOpenlogHelper.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0016\b\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0014J*\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u001a\u0010\u0016\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00140\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\u000b\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;", "", "()V", "TAG", "", "openLogService", "Lcom/taptap/sdk/common/services/OpenLogService;", "getOpenLogService", "()Lcom/taptap/sdk/common/services/OpenLogService;", "openLogService$delegate", "Lkotlin/Lazy;", "openlog", "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "getOpenlog", "()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "openlog$delegate", "reportBusinessLog", "", AuthActivity.ACTION_KEY, TapEventParamConstants.PARAM_PROPERTIES, "", "reportTechnicalLog", "block", "Lkotlin/Function0;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapOpenlogHelper {
    public static final TapOpenlogHelper INSTANCE = new TapOpenlogHelper();
    private static final String TAG = "TapOpenlogHelper-Kit";

    /* renamed from: openLogService$delegate, reason: from kotlin metadata */
    private static final Lazy openLogService;

    /* renamed from: openlog$delegate, reason: from kotlin metadata */
    private static final Lazy openlog;

    private TapOpenlogHelper() {
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        openLogService = LazyKt.lazy(new Function0<OpenLogService>() { // from class: com.taptap.sdk.kit.internal.utils.TapOpenlogHelper$special$$inlined$inject$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OpenLogService invoke() {
                ServiceManager.Service service = ServiceManager.INSTANCE.getService(OpenLogService.class);
                Objects.requireNonNull(service, "null cannot be cast to non-null type com.taptap.sdk.common.services.OpenLogService");
                return (OpenLogService) service;
            }
        });
        openlog = LazyKt.lazy(new Function0<ITapOpenlog>() { // from class: com.taptap.sdk.kit.internal.utils.TapOpenlogHelper$openlog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ITapOpenlog invoke() {
                OpenLogService openLogService2;
                openLogService2 = TapOpenlogHelper.INSTANCE.getOpenLogService();
                return openLogService2.obtainOpenlog("TapSDKCore", "4.5.4");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OpenLogService getOpenLogService() {
        return (OpenLogService) openLogService.getValue();
    }

    private final ITapOpenlog getOpenlog() {
        return (ITapOpenlog) openlog.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void reportBusinessLog$default(TapOpenlogHelper tapOpenlogHelper, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        tapOpenlogHelper.reportBusinessLog(str, map);
    }

    public final void reportBusinessLog(String action, Map<String, String> properties) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(properties, "properties");
        ITapOpenlog openlog2 = getOpenlog();
        if (openlog2 != null) {
            openlog2.reportBusinessLog(action, properties);
        }
    }

    public final void reportTechnicalLog(String action, Function0<? extends Map<String, String>> block) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(block, "block");
        HashMap hashMap = new HashMap();
        try {
            hashMap = block.invoke();
        } catch (Exception e) {
            TapLogger.logd(TAG, e);
        }
        ITapOpenlog openlog2 = getOpenlog();
        if (openlog2 != null) {
            openlog2.reportTechnicalLog("core__" + action, hashMap);
        }
    }
}
