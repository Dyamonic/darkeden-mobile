package com.taptap.sdk.moment.legacy.utils.notch.core;

import android.view.Window;
import com.taptap.sdk.moment.legacy.utils.notch.helper.NotchStatusBarUtils;

/* loaded from: classes.dex */
public abstract class AbsNotchScreenSupport implements INotchSupport {
    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getStatusHeight(Window window) {
        return NotchStatusBarUtils.getStatusBarHeight(window.getContext());
    }
}
