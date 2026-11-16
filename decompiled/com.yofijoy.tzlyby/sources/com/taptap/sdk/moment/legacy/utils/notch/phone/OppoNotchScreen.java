package com.taptap.sdk.moment.legacy.utils.notch.phone;

import android.os.Build;
import android.view.Window;
import com.taptap.sdk.moment.legacy.utils.notch.core.AbsNotchScreenSupport;
import com.taptap.sdk.moment.legacy.utils.notch.helper.NotchStatusBarUtils;

/* loaded from: classes.dex */
public class OppoNotchScreen extends AbsNotchScreenSupport {
    private final int DEFAULT_NOTCH_WIDTH = 324;

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getNotchWidth(Window window) {
        return 324;
    }

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public boolean isNotchScreen(Window window) {
        if (Build.VERSION.SDK_INT >= 26 && window != null) {
            return window.getContext().getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
        }
        return false;
    }

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getNotchHeight(Window window) {
        if (Build.VERSION.SDK_INT >= 26 && isNotchScreen(window)) {
            return NotchStatusBarUtils.getStatusBarHeight(window.getContext());
        }
        return 0;
    }
}
