package com.yofi.sdk.utils.toolbar;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class StatusBarUtil {
    public static void setStatusBarColor(Activity activity, int statusColor) {
        if (Build.VERSION.SDK_INT >= 21) {
            StatusBarLollipopCompact.setStatusBarColor(activity, statusColor);
        } else if (Build.VERSION.SDK_INT >= 19) {
            StatusBarKitKatCompact.setStatusBarColor(activity, statusColor);
        }
    }

    public static void translucentStatusBar(Activity activity) {
        translucentStatusBar(activity, false);
    }

    public static void translucentStatusBar(Activity activity, boolean hideStatusBarBackground) {
        if (Build.VERSION.SDK_INT >= 21) {
            StatusBarLollipopCompact.translucentStatusBar(activity, hideStatusBarBackground);
        } else if (Build.VERSION.SDK_INT >= 19) {
            StatusBarKitKatCompact.translucentStatusBar(activity);
        }
    }

    public static void setStatusBarLightMode(Activity activity, int color) {
        if (Build.VERSION.SDK_INT >= 19) {
            if (MIUISetStatusBarLightMode(activity, true) || FlymeSetStatusBarLightMode(activity, true)) {
                if (Build.VERSION.SDK_INT >= 21) {
                    activity.getWindow().setStatusBarColor(color);
                    return;
                } else {
                    if (Build.VERSION.SDK_INT >= 19) {
                        setStatusBarColor(activity, color);
                        return;
                    }
                    return;
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                activity.getWindow().setBackgroundDrawableResource(R.color.transparent);
                activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                activity.getWindow().setStatusBarColor(color);
                View childAt = ((ViewGroup) activity.getWindow().findViewById(R.id.content)).getChildAt(0);
                if (childAt != null) {
                    childAt.setFitsSystemWindows(true);
                    ViewCompat.requestApplyInsets(childAt);
                }
            }
        }
    }

    static boolean MIUISetStatusBarLightMode(Activity activity, boolean darkmode) {
        try {
            Class<?> cls = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(8192);
            Class<?> cls2 = activity.getWindow().getClass();
            int i = cls.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls);
            Method method = cls2.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
            Window window2 = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(darkmode ? i : 0);
            objArr[1] = Integer.valueOf(i);
            method.invoke(window2, objArr);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    static boolean FlymeSetStatusBarLightMode(Activity activity, boolean darkmode) {
        try {
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i = declaredField.getInt(null);
            int i2 = declaredField2.getInt(attributes);
            declaredField2.setInt(attributes, darkmode ? i2 | i : (~i) & i2);
            activity.getWindow().setAttributes(attributes);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    static void setContentTopPadding(Activity activity, int padding) {
        ((ViewGroup) activity.getWindow().findViewById(R.id.content)).setPadding(0, padding, 0, 0);
    }

    static int getPxFromDp(Context context, float dp) {
        return (int) TypedValue.applyDimension(1, dp, context.getResources().getDisplayMetrics());
    }
}
