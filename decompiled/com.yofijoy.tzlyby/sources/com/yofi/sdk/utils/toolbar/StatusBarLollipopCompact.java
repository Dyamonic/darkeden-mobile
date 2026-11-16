package com.yofi.sdk.utils.toolbar;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewCompat;

/* loaded from: classes2.dex */
public class StatusBarLollipopCompact {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setStatusBarColor(Activity activity, int statusColor) {
        Window window = activity.getWindow();
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(statusColor);
        window.getDecorView().setSystemUiVisibility(0);
        View childAt = ((ViewGroup) window.findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(false);
            ViewCompat.requestApplyInsets(childAt);
        }
    }

    public static void translucentStatusBar(Activity activity, boolean hideStatusBarBackground) {
        Window window = activity.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        if (hideStatusBarBackground) {
            window.clearFlags(67108864);
            window.setStatusBarColor(0);
            window.getDecorView().setSystemUiVisibility(9216);
        } else {
            window.addFlags(67108864);
            window.getDecorView().setSystemUiVisibility(0);
        }
        View childAt = ((ViewGroup) window.findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(false);
            ViewCompat.requestApplyInsets(childAt);
        }
    }

    private static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelOffset(identifier);
        }
        return 0;
    }
}
