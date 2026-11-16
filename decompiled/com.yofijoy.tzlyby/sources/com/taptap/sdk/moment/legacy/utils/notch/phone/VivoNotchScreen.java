package com.taptap.sdk.moment.legacy.utils.notch.phone;

import android.os.Build;
import android.view.Window;
import com.taptap.sdk.kit.internal.extensions.UIExtKt;
import com.taptap.sdk.moment.legacy.utils.notch.core.AbsNotchScreenSupport;
import com.taptap.sdk.moment.legacy.utils.notch.helper.NotchStatusBarUtils;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class VivoNotchScreen extends AbsNotchScreenSupport {
    private final int DEFAULT_NOTCH_WIDTH = 100;
    private Class mClass;
    private Method mMethod;

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public boolean isNotchScreen(Window window) {
        if (Build.VERSION.SDK_INT < 26 || window == null) {
            return false;
        }
        try {
            Class<?> loadClass = window.getContext().getClassLoader().loadClass("android.util.FtFeature");
            this.mClass = loadClass;
            Method method = loadClass.getMethod("isFeatureSupport", Integer.TYPE);
            this.mMethod = method;
            return ((Boolean) method.invoke(this.mClass, 32)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getNotchHeight(Window window) {
        if (Build.VERSION.SDK_INT >= 26 && isNotchScreen(window)) {
            return NotchStatusBarUtils.getStatusBarHeight(window.getContext());
        }
        return 0;
    }

    @Override // com.taptap.sdk.moment.legacy.utils.notch.core.INotchSupport
    public int getNotchWidth(Window window) {
        return UIExtKt.toPx(100.0f);
    }
}
