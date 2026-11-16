package com.taptap.sdk.moment.legacy.utils;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public class NavigationBarUtil {
    public static void hideNavigationBar(final Window window) {
        if (window != null) {
            window.getDecorView().setSystemUiVisibility(2);
            window.getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.taptap.sdk.moment.legacy.utils.NavigationBarUtil.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i) {
                    window.getDecorView().setSystemUiVisibility(Build.VERSION.SDK_INT >= 19 ? 5894 : 1799);
                }
            });
        }
    }

    public static void focusNotAle(Window window) {
        if (window != null) {
            window.setFlags(8, 8);
        }
    }

    public static void clearFocusNotAle(Window window) {
        if (window != null) {
            window.clearFlags(8);
        }
    }
}
