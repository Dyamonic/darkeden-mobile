package com.yofi.sdk.notchlib.impl;

import android.app.Activity;
import android.view.Window;
import android.view.WindowManager;
import com.yofi.sdk.notchlib.INotchScreen;
import com.yofi.sdk.notchlib.utils.ScreenUtil;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class HuaweiNotchScreen implements INotchScreen {
    public static final int FLAG_NOTCH_SUPPORT = 65536;

    public static void setNotDisplayInNotch(Activity activity) {
        try {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("clearHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
            window.getWindowManager().updateViewLayout(window.getDecorView(), window.getDecorView().getLayoutParams());
        } catch (Throwable unused) {
        }
    }

    @Override // com.yofi.sdk.notchlib.INotchScreen
    public boolean hasNotch(Activity activity) {
        try {
            Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.yofi.sdk.notchlib.INotchScreen
    public void setDisplayInNotch(Activity activity) {
        try {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("addHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 65536);
            window.getWindowManager().updateViewLayout(window.getDecorView(), window.getDecorView().getLayoutParams());
        } catch (Throwable unused) {
        }
    }

    @Override // com.yofi.sdk.notchlib.INotchScreen
    public void getNotchRect(Activity activity, INotchScreen.NotchSizeCallback callback) {
        try {
            Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            int[] iArr = (int[]) loadClass.getMethod("getNotchSize", new Class[0]).invoke(loadClass, new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(ScreenUtil.calculateNotchRect(activity, iArr[0], iArr[1]));
            callback.onResult(arrayList);
        } catch (Throwable unused) {
            callback.onResult(null);
        }
    }
}
