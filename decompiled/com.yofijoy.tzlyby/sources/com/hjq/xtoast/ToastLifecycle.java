package com.hjq.xtoast;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ToastLifecycle implements Application.ActivityLifecycleCallbacks {
    private Activity mActivity;
    private XToast mToast;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ToastLifecycle(XToast xToast, Activity activity) {
        this.mActivity = activity;
        this.mToast = xToast;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void register() {
        if (this.mActivity != null) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mActivity.registerActivityLifecycleCallbacks(this);
            } else {
                this.mActivity.getApplication().registerActivityLifecycleCallbacks(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unregister() {
        if (this.mActivity != null) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mActivity.unregisterActivityLifecycleCallbacks(this);
            } else {
                this.mActivity.getApplication().unregisterActivityLifecycleCallbacks(this);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        XToast xToast;
        Activity activity2 = this.mActivity;
        if (activity2 != null && (xToast = this.mToast) != null && activity2 == activity && xToast.isShow() && this.mActivity.isFinishing()) {
            this.mToast.cancel();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.mActivity == activity) {
            this.mActivity = null;
            XToast xToast = this.mToast;
            if (xToast != null) {
                xToast.recycle();
                this.mToast = null;
            }
        }
    }
}
