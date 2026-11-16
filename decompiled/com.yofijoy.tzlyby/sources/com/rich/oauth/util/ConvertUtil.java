package com.rich.oauth.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public class ConvertUtil {
    public static int dp2px(Context context, float f) {
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getScreenWidth(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int px2dp(Context context, float f) {
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2sp(Context context, float f) {
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        return (int) ((f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int sp2px(Context context, float f) {
        if (!(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
