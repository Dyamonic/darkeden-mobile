package com.taptap.sdk.gid.internal.util;

import com.taptap.sdk.common.services.OpenLogService;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.kit.internal.openlog.ITapOpenlog;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import com.tencent.tauth.AuthActivity;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapOpenlogHelper.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0013J&\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0016\b\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0013R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;", "", "()V", "openLogService", "Lcom/taptap/sdk/common/services/OpenLogService;", "getOpenLogService", "()Lcom/taptap/sdk/common/services/OpenLogService;", "openLogService$delegate", "Lkotlin/Lazy;", "openlog", "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "getOpenlog", "()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "openlog$delegate", "reportBusinessLog", "", AuthActivity.ACTION_KEY, "", TapEventParamConstants.PARAM_PROPERTIES, "", "reportTechnicalLog", "tap-gid_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapOpenlogHelper {
    public static final TapOpenlogHelper INSTANCE = new TapOpenlogHelper();

    /* renamed from: openLogService$delegate, reason: from kotlin metadata */
    private static final Lazy openLogService;

    /* renamed from: openlog$delegate, reason: from kotlin metadata */
    private static final Lazy openlog;

    private TapOpenlogHelper() {
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        openLogService = LazyKt.lazy(new Function0<OpenLogService>() { // from class: com.taptap.sdk.gid.internal.util.TapOpenlogHelper$special$$inlined$inject$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OpenLogService invoke() {
                ServiceManager.Service service = ServiceManager.INSTANCE.getService(OpenLogService.class);
                Objects.requireNonNull(service, "null cannot be cast to non-null type com.taptap.sdk.common.services.OpenLogService");
                return (OpenLogService) service;
            }
        });
        openlog = LazyKt.lazy(new Function0<ITapOpenlog>() { // from class: com.taptap.sdk.gid.internal.util.TapOpenlogHelper$openlog$2
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

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void reportTechnicalLog$default(TapOpenlogHelper tapOpenlogHelper, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        tapOpenlogHelper.reportTechnicalLog(str, map);
    }

    public final void reportTechnicalLog(String action, Map<String, String> properties) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(properties, "properties");
        ITapOpenlog openlog2 = getOpenlog();
        if (openlog2 != null) {
            openlog2.reportTechnicalLog("gid__" + action, properties);
        }
    }
}
