package com.taptap.sdk.kit.internal.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.taptap.sdk.kit.internal.TapLogger;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* compiled from: TapActivityLifecycleTracker.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000fH\u0002¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0012H\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u0012H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\nJ\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u000e\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\rJ\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0005H\u0002J\u000e\u0010$\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\rR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;", "", "()V", "activityList", "Ljava/util/LinkedList;", "Landroid/app/Activity;", "configCount", "", "foregroundCount", "isBackground", "", "mActivityLifecycleCallbacks", "", "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;", "collectActivityLifecycleCallbacks", "", "()[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;", "getActivitiesByReflect", "", "getActivityList", "getActivityThread", "getActivityThreadInActivityThreadStaticField", "getActivityThreadInActivityThreadStaticMethod", "getTopActivity", "init", "", "context", "Landroid/content/Context;", "isAppForeground", "log", "msg", "", "registerActivityLifecycleCallbacks", "callback", "setTopActivity", "activity", "unregisterActivityLifecycleCallbacks", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapActivityLifecycleTracker {
    private static int configCount;
    private static int foregroundCount;
    private static boolean isBackground;
    public static final TapActivityLifecycleTracker INSTANCE = new TapActivityLifecycleTracker();
    private static final List<TapActivityLifecycleCallbacks> mActivityLifecycleCallbacks = new ArrayList();
    private static final LinkedList<Activity> activityList = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final void log(String msg) {
    }

    private TapActivityLifecycleTracker() {
    }

    public final boolean isAppForeground() {
        return !isBackground;
    }

    @JvmStatic
    public static final Activity getTopActivity() {
        for (Activity activity : INSTANCE.getActivityList()) {
            if (TapActivityUtils.INSTANCE.isActivityAlive(activity)) {
                return activity;
            }
        }
        return null;
    }

    public final void registerActivityLifecycleCallbacks(TapActivityLifecycleCallbacks callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        List<TapActivityLifecycleCallbacks> list = mActivityLifecycleCallbacks;
        synchronized (list) {
            if (!list.contains(callback)) {
                list.add(callback);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void unregisterActivityLifecycleCallbacks(TapActivityLifecycleCallbacks callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        List<TapActivityLifecycleCallbacks> list = mActivityLifecycleCallbacks;
        synchronized (list) {
            list.remove(callback);
        }
    }

    public final void init(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Application application = context instanceof Application ? (Application) context : null;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    TapActivityLifecycleTracker.INSTANCE.log("onActivityCreated [" + activity.getClass().getName() + AbstractJsonLexerKt.END_LIST);
                    TapActivityLifecycleTracker.INSTANCE.setTopActivity(activity);
                    collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks) {
                            tapActivityLifecycleCallbacks.onActivityCreated(activity, savedInstanceState);
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    boolean z;
                    int i;
                    int i2;
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    int i3;
                    int unused;
                    int unused2;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    TapActivityLifecycleTracker.INSTANCE.log("onActivityStarted [" + activity.getClass().getName() + AbstractJsonLexerKt.END_LIST);
                    z = TapActivityLifecycleTracker.isBackground;
                    if (!z) {
                        TapActivityLifecycleTracker.INSTANCE.setTopActivity(activity);
                    }
                    i = TapActivityLifecycleTracker.configCount;
                    if (i < 0) {
                        TapActivityLifecycleTracker tapActivityLifecycleTracker = TapActivityLifecycleTracker.INSTANCE;
                        i3 = TapActivityLifecycleTracker.configCount;
                        TapActivityLifecycleTracker.configCount = i3 + 1;
                        unused = TapActivityLifecycleTracker.configCount;
                    } else {
                        TapActivityLifecycleTracker tapActivityLifecycleTracker2 = TapActivityLifecycleTracker.INSTANCE;
                        i2 = TapActivityLifecycleTracker.foregroundCount;
                        TapActivityLifecycleTracker.foregroundCount = i2 + 1;
                        unused2 = TapActivityLifecycleTracker.foregroundCount;
                    }
                    collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks) {
                            tapActivityLifecycleCallbacks.onActivityStarted(activity);
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    boolean z;
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks2;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    TapActivityLifecycleTracker.INSTANCE.log("onActivityResumed [" + activity.getClass().getName() + AbstractJsonLexerKt.END_LIST);
                    TapActivityLifecycleTracker.INSTANCE.setTopActivity(activity);
                    z = TapActivityLifecycleTracker.isBackground;
                    if (z) {
                        TapLogger.logv("TapActivityLifecycleTracker", "App onForeground");
                        TapActivityLifecycleTracker tapActivityLifecycleTracker = TapActivityLifecycleTracker.INSTANCE;
                        TapActivityLifecycleTracker.isBackground = false;
                        collectActivityLifecycleCallbacks2 = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                        if (collectActivityLifecycleCallbacks2 != null) {
                            for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks2) {
                                tapActivityLifecycleCallbacks.onForeground(activity);
                            }
                        }
                    }
                    collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks2 : collectActivityLifecycleCallbacks) {
                            tapActivityLifecycleCallbacks2.onActivityResumed(activity);
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    TapActivityLifecycleTracker.INSTANCE.log("onActivityPaused [" + activity.getClass().getName() + AbstractJsonLexerKt.END_LIST);
                    collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks) {
                            tapActivityLifecycleCallbacks.onActivityPaused(activity);
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    int i;
                    int i2;
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks2;
                    int i3;
                    int unused;
                    int unused2;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    TapActivityLifecycleTracker.INSTANCE.log("onActivityStopped [" + activity.getClass().getName() + AbstractJsonLexerKt.END_LIST);
                    if (activity.isChangingConfigurations()) {
                        TapActivityLifecycleTracker tapActivityLifecycleTracker = TapActivityLifecycleTracker.INSTANCE;
                        i3 = TapActivityLifecycleTracker.configCount;
                        TapActivityLifecycleTracker.configCount = i3 - 1;
                        unused = TapActivityLifecycleTracker.configCount;
                    } else {
                        TapActivityLifecycleTracker tapActivityLifecycleTracker2 = TapActivityLifecycleTracker.INSTANCE;
                        i = TapActivityLifecycleTracker.foregroundCount;
                        TapActivityLifecycleTracker.foregroundCount = i - 1;
                        unused2 = TapActivityLifecycleTracker.foregroundCount;
                        i2 = TapActivityLifecycleTracker.foregroundCount;
                        if (i2 <= 0) {
                            TapActivityLifecycleTracker tapActivityLifecycleTracker3 = TapActivityLifecycleTracker.INSTANCE;
                            TapActivityLifecycleTracker.isBackground = true;
                            collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                            if (collectActivityLifecycleCallbacks != null) {
                                for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks) {
                                    tapActivityLifecycleCallbacks.onBackground(activity);
                                }
                            }
                        }
                    }
                    collectActivityLifecycleCallbacks2 = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks2 != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks2 : collectActivityLifecycleCallbacks2) {
                            tapActivityLifecycleCallbacks2.onActivityStopped(activity);
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    Intrinsics.checkNotNullParameter(outState, "outState");
                    collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks) {
                            tapActivityLifecycleCallbacks.onActivitySaveInstanceState(activity, outState);
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    LinkedList linkedList;
                    TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks;
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    linkedList = TapActivityLifecycleTracker.activityList;
                    linkedList.remove(activity);
                    collectActivityLifecycleCallbacks = TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                    if (collectActivityLifecycleCallbacks != null) {
                        for (TapActivityLifecycleCallbacks tapActivityLifecycleCallbacks : collectActivityLifecycleCallbacks) {
                            tapActivityLifecycleCallbacks.onActivityDestroyed(activity);
                        }
                    }
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPreCreated(android.app.Activity r5, android.os.Bundle r6) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPreCreated(r5, r6)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPreCreated(r5, r6)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPreCreated(android.app.Activity, android.os.Bundle):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostCreated(android.app.Activity r5, android.os.Bundle r6) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPostCreated(r5, r6)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPostCreated(r5, r6)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostCreated(android.app.Activity, android.os.Bundle):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPreStarted(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPreStarted(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPreStarted(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPreStarted(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostStarted(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPostStarted(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPostStarted(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostStarted(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPreResumed(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPreResumed(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPreResumed(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPreResumed(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostResumed(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPostResumed(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPostResumed(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostResumed(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPrePaused(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPrePaused(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPrePaused(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPrePaused(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostPaused(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPostPaused(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPostPaused(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostPaused(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPreStopped(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPreStopped(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPreStopped(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPreStopped(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostStopped(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPostStopped(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPostStopped(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostStopped(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x0013, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPreSaveInstanceState(android.app.Activity r5, android.os.Bundle r6) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        java.lang.String r0 = "outState"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                        super.onActivityPreSaveInstanceState(r5, r6)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L27
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L27
                        r1 = 0
                        int r2 = r0.length
                    L1d:
                        if (r1 >= r2) goto L27
                        r3 = r0[r1]
                        r3.onActivityPreSaveInstanceState(r5, r6)
                        int r1 = r1 + 1
                        goto L1d
                    L27:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPreSaveInstanceState(android.app.Activity, android.os.Bundle):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x0013, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostSaveInstanceState(android.app.Activity r5, android.os.Bundle r6) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        java.lang.String r0 = "outState"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                        super.onActivityPostSaveInstanceState(r5, r6)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L27
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L27
                        r1 = 0
                        int r2 = r0.length
                    L1d:
                        if (r1 >= r2) goto L27
                        r3 = r0[r1]
                        r3.onActivityPostSaveInstanceState(r5, r6)
                        int r1 = r1 + 1
                        goto L1d
                    L27:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostSaveInstanceState(android.app.Activity, android.os.Bundle):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPreDestroyed(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPreDestroyed(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPreDestroyed(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPreDestroyed(android.app.Activity):void");
                }

                /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
                
                    r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE.collectActivityLifecycleCallbacks();
                 */
                @Override // android.app.Application.ActivityLifecycleCallbacks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onActivityPostDestroyed(android.app.Activity r5) {
                    /*
                        r4 = this;
                        java.lang.String r0 = "activity"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        super.onActivityPostDestroyed(r5)
                        int r0 = android.os.Build.VERSION.SDK_INT
                        r1 = 29
                        if (r0 < r1) goto L22
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.INSTANCE
                        com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks[] r0 = com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.access$collectActivityLifecycleCallbacks(r0)
                        if (r0 == 0) goto L22
                        r1 = 0
                        int r2 = r0.length
                    L18:
                        if (r1 >= r2) goto L22
                        r3 = r0[r1]
                        r3.onActivityPostDestroyed(r5)
                        int r1 = r1 + 1
                        goto L18
                    L22:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker$init$1.onActivityPostDestroyed(android.app.Activity):void");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTopActivity(Activity activity) {
        LinkedList<Activity> linkedList = activityList;
        if (linkedList.contains(activity)) {
            if (linkedList.getFirst().equals(activity)) {
                return;
            }
            linkedList.remove(activity);
            linkedList.addFirst(activity);
            return;
        }
        linkedList.addFirst(activity);
    }

    private final List<Activity> getActivityList() {
        LinkedList<Activity> linkedList = activityList;
        if (!linkedList.isEmpty()) {
            return new LinkedList(linkedList);
        }
        linkedList.addAll(getActivitiesByReflect());
        return new LinkedList(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<android.app.Activity> getActivitiesByReflect() {
        /*
            r9 = this;
            java.util.LinkedList r0 = new java.util.LinkedList
            r0.<init>()
            r1 = 0
            java.lang.Object r2 = r9.getActivityThread()     // Catch: java.lang.Exception -> L87
            if (r2 != 0) goto Lf
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Exception -> L87
            return r0
        Lf:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L87
            java.lang.String r4 = "mActivities"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r4)     // Catch: java.lang.Exception -> L87
            java.lang.String r4 = "activityThread.javaClass…laredField(\"mActivities\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)     // Catch: java.lang.Exception -> L87
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L87
            java.lang.Object r2 = r3.get(r2)     // Catch: java.lang.Exception -> L87
            boolean r3 = r2 instanceof java.util.Map     // Catch: java.lang.Exception -> L87
            if (r3 == 0) goto L2d
            java.util.Map r2 = (java.util.Map) r2     // Catch: java.lang.Exception -> L87
            goto L2e
        L2d:
            r2 = r1
        L2e:
            if (r2 != 0) goto L33
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Exception -> L87
            return r0
        L33:
            java.util.Collection r2 = r2.values()     // Catch: java.lang.Exception -> L87
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L87
            r3 = r1
        L3c:
            boolean r5 = r2.hasNext()     // Catch: java.lang.Exception -> L84
            if (r5 == 0) goto L92
            java.lang.Object r5 = r2.next()     // Catch: java.lang.Exception -> L84
            java.lang.Class r6 = r5.getClass()     // Catch: java.lang.Exception -> L84
            java.lang.String r7 = "activity"
            java.lang.reflect.Field r7 = r6.getDeclaredField(r7)     // Catch: java.lang.Exception -> L84
            java.lang.String r8 = "activityClientRecordClas…DeclaredField(\"activity\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r8)     // Catch: java.lang.Exception -> L84
            r7.setAccessible(r4)     // Catch: java.lang.Exception -> L84
            java.lang.Object r7 = r7.get(r5)     // Catch: java.lang.Exception -> L84
            boolean r8 = r7 instanceof android.app.Activity     // Catch: java.lang.Exception -> L84
            if (r8 == 0) goto L63
            android.app.Activity r7 = (android.app.Activity) r7     // Catch: java.lang.Exception -> L84
            goto L64
        L63:
            r7 = r1
        L64:
            if (r3 != 0) goto L80
            java.lang.String r8 = "paused"
            java.lang.reflect.Field r6 = r6.getDeclaredField(r8)     // Catch: java.lang.Exception -> L84
            java.lang.String r8 = "activityClientRecordClas…etDeclaredField(\"paused\")"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r8)     // Catch: java.lang.Exception -> L84
            r6.setAccessible(r4)     // Catch: java.lang.Exception -> L84
            boolean r5 = r6.getBoolean(r5)     // Catch: java.lang.Exception -> L84
            if (r5 != 0) goto L7c
            r3 = r7
            goto L3c
        L7c:
            r0.addFirst(r7)     // Catch: java.lang.Exception -> L84
            goto L3c
        L80:
            r0.addFirst(r7)     // Catch: java.lang.Exception -> L84
            goto L3c
        L84:
            r2 = move-exception
            r1 = r3
            goto L88
        L87:
            r2 = move-exception
        L88:
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.String r3 = "TapActivityLifecycleTracker"
            java.lang.String r4 = "getActivitiesByReflect"
            com.taptap.sdk.kit.internal.TapLogger.logd(r3, r4, r2)
            r3 = r1
        L92:
            if (r3 == 0) goto L97
            r0.addFirst(r3)
        L97:
            java.util.List r0 = (java.util.List) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.utils.TapActivityLifecycleTracker.getActivitiesByReflect():java.util.List");
    }

    private final Object getActivityThread() {
        Object activityThreadInActivityThreadStaticField = getActivityThreadInActivityThreadStaticField();
        return activityThreadInActivityThreadStaticField != null ? activityThreadInActivityThreadStaticField : getActivityThreadInActivityThreadStaticMethod();
    }

    private final Object getActivityThreadInActivityThreadStaticField() {
        try {
            Field declaredField = Class.forName("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            TapLogger.logd("TapActivityLifecycleTracker", "getActivityThreadInActivityThreadStaticField: ", e);
            return null;
        }
    }

    private final Object getActivityThreadInActivityThreadStaticMethod() {
        try {
            return Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            TapLogger.logd("TapActivityLifecycleTracker", "getActivityThreadInActivityThreadStaticMethod: ", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TapActivityLifecycleCallbacks[] collectActivityLifecycleCallbacks() {
        Object[] array;
        List<TapActivityLifecycleCallbacks> list = mActivityLifecycleCallbacks;
        synchronized (list) {
            array = list.size() > 0 ? list.toArray(new TapActivityLifecycleCallbacks[0]) : null;
            Unit unit = Unit.INSTANCE;
        }
        return (TapActivityLifecycleCallbacks[]) array;
    }
}
