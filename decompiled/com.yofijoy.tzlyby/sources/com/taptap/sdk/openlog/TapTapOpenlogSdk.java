package com.taptap.sdk.openlog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.taptap.sdk.initializer.api.option.TapTapSdkOptions;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.openlog.ITapOpenlog;
import com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks;
import com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker;
import com.taptap.sdk.openlog.internal.OpenLogImpl;
import com.taptap.sdk.openlog.internal.TapOpenLogRemote;
import com.taptap.sdk.openlog.utils.JsonUtils;
import com.taptap.sdk.openlog.utils.OpenlogExtrasUtils;
import com.yofi.sdk.imp.middle.common.Constants;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import org.json.JSONArray;

/* compiled from: TapTapOpenlogSdk.kt */
@Metadata(d1 = {"\u0000[\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0003*\u0001\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040+H\u0002J\u0016\u0010,\u001a\u00020'2\u0006\u0010-\u001a\u00020\u00142\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020)J\u0006\u0010\u001e\u001a\u00020)J\b\u00101\u001a\u00020'H\u0002J\u0010\u00102\u001a\u00020'2\b\u00103\u001a\u0004\u0018\u00010\u0004J\u0006\u00104\u001a\u00020'J\u0018\u00105\u001a\u0004\u0018\u0001062\u0006\u00107\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u0004J\u000e\u00109\u001a\u00020'2\u0006\u0010:\u001a\u00020\u0004J\u001c\u00109\u001a\u00020'2\u0014\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010<J\b\u0010=\u001a\u00020'H\u0002J\b\u0010>\u001a\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R+\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00048@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR+\u0010\u0010\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00048@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\u0013\u0010\u000f\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\rR+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\u00148@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b\u001a\u0010\u000f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R+\u0010 \u001a\u00020\u001f2\u0006\u0010\b\u001a\u00020\u001f8@@@X\u0080\u008e\u0002¢\u0006\u0012\n\u0004\b%\u0010\u000f\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006?"}, d2 = {"Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;", "", "()V", "TAG", "", "activityLifecycleCallbacks", "com/taptap/sdk/openlog/TapTapOpenlogSdk$activityLifecycleCallbacks$1", "Lcom/taptap/sdk/openlog/TapTapOpenlogSdk$activityLifecycleCallbacks$1;", "<set-?>", "clientId", "getClientId$tap_openlog_release", "()Ljava/lang/String;", "setClientId$tap_openlog_release", "(Ljava/lang/String;)V", "clientId$delegate", "Lkotlin/properties/ReadWriteProperty;", "clientToken", "getClientToken$tap_openlog_release", "setClientToken$tap_openlog_release", "clientToken$delegate", "Landroid/content/Context;", "context", "getContext$tap_openlog_release", "()Landroid/content/Context;", "setContext$tap_openlog_release", "(Landroid/content/Context;)V", "context$delegate", "currentOpenId", "heartbeatEnabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isHeartbeatStarted", "", "region", "getRegion$tap_openlog_release", "()I", "setRegion$tap_openlog_release", "(I)V", "region$delegate", "enableHeartbeat", "", "enabled", "", "getWhiteList", "", "initialize", "ctx", "options", "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;", "isHeartbeatEnabled", "loadNativeLibrary", Constants.YoFiEventName.Login, "openId", "logout", "obtainOpenlog", "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;", "project", ClientCookie.VERSION_ATTR, "setExtraAppDurationParams", "jsonStr", "extras", "", "start", "stop", "tap-openlog_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapTapOpenlogSdk {
    private static final String TAG = "OpenLogInitializeTask";
    private static String currentOpenId;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(TapTapOpenlogSdk.class, "context", "getContext$tap_openlog_release()Landroid/content/Context;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(TapTapOpenlogSdk.class, "region", "getRegion$tap_openlog_release()I", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(TapTapOpenlogSdk.class, "clientId", "getClientId$tap_openlog_release()Ljava/lang/String;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(TapTapOpenlogSdk.class, "clientToken", "getClientToken$tap_openlog_release()Ljava/lang/String;", 0))};
    public static final TapTapOpenlogSdk INSTANCE = new TapTapOpenlogSdk();

    /* renamed from: context$delegate, reason: from kotlin metadata */
    private static final ReadWriteProperty context = Delegates.INSTANCE.notNull();

    /* renamed from: region$delegate, reason: from kotlin metadata */
    private static final ReadWriteProperty region = Delegates.INSTANCE.notNull();

    /* renamed from: clientId$delegate, reason: from kotlin metadata */
    private static final ReadWriteProperty clientId = Delegates.INSTANCE.notNull();

    /* renamed from: clientToken$delegate, reason: from kotlin metadata */
    private static final ReadWriteProperty clientToken = Delegates.INSTANCE.notNull();
    private static final AtomicBoolean isHeartbeatStarted = new AtomicBoolean(false);
    private static final AtomicBoolean heartbeatEnabled = new AtomicBoolean(false);
    private static final TapTapOpenlogSdk$activityLifecycleCallbacks$1 activityLifecycleCallbacks = new TapActivityLifecycleCallbacks() { // from class: com.taptap.sdk.openlog.TapTapOpenlogSdk$activityLifecycleCallbacks$1
        @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            TapActivityLifecycleCallbacks.DefaultImpls.onActivityCreated(this, activity, bundle);
        }

        @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            TapActivityLifecycleCallbacks.DefaultImpls.onActivityDestroyed(this, activity);
        }

        @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            TapActivityLifecycleCallbacks.DefaultImpls.onActivityPaused(this, activity);
        }

        @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            TapActivityLifecycleCallbacks.DefaultImpls.onActivityResumed(this, activity);
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
        public void onForeground(Context context2) {
            Intrinsics.checkNotNullParameter(context2, "context");
            TapActivityLifecycleCallbacks.DefaultImpls.onForeground(this, context2);
            if (TapTapOpenlogSdk.INSTANCE.isHeartbeatEnabled()) {
                TapOpenLogRemote.INSTANCE.onForeground();
            }
        }

        @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks
        public void onBackground(Context context2) {
            Intrinsics.checkNotNullParameter(context2, "context");
            TapActivityLifecycleCallbacks.DefaultImpls.onBackground(this, context2);
            if (TapTapOpenlogSdk.INSTANCE.isHeartbeatEnabled()) {
                TapOpenLogRemote.INSTANCE.onBackground();
            }
        }
    };

    private TapTapOpenlogSdk() {
    }

    public final Context getContext$tap_openlog_release() {
        return (Context) context.getValue(this, $$delegatedProperties[0]);
    }

    public final void setContext$tap_openlog_release(Context context2) {
        Intrinsics.checkNotNullParameter(context2, "<set-?>");
        context.setValue(this, $$delegatedProperties[0], context2);
    }

    public final int getRegion$tap_openlog_release() {
        return ((Number) region.getValue(this, $$delegatedProperties[1])).intValue();
    }

    public final void setRegion$tap_openlog_release(int i) {
        region.setValue(this, $$delegatedProperties[1], Integer.valueOf(i));
    }

    public final String getClientId$tap_openlog_release() {
        return (String) clientId.getValue(this, $$delegatedProperties[2]);
    }

    public final void setClientId$tap_openlog_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        clientId.setValue(this, $$delegatedProperties[2], str);
    }

    public final String getClientToken$tap_openlog_release() {
        return (String) clientToken.getValue(this, $$delegatedProperties[3]);
    }

    public final void setClientToken$tap_openlog_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        clientToken.setValue(this, $$delegatedProperties[3], str);
    }

    public final void initialize(Context ctx, TapTapSdkOptions options) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(options, "options");
        setContext$tap_openlog_release(ctx);
        setRegion$tap_openlog_release(options.getRegion());
        setClientId$tap_openlog_release(options.getClientId());
        setClientToken$tap_openlog_release(options.getClientToken());
        loadNativeLibrary();
        TapOpenLogRemote.INSTANCE.onAppStarted(JsonUtils.INSTANCE.stringify(OpenlogExtrasUtils.INSTANCE.getConfig(getContext$tap_openlog_release())));
    }

    private final void loadNativeLibrary() {
        try {
            System.loadLibrary("tapsdkcore");
            TapLogger.logd(TAG, "initialize end");
        } catch (Throwable th) {
            TapLogger.loge(TAG, "initialize failure", th);
        }
    }

    public final void enableHeartbeat(boolean enabled) {
        if (isHeartbeatEnabled() == enabled) {
            return;
        }
        heartbeatEnabled.set(enabled);
        if (enabled) {
            start();
        } else {
            stop();
        }
    }

    private final void start() {
        if (!isHeartbeatEnabled() || isHeartbeatStarted()) {
            return;
        }
        TapActivityLifecycleTracker.INSTANCE.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        isHeartbeatStarted.set(TapOpenLogRemote.INSTANCE.onAppStarted(JsonUtils.INSTANCE.stringify(OpenlogExtrasUtils.INSTANCE.getConfig(getContext$tap_openlog_release()))) == 0);
        TapOpenLogRemote tapOpenLogRemote = TapOpenLogRemote.INSTANCE;
        String jSONArray = new JSONArray(new String[]{"app_duration"}).toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray, "JSONArray(arrayOf(\"app_duration\")).toString()");
        tapOpenLogRemote.enableModules(jSONArray);
    }

    private final void stop() {
        TapActivityLifecycleTracker.INSTANCE.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        isHeartbeatStarted.set(false);
        TapOpenLogRemote tapOpenLogRemote = TapOpenLogRemote.INSTANCE;
        String jSONArray = new JSONArray(new String[]{"app_duration"}).toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray, "JSONArray(arrayOf(\"app_duration\")).toString()");
        tapOpenLogRemote.disableModules(jSONArray);
    }

    public final boolean isHeartbeatStarted() {
        return isHeartbeatStarted.get();
    }

    public final boolean isHeartbeatEnabled() {
        return heartbeatEnabled.get();
    }

    public final void login(String openId) {
        String str = openId;
        if (str == null || str.length() == 0) {
            TapLogger.logd(TAG, "openId 非法, openId = " + openId);
            return;
        }
        if (Intrinsics.areEqual(currentOpenId, openId)) {
            TapLogger.logd(TAG, "openId 与当前一致 currentOpenId = " + currentOpenId + " , openId = " + openId);
            return;
        }
        currentOpenId = openId;
        TapOpenLogRemote.INSTANCE.onLogin(JsonUtils.INSTANCE.stringify(MapsKt.mapOf(TuplesKt.to("open_id", openId))));
    }

    public final void logout() {
        currentOpenId = null;
        TapOpenLogRemote.INSTANCE.onLogout();
    }

    public final void setExtraAppDurationParams(Map<String, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        TapOpenLogRemote.INSTANCE.setExtraAppDurationParams(JsonUtils.INSTANCE.stringify(extras));
    }

    public final void setExtraAppDurationParams(String jsonStr) {
        Intrinsics.checkNotNullParameter(jsonStr, "jsonStr");
        TapOpenLogRemote.INSTANCE.setExtraAppDurationParams(jsonStr);
    }

    public final ITapOpenlog obtainOpenlog(String project, String version) {
        Intrinsics.checkNotNullParameter(project, "project");
        Intrinsics.checkNotNullParameter(version, "version");
        return new OpenLogImpl(project, version);
    }

    private final List<String> getWhiteList() {
        TapSdkProject[] values = TapSdkProject.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (TapSdkProject tapSdkProject : values) {
            arrayList.add(tapSdkProject.getValue());
        }
        return CollectionsKt.toList(arrayList);
    }
}
