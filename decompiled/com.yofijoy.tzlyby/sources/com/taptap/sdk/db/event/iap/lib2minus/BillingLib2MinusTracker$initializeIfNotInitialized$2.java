package com.taptap.sdk.db.event.iap.lib2minus;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.taptap.sdk.db.event.iap.common.IAPEventUtils;
import com.taptap.sdk.db.event.utils.TapEventLogger;
import com.taptap.sdk.kit.internal.executor.TapNetExecutor;
import com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BillingLib2MinusTracker.kt */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u000f"}, d2 = {"com/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2", "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "tap-db_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class BillingLib2MinusTracker$initializeIfNotInitialized$2 implements TapActivityLifecycleCallbacks {
    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks
    public void onBackground(Context context) {
        TapActivityLifecycleCallbacks.DefaultImpls.onBackground(this, context);
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks
    public void onForeground(Context context) {
        TapActivityLifecycleCallbacks.DefaultImpls.onForeground(this, context);
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            TapNetExecutor.getExecutor().execute(new Runnable() { // from class: com.taptap.sdk.db.event.iap.lib2minus.-$$Lambda$BillingLib2MinusTracker$initializeIfNotInitialized$2$GDxwvDI2aMqwB9qyQWJ6wkczBgs
                @Override // java.lang.Runnable
                public final void run() {
                    BillingLib2MinusTracker$initializeIfNotInitialized$2.onActivityResumed$lambda$0();
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityResumed$lambda$0() {
        Object obj;
        Context applicationContext$tap_db_release = TapEventLogger.INSTANCE.getApplicationContext$tap_db_release();
        obj = BillingLib2MinusTracker.inAppBillingObj;
        BillingLib2MinusTracker.INSTANCE.logPurchase(applicationContext$tap_db_release, IAPEventUtils.getPurchasesInapp(applicationContext$tap_db_release, obj), false);
    }

    @Override // com.taptap.sdk.kit.internal.utils.TapActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            bool = BillingLib2MinusTracker.hasBillingActivity;
            if (Intrinsics.areEqual((Object) bool, (Object) true) && Intrinsics.areEqual(activity.getLocalClassName(), "com.android.billingclient.api.ProxyBillingActivity")) {
                TapNetExecutor.getExecutor().execute(new Runnable() { // from class: com.taptap.sdk.db.event.iap.lib2minus.-$$Lambda$BillingLib2MinusTracker$initializeIfNotInitialized$2$9VlITwKy_MruzDE6C9NyEXPpKc8
                    @Override // java.lang.Runnable
                    public final void run() {
                        BillingLib2MinusTracker$initializeIfNotInitialized$2.onActivityStopped$lambda$1();
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityStopped$lambda$1() {
        Object obj;
        Object obj2;
        Context applicationContext$tap_db_release = TapEventLogger.INSTANCE.getApplicationContext$tap_db_release();
        obj = BillingLib2MinusTracker.inAppBillingObj;
        ArrayList<String> purchasesInapp = IAPEventUtils.getPurchasesInapp(applicationContext$tap_db_release, obj);
        if (purchasesInapp.isEmpty()) {
            obj2 = BillingLib2MinusTracker.inAppBillingObj;
            purchasesInapp = IAPEventUtils.getPurchaseHistoryInapp(applicationContext$tap_db_release, obj2);
        }
        BillingLib2MinusTracker.INSTANCE.logPurchase(applicationContext$tap_db_release, purchasesInapp, false);
    }
}
