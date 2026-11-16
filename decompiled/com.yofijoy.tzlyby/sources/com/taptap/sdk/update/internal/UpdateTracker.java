package com.taptap.sdk.update.internal;

import android.text.TextUtils;
import com.rich.oauth.util.RichLogUtil;
import com.taptap.sdk.common.services.OpenLogService;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.extensions.StringExtKt;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.kit.internal.openlog.ITapOpenlog;
import com.taptap.sdk.servicemanager.ServiceManager;
import com.taptap.sdk.servicemanager.utils.ServiceManagerComponent;
import com.taptap.sdk.update.constants.LoggerConst;
import com.tencent.tauth.AuthActivity;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import org.json.JSONObject;

/* compiled from: UpdateTracker.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u001e\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\u0006\u0010\u001c\u001a\u00020\u0004J(\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00042\u0016\b\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040 H\u0002J\u0006\u0010!\u001a\u00020\u0019J\u0006\u0010\"\u001a\u00020\u0019J\u0016\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010&\u001a\u00020\u0019J\u0006\u0010'\u001a\u00020\u0019J\u0006\u0010(\u001a\u00020\u0019J\u001e\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0019J\u000e\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0019J\u0006\u00102\u001a\u00020\u0019J\u0006\u00103\u001a\u00020\u0019J\u000e\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000200J\u0006\u00106\u001a\u00020\u0019J\u000e\u00107\u001a\u00020\u00192\u0006\u00105\u001a\u000200J\u0006\u00108\u001a\u00020\u0019J\u0006\u00109\u001a\u00020\u0019J\u0006\u0010:\u001a\u00020\u0019J\u000e\u0010;\u001a\u00020\u00192\u0006\u0010<\u001a\u00020\u0004J\u0006\u0010=\u001a\u00020\u0019J\u0006\u0010>\u001a\u00020\u0019J\u0006\u0010?\u001a\u00020\u0019J\u0006\u0010@\u001a\u00020\u0019J\u0006\u0010A\u001a\u00020\u0019J\u0006\u0010B\u001a\u00020\u0019J\u0006\u0010C\u001a\u00020\u0019J\u0006\u0010D\u001a\u00020\u0019J\u0006\u0010E\u001a\u00020\u0019J\u0006\u0010F\u001a\u00020\u0019J\u0006\u0010G\u001a\u00020\u0019J\u0016\u0010H\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0004J\u0006\u0010K\u001a\u00020\u0019J\u0006\u0010L\u001a\u00020\u0019J\u0006\u0010M\u001a\u00020\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u0004\u0018\u00010\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006N"}, d2 = {"Lcom/taptap/sdk/update/internal/UpdateTracker;", "", "()V", "currentChainId", "", "currentSessionId", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "loggerHelper", "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "getLoggerHelper", "()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "loggerHelper$delegate", "Lkotlin/Lazy;", "openLogService", "Lcom/taptap/sdk/common/services/OpenLogService;", "getOpenLogService", "()Lcom/taptap/sdk/common/services/OpenLogService;", "openLogService$delegate", "speedCount", "", "clearChainId", "", "createSessionId", "getChainId", "getSessionId", "reportBizLog", AuthActivity.ACTION_KEY, "paramMap", "", "trackDownloadComplete", "trackDownloadDialogVisible", "trackDownloadFailed", "code", "cause", "trackDownloadLinkButtonClick", "trackDownloadRetryButtonClick", "trackDownloadStart", "trackDownloadingSpeed", "apkSize", "currentSize", "speed", "trackInitialize", "trackInstall", "manualClick", "", "trackInstallCloseButtonClick", "trackInstallComplete", "trackInstallConfirmButtonClick", "trackInstallConfirmCancelButtonClick", "fromConfirm", "trackInstallConfirmDialogVisible", "trackInstallConfirmPositiveButtonClick", "trackInstallDialogVisible", "trackInstallLinkButtonClick", "trackNotInstallDialogVisible", "trackOpenTapClient", "objectType", "trackRequestFailDialogVisible", "trackRequestFailNegativeButtonClick", "trackRequestFailedPositiveButtonClick", "trackToTapUpdateButtonClick", "trackToTapUpdateCloseButtonClick", "trackUpdateCancelButtonClick", "trackUpdateCloseButtonClick", "trackUpdateConfirmButtonClick", "trackUpdateConfirmDialogVisible", "trackUpdateDialogVisible", "trackUpdateGameCancel", "trackUpdateGameFail", "errorCode", "errorMsg", "trackUpdateGameStart", "trackUpdateGameSuccess", "updateSessionId", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UpdateTracker {
    public static final UpdateTracker INSTANCE = new UpdateTracker();
    private static String currentChainId;
    private static volatile String currentSessionId;
    private static volatile String gameId;

    /* renamed from: loggerHelper$delegate, reason: from kotlin metadata */
    private static final Lazy loggerHelper;

    /* renamed from: openLogService$delegate, reason: from kotlin metadata */
    private static final Lazy openLogService;
    private static int speedCount;

    private UpdateTracker() {
    }

    static {
        ServiceManagerComponent serviceManagerComponent = ServiceManagerComponent.INSTANCE;
        openLogService = LazyKt.lazy(new Function0<OpenLogService>() { // from class: com.taptap.sdk.update.internal.UpdateTracker$special$$inlined$inject$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OpenLogService invoke() {
                ServiceManager.Service service = ServiceManager.INSTANCE.getService(OpenLogService.class);
                Objects.requireNonNull(service, "null cannot be cast to non-null type com.taptap.sdk.common.services.OpenLogService");
                return (OpenLogService) service;
            }
        });
        loggerHelper = LazyKt.lazy(new Function0<ITapOpenlog>() { // from class: com.taptap.sdk.update.internal.UpdateTracker$loggerHelper$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ITapOpenlog invoke() {
                OpenLogService openLogService2;
                openLogService2 = UpdateTracker.INSTANCE.getOpenLogService();
                return openLogService2.obtainOpenlog("TapUpdate", "4.5.4");
            }
        });
        currentSessionId = "";
        currentChainId = "";
        gameId = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OpenLogService getOpenLogService() {
        return (OpenLogService) openLogService.getValue();
    }

    private final ITapOpenlog getLoggerHelper() {
        return (ITapOpenlog) loggerHelper.getValue();
    }

    public final String getGameId() {
        return gameId;
    }

    public final void setGameId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        gameId = str;
    }

    private final String createSessionId() {
        currentSessionId = StringExtKt.generateSessionId();
        return currentSessionId;
    }

    private final String getChainId() {
        if (TextUtils.isEmpty(currentChainId)) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
            currentChainId = uuid;
        }
        return currentChainId;
    }

    public final void clearChainId() {
        currentChainId = "";
    }

    public final String getSessionId() {
        return currentSessionId.length() == 0 ? createSessionId() : currentSessionId;
    }

    public final void updateSessionId() {
        currentSessionId = StringExtKt.generateSessionId();
    }

    public final void trackUpdateCancelButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_CONFIRM);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "tap_update_cancel_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackUpdateCloseButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_DOWNLOAD);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.OBJECT_TYPE_UPDATE_CLOSE), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackInstallCloseButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_INSTALL);
        jSONObject.put("update_id", getSessionId());
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.OBJECT_TYPE_UPDATE_CLOSE), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackToTapUpdateCloseButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_UPDATE);
        jSONObject.put("update_id", getSessionId());
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.OBJECT_TYPE_UPDATE_CLOSE), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackOpenTapClient(String objectType) {
        Intrinsics.checkNotNullParameter(objectType, "objectType");
        reportBizLog(LoggerConst.ACTION_OPEN_TAP_CLIENT, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, objectType)));
    }

    public final void trackUpdateConfirmButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_CONFIRM);
        jSONObject.put("update_id", getSessionId());
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "tap_update_confirm_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackDownloadDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_DOWNLOAD)));
    }

    public final void trackDownloadFailed(int code, String cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("chain_id", getChainId());
        jSONObject.put("failed_code", code);
        jSONObject.put("failed_reason", cause);
        reportBizLog(LoggerConst.ACTION_DOWNLOAD_FAILED, MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackInstallLinkButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_INSTALL);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "tap_install_link_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackDownloadLinkButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_DOWNLOAD);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "tap_download_link_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackDownloadRetryButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_DOWNLOAD);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "download_retry_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackDownloadStart() {
        speedCount = 0;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("chain_id", getChainId());
        reportBizLog(LoggerConst.ACTION_START_DOWNLOAD, MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackDownloadingSpeed(String apkSize, String currentSize, String speed) {
        Intrinsics.checkNotNullParameter(apkSize, "apkSize");
        Intrinsics.checkNotNullParameter(currentSize, "currentSize");
        Intrinsics.checkNotNullParameter(speed, "speed");
        int i = speedCount;
        speedCount = i + 1;
        if (i % 5 != 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("chain_id", getChainId());
        jSONObject.put("apk_size", apkSize);
        jSONObject.put("download_size", currentSize);
        jSONObject.put("download_rate", speed);
        reportBizLog(LoggerConst.ACTION_DOWNLOAD_RUNNING, MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackDownloadComplete() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("chain_id", getChainId());
        reportBizLog(LoggerConst.ACTION_DOWNLOAD_COMPLETE, MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackInstallConfirmButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_INSTALL);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.OBJECT_TYPE_UPDATE_INSTALL_TAP), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackInstallDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_INSTALL)));
    }

    public final void trackInstallConfirmCancelButtonClick(boolean fromConfirm) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", fromConfirm ? LoggerConst.DIALOG_TYPE_INSTALL_CONFIRM : LoggerConst.DIALOG_TYPE_NOT_INSTALL);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "install_cancel_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackInstallConfirmPositiveButtonClick(boolean fromConfirm) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", fromConfirm ? LoggerConst.DIALOG_TYPE_INSTALL_CONFIRM : LoggerConst.DIALOG_TYPE_NOT_INSTALL);
        Pair[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, fromConfirm ? "install_success_but" : "reinstall_but");
        pairArr[1] = TuplesKt.to("extra", jSONObject.toString());
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(pairArr));
    }

    public final void trackInstallComplete() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("chain_id", getChainId());
        reportBizLog(LoggerConst.ACTION_INSTALL_COMPLETE, MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
        clearChainId();
    }

    public final void trackToTapUpdateButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_UPDATE);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.OBJECT_TYPE_UPDATE_GO_TAP), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackUpdateDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_UPDATE)));
    }

    public final void trackRequestFailDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_REQUEST_FAIL)));
    }

    public final void trackUpdateConfirmDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_CONFIRM)));
    }

    public final void trackInstallConfirmDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_INSTALL_CONFIRM)));
    }

    public final void trackNotInstallDialogVisible() {
        reportBizLog(LoggerConst.ACTION_VIEW, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, LoggerConst.DIALOG_TYPE_NOT_INSTALL)));
    }

    public final void trackRequestFailNegativeButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_REQUEST_FAIL);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "install_cancel_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackRequestFailedPositiveButtonClick() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("block", LoggerConst.DIALOG_TYPE_REQUEST_FAIL);
        reportBizLog(LoggerConst.ACTION_CLICK, MapsKt.mapOf(TuplesKt.to(LoggerConst.KEY_OBJECT_TYPE, "install_retry_but"), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackInstall(boolean manualClick) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("chain_id", getChainId());
        jSONObject.put("install_type", manualClick ? "click_install" : "auto_install");
        reportBizLog(LoggerConst.ACTION_INSTALL, MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject2.toString()), TuplesKt.to("extra", jSONObject.toString())));
    }

    public final void trackUpdateGameStart() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("func_name", "updateGame");
        jSONObject.put("session_id", currentSessionId);
        reportBizLog("start", MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackUpdateGameCancel() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("func_name", "updateGame");
        jSONObject.put("session_id", currentSessionId);
        reportBizLog("cancel", MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackUpdateGameFail(int errorCode, String errorMsg) {
        Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("func_name", "updateGame");
        jSONObject.put("error_code", errorCode);
        jSONObject.put("session_id", currentSessionId);
        jSONObject.put("error_msg", errorMsg);
        reportBizLog("fail", MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackUpdateGameSuccess() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("session_id", currentSessionId);
        jSONObject.put("func_name", "updateGame");
        reportBizLog("success", MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, jSONObject.toString())));
    }

    public final void trackInitialize() {
        Map mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("func_name", "init"));
        String str = null;
        try {
            Json json = TapJson.INSTANCE.getJson();
            KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
            Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            str = json.encodeToString(serializer, mutableMapOf);
        } catch (Exception e) {
            TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
        }
        if (str == null) {
            str = "json convert error";
        }
        reportBizLog("init", MapsKt.mapOf(TuplesKt.to(RichLogUtil.ARGS, str)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void reportBizLog$default(UpdateTracker updateTracker, String str, Map map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        updateTracker.reportBizLog(str, map);
    }

    private final void reportBizLog(String action, Map<String, String> paramMap) {
        JSONObject jSONObject;
        Map<String, String> mutableMap = MapsKt.toMutableMap(paramMap);
        String str = paramMap.get("extra");
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            jSONObject = new JSONObject();
        } else {
            jSONObject = new JSONObject(str);
        }
        jSONObject.put("update_id", getSessionId());
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("game_id", gameId);
        mutableMap.put("extra", jSONObject.toString());
        mutableMap.put("ctx", jSONObject2.toString());
        TapLogger.logi(TapUpdateLoggerKt.LOGGER_TAG, "reportBizLog: action=" + action + ", params=" + mutableMap);
        ITapOpenlog loggerHelper2 = getLoggerHelper();
        if (loggerHelper2 != null) {
            loggerHelper2.reportBusinessLog(action, mutableMap);
        }
    }
}
