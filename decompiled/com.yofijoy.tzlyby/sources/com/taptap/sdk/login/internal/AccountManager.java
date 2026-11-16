package com.taptap.sdk.login.internal;

import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.common.services.OpenLogService;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.kit.internal.utils.KVUtil;
import com.taptap.sdk.login.TapTapAccount;
import com.taptap.sdk.login.internal.legacy.MigrationHelper;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: AccountManager.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0018"}, d2 = {"Lcom/taptap/sdk/login/internal/AccountManager;", "", "()V", "SP_ACCOUNT_KEY", "", "SP_MIGRATION_PROFILE_KEY", "SP_MIGRATION_TOKEN_KEY", "SP_NAME", ActionUtils.PAYMENT_AMOUNT, "Lcom/taptap/sdk/login/TapTapAccount;", "account", "getAccount", "()Lcom/taptap/sdk/login/TapTapAccount;", "setAccount", "(Lcom/taptap/sdk/login/TapTapAccount;)V", "openLogService", "Lcom/taptap/sdk/common/services/OpenLogService;", "getOpenLogService", "()Lcom/taptap/sdk/common/services/OpenLogService;", "openLogService$delegate", "Lkotlin/Lazy;", "clearCache", "", "init", "tap-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AccountManager {
    public static final AccountManager INSTANCE = new AccountManager();
    private static final String SP_ACCOUNT_KEY = "taptap_account";
    private static final String SP_MIGRATION_PROFILE_KEY = "profile";
    private static final String SP_MIGRATION_TOKEN_KEY = "token_data";
    private static final String SP_NAME = "taptap_sharepreference";
    private static TapTapAccount account;

    /* renamed from: openLogService$delegate, reason: from kotlin metadata */
    private static final Lazy openLogService;

    private AccountManager() {
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        openLogService = LazyKt.lazy(new Function0<OpenLogService>() { // from class: com.taptap.sdk.login.internal.AccountManager$special$$inlined$inject$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OpenLogService invoke() {
                ServiceManager.Service service = ServiceManager.INSTANCE.getService(OpenLogService.class);
                Objects.requireNonNull(service, "null cannot be cast to non-null type com.taptap.sdk.common.services.OpenLogService");
                return (OpenLogService) service;
            }
        });
    }

    private final OpenLogService getOpenLogService() {
        return (OpenLogService) openLogService.getValue();
    }

    public final TapTapAccount getAccount() {
        return account;
    }

    public final void setAccount(TapTapAccount tapTapAccount) {
        String str;
        account = tapTapAccount;
        if (tapTapAccount != null) {
            KVUtil kVUtil = KVUtil.INSTANCE;
            try {
                Json json = TapJson.INSTANCE.getJson();
                KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(TapTapAccount.class));
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                str = json.encodeToString(serializer, tapTapAccount);
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                str = null;
            }
            kVUtil.putString(SP_ACCOUNT_KEY, str, SP_NAME);
        }
        getOpenLogService().setOpenId(tapTapAccount != null ? tapTapAccount.getOpenId() : null);
    }

    public final void init() {
        TapTapAccount migrate;
        String string = KVUtil.INSTANCE.getString(SP_ACCOUNT_KEY, SP_NAME);
        Object obj = null;
        if (string != null) {
            AccountManager accountManager = INSTANCE;
            TapJson tapJson = TapJson.INSTANCE;
            if (!(string.length() == 0)) {
                try {
                    Json json = tapJson.getJson();
                    KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(TapTapAccount.class));
                    Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                    obj = json.decodeFromString(serializer, string);
                } catch (Exception e) {
                    TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                }
            }
            accountManager.setAccount((TapTapAccount) obj);
            obj = Unit.INSTANCE;
        }
        if (obj == null) {
            AccountManager accountManager2 = this;
            String string2 = KVUtil.INSTANCE.getString(SP_MIGRATION_TOKEN_KEY, SP_NAME);
            String string3 = KVUtil.INSTANCE.getString(SP_MIGRATION_PROFILE_KEY, SP_NAME);
            if (string2 == null || string3 == null || (migrate = MigrationHelper.INSTANCE.migrate(string2, string3)) == null) {
                return;
            }
            accountManager2.setAccount(migrate);
        }
    }

    public final void clearCache() {
        KVUtil.INSTANCE.remove(SP_ACCOUNT_KEY, SP_NAME);
        KVUtil.INSTANCE.remove(SP_MIGRATION_TOKEN_KEY, SP_NAME);
        KVUtil.INSTANCE.remove(SP_MIGRATION_PROFILE_KEY, SP_NAME);
        setAccount(null);
    }
}
