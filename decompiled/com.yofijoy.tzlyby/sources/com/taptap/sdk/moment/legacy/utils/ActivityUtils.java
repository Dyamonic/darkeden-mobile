package com.taptap.sdk.moment.legacy.utils;

import android.app.Activity;

/* loaded from: classes.dex */
public class ActivityUtils {
    public static boolean isActivityNotAlive(Activity activity) {
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }

    public static boolean isActivityAlive(Activity activity) {
        return !isActivityNotAlive(activity);
    }
}
