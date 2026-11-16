package com.taptap.sdk.kit.internal.identifier.content;

import com.taptap.sdk.common.services.GidService;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: TapGIDUtil.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;", "", "()V", "gidService", "Lcom/taptap/sdk/common/services/GidService;", "getGidService", "()Lcom/taptap/sdk/common/services/GidService;", "gidService$delegate", "Lkotlin/Lazy;", "queryGID", "", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapGIDUtil {
    public static final TapGIDUtil INSTANCE = new TapGIDUtil();

    /* renamed from: gidService$delegate, reason: from kotlin metadata */
    private static final Lazy gidService;

    private TapGIDUtil() {
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        gidService = LazyKt.lazy(new Function0<GidService>() { // from class: com.taptap.sdk.kit.internal.identifier.content.TapGIDUtil$special$$inlined$inject$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GidService invoke() {
                ServiceManager.Service service = ServiceManager.INSTANCE.getService(GidService.class);
                Objects.requireNonNull(service, "null cannot be cast to non-null type com.taptap.sdk.common.services.GidService");
                return (GidService) service;
            }
        });
    }

    private final GidService getGidService() {
        return (GidService) gidService.getValue();
    }

    public final String queryGID() {
        return getGidService().getGid();
    }
}
