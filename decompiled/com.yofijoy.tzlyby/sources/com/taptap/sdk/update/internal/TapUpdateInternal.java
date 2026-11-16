package com.taptap.sdk.update.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.exception.TapSdkException;
import com.taptap.sdk.update.TapTapUpdateCallback;
import com.taptap.sdk.update.dialog.TapUpdateDialogManager;
import com.taptap.sdk.update.utils.UIUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapUpdateInternal.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0002J&\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u001c\u001a\u00020\u0018J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0016J\u000e\u0010 \u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0016J\u0016\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/taptap/sdk/update/internal/TapUpdateInternal;", "", "()V", "clientId", "", "getClientId", "()Ljava/lang/String;", "setClientId", "(Ljava/lang/String;)V", "clientToken", "getClientToken", "setClientToken", "hasInitialed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "regionType", "", "getRegionType", "()I", "setRegionType", "(I)V", "updateCallbacks", "", "Lcom/taptap/sdk/update/TapTapUpdateCallback;", "checkInit", "", "init", "context", "Landroid/content/Context;", "notifyUpdateCancel", "registerPackageInstallReceiver", "registerUpdateCallback", "callback", "unregisterUpdateCallback", "updateGame", "activity", "Landroid/app/Activity;", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapUpdateInternal {
    private static int regionType;
    public static final TapUpdateInternal INSTANCE = new TapUpdateInternal();
    private static String clientId = "";
    private static String clientToken = "";
    private static AtomicBoolean hasInitialed = new AtomicBoolean(false);
    private static final List<TapTapUpdateCallback> updateCallbacks = new ArrayList();

    private TapUpdateInternal() {
    }

    public final String getClientId() {
        return clientId;
    }

    public final void setClientId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        clientId = str;
    }

    public final String getClientToken() {
        return clientToken;
    }

    public final void setClientToken(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        clientToken = str;
    }

    public final int getRegionType() {
        return regionType;
    }

    public final void setRegionType(int i) {
        regionType = i;
    }

    public final void init(Context context, String clientId2, String clientToken2, int regionType2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clientId2, "clientId");
        Intrinsics.checkNotNullParameter(clientToken2, "clientToken");
        UpdateTracker.INSTANCE.trackInitialize();
        hasInitialed.set(true);
        clientId = clientId2;
        clientToken = clientToken2;
        regionType = regionType2;
        registerPackageInstallReceiver(context);
    }

    public final void updateGame(Activity activity, TapTapUpdateCallback callback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkInit();
        if (UIUtil.INSTANCE.isFastClick()) {
            return;
        }
        registerUpdateCallback(callback);
        TapUpdateDialogManager.INSTANCE.startUpdateGame(activity);
    }

    public final void registerUpdateCallback(TapTapUpdateCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        checkInit();
        List<TapTapUpdateCallback> list = updateCallbacks;
        if (list.contains(callback)) {
            return;
        }
        list.add(callback);
    }

    public final void unregisterUpdateCallback(TapTapUpdateCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        updateCallbacks.remove(callback);
    }

    public final void notifyUpdateCancel() {
        checkInit();
        for (Object obj : updateCallbacks.toArray(new TapTapUpdateCallback[0])) {
            ((TapTapUpdateCallback) obj).onCancel();
        }
    }

    private final void checkInit() {
        if (!hasInitialed.get()) {
            throw new TapSdkException("TapUpdate must be initialed, call init() first !");
        }
    }

    private final void registerPackageInstallReceiver(Context context) {
        Object m56constructorimpl;
        checkInit();
        try {
            Result.Companion companion = Result.INSTANCE;
            TapUpdateInternal tapUpdateInternal = this;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            m56constructorimpl = Result.m56constructorimpl(context.getApplicationContext().registerReceiver(new TapUpdatePackageReceiver(), intentFilter));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m56constructorimpl = Result.m56constructorimpl(ResultKt.createFailure(th));
        }
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(m56constructorimpl);
        if (m59exceptionOrNullimpl != null) {
            TapLogger.loge$default(TapUpdateLoggerKt.LOGGER_TAG, "register package install receiver error, cause" + m59exceptionOrNullimpl.getMessage(), null, 4, null);
        }
    }
}
