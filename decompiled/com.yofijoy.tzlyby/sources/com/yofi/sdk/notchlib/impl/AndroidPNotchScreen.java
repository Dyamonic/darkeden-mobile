package com.yofi.sdk.notchlib.impl;

import android.app.Activity;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.yofi.sdk.notchlib.INotchScreen;

/* loaded from: classes2.dex */
public class AndroidPNotchScreen implements INotchScreen {
    @Override // com.yofi.sdk.notchlib.INotchScreen
    public boolean hasNotch(Activity activity) {
        return true;
    }

    @Override // com.yofi.sdk.notchlib.INotchScreen
    public void setDisplayInNotch(Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        window.setAttributes(attributes);
        window.getDecorView().setSystemUiVisibility(5894);
    }

    @Override // com.yofi.sdk.notchlib.INotchScreen
    public void getNotchRect(Activity activity, final INotchScreen.NotchSizeCallback callback) {
        final View decorView = activity.getWindow().getDecorView();
        decorView.post(new Runnable() { // from class: com.yofi.sdk.notchlib.impl.AndroidPNotchScreen.1
            @Override // java.lang.Runnable
            public void run() {
                DisplayCutout displayCutout;
                WindowInsets rootWindowInsets = decorView.getRootWindowInsets();
                if (rootWindowInsets != null && (displayCutout = rootWindowInsets.getDisplayCutout()) != null) {
                    callback.onResult(displayCutout.getBoundingRects());
                } else {
                    callback.onResult(null);
                }
            }
        });
    }
}
