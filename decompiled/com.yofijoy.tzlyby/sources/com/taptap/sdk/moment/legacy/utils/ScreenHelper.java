package com.taptap.sdk.moment.legacy.utils;

import android.view.Window;

/* loaded from: classes.dex */
public class ScreenHelper {
    public static void fullScreenImmersive(Window window) {
        window.setFlags(1024, 1024);
        window.getDecorView().setSystemUiVisibility(2566);
    }
}
