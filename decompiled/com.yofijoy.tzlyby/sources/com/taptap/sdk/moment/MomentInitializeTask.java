package com.taptap.sdk.moment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.taptap.sdk.initializer.api.option.TapTapSdkOptions;
import com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks;
import com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker;
import com.taptap.sdk.moment.TapTapMoment;
import com.taptap.sdk.moment.constant.Constant;
import com.taptap.sdk.moment.legacy.utils.SimpleLocalBroadcastManager;
import com.taptap.sdk.moment.legacy.utils.TapTapMomentPlatform;
import com.taptap.sdk.startup.task.InitializeTask;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MomentInitializeTask.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\n"}, d2 = {"Lcom/taptap/sdk/moment/MomentInitializeTask;", "Lcom/taptap/sdk/startup/task/InitializeTask;", "()V", "execute", "", "context", "Landroid/content/Context;", "options", "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;", "registerBroadcast", "tap-moment_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MomentInitializeTask implements InitializeTask {
    @Override // com.taptap.sdk.startup.task.InitializeTask
    public void execute(Context context, TapTapSdkOptions options) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(options, "options");
        TapMomentInternal.INSTANCE.setRegionType(options.getRegion());
        TapMomentInternal.INSTANCE.setClientId(options.getClientId());
        TapTapMomentPlatform.init(context);
        TapActivityLifecycleTracker.INSTANCE.registerActivityLifecycleCallbacks(new TapActivityLifecycleCallbacks() { // from class: com.taptap.sdk.moment.MomentInitializeTask$execute$1
            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                TapActivityLifecycleCallbacks.DefaultImpls.onActivityCreated(this, activity, bundle);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                TapActivityLifecycleCallbacks.DefaultImpls.onActivityDestroyed(this, activity);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                TapActivityLifecycleCallbacks.DefaultImpls.onActivitySaveInstanceState(this, activity, bundle);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                TapActivityLifecycleCallbacks.DefaultImpls.onActivityStarted(this, activity);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                TapActivityLifecycleCallbacks.DefaultImpls.onActivityStopped(this, activity);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks
            public void onBackground(Context context2) {
                TapActivityLifecycleCallbacks.DefaultImpls.onBackground(this, context2);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks
            public void onForeground(Context context2) {
                TapActivityLifecycleCallbacks.DefaultImpls.onForeground(this, context2);
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                TapTapMoment.TapTapMomentCallback tapMomentCallback$tap_moment_release = TapTapMoment.INSTANCE.getTapMomentCallback$tap_moment_release();
                if (tapMomentCallback$tap_moment_release != null) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_ON_RESUME, "");
                }
            }

            @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                TapTapMoment.TapTapMomentCallback tapMomentCallback$tap_moment_release = TapTapMoment.INSTANCE.getTapMomentCallback$tap_moment_release();
                if (tapMomentCallback$tap_moment_release != null) {
                    tapMomentCallback$tap_moment_release.onCallback(500, "");
                }
            }
        });
        registerBroadcast();
        TapTapMoment.TapTapMomentCallback tapMomentCallback$tap_moment_release = TapTapMoment.INSTANCE.getTapMomentCallback$tap_moment_release();
        if (tapMomentCallback$tap_moment_release != null) {
            tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_INIT_SUCCESS, "");
        }
        MomentTracker.INSTANCE.trackInit$tap_moment_release();
    }

    private final void registerBroadcast() {
        SimpleLocalBroadcastManager simpleLocalBroadcastManager = SimpleLocalBroadcastManager.getInstance();
        simpleLocalBroadcastManager.unRegisterReceiver();
        simpleLocalBroadcastManager.registerReceiver(new SimpleLocalBroadcastManager.BroadcastReceiver() { // from class: com.taptap.sdk.moment.-$$Lambda$MomentInitializeTask$tDAB9jwFKGl3JzDHKpopIt5_fn4
            @Override // com.taptap.sdk.moment.legacy.utils.SimpleLocalBroadcastManager.BroadcastReceiver
            public final void onReceive(String str, Map map) {
                MomentInitializeTask.registerBroadcast$lambda$0(str, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerBroadcast$lambda$0(String str, Map map) {
        TapTapMoment.TapTapMomentCallback tapMomentCallback$tap_moment_release = TapTapMoment.INSTANCE.getTapMomentCallback$tap_moment_release();
        if (tapMomentCallback$tap_moment_release == null || str == null) {
            return;
        }
        switch (str.hashCode()) {
            case -1621146431:
                if (str.equals(Constant.TAP_MOMENT_DISAPPEAR_ACTION)) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_MOMENT_DISAPPEAR, "");
                    return;
                }
                return;
            case -1144571773:
                if (str.equals(Constant.TAP_MOMENT_CLOSE_CANCEL_ACTION)) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_ClOSE_CANCEL, "");
                    return;
                }
                return;
            case -359106115:
                if (str.equals(Constant.TAP_MOMENT_SCENE_EVENT_ACTION)) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_SCENE_EVENT, (String) map.get(NotificationCompat.CATEGORY_EVENT));
                    return;
                }
                return;
            case 151948689:
                if (str.equals(Constant.TAP_MOMENT_PUBLISH_SUCCESS_ACTION)) {
                    MomentTracker.trackSuccess$tap_moment_release$default(MomentTracker.INSTANCE, "publish", TapMomentInternal.INSTANCE.getCurrentPublishSessionId(), null, 4, null);
                    tapMomentCallback$tap_moment_release.onCallback(10000, "");
                    return;
                }
                return;
            case 717422362:
                if (str.equals(Constant.TAP_MOMENT_PUBLISH_CANCEL_ACTION)) {
                    MomentTracker.trackCancel$tap_moment_release$default(MomentTracker.INSTANCE, "publish", TapMomentInternal.INSTANCE.getCurrentPublishSessionId(), null, 4, null);
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_PUBLISH_CANCEL, "");
                    return;
                }
                return;
            case 732877175:
                if (str.equals(Constant.TAP_MOMENT_LOGIN_SUCCESS_ACTION)) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_LOGIN_SUCCESS, (String) map.get("token"));
                    return;
                }
                return;
            case 1010905615:
                if (str.equals(Constant.TAP_MOMENT_APPEAR_ACTION)) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_MOMENT_APPEAR, "");
                    return;
                }
                return;
            case 1395942059:
                if (str.equals(Constant.TAP_MOMENT_CLOSE_CONFIRM_ACTION)) {
                    tapMomentCallback$tap_moment_release.onCallback(Constant.CALLBACK_CODE_ClOSE_CONFIRM, "");
                    return;
                }
                return;
            case 1956305142:
                if (str.equals(Constant.TAP_MOMENT_PUBLISH_FAIL_ACTION)) {
                    MomentTracker.trackFail$tap_moment_release$default(MomentTracker.INSTANCE, "publish", TapMomentInternal.INSTANCE.getCurrentPublishSessionId(), null, -1, "publish fail", 4, null);
                    tapMomentCallback$tap_moment_release.onCallback(10100, "");
                    return;
                }
                return;
            default:
                return;
        }
    }
}
