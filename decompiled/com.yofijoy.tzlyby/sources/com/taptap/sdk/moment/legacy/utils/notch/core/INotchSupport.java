package com.taptap.sdk.moment.legacy.utils.notch.core;

import android.view.Window;

/* loaded from: classes.dex */
public interface INotchSupport {
    int getNotchHeight(Window window);

    int getNotchWidth(Window window);

    int getStatusHeight(Window window);

    boolean isNotchScreen(Window window);
}
