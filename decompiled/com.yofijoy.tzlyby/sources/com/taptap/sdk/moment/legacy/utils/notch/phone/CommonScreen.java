package com.taptap.sdk.moment.legacy.utils.notch.phone;

import android.view.Window;
import com.taptap.sdk.moment.legacy.utils.notch.core.AbsNotchScreenSupport;

/* loaded from: classes.dex */
public class CommonScreen extends AbsNotchScreenSupport {
    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getNotchHeight(Window window) {
        return 0;
    }

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getNotchWidth(Window window) {
        return 0;
    }

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public boolean isNotchScreen(Window window) {
        return false;
    }
}
