package com.juhe.juhesdk.notchlib.impl;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.juhe.juhesdk.notchlib.INotchScreen;
import com.juhe.juhesdk.notchlib.utils.ScreenUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VivoNotchScreen implements INotchScreen {
    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    @Deprecated
    public void setDisplayInNotch(Activity activity) {
    }

    public static boolean isNotch() {
        try {
            Class<?> cls = Class.forName("android.util.FtFeature");
            return ((Boolean) cls.getMethod("isFtFeatureSupport", Integer.TYPE).invoke(cls.newInstance(), 32)).booleanValue();
        } catch (Exception e) {
            Log.e("tag", "get error() ", e);
            return false;
        }
    }

    public static int getNotchHeight(Context context) {
        return (int) (getDensity(context) * 27.0f);
    }

    public static int getNotchWidth(Context context) {
        return (int) (getDensity(context) * 100.0f);
    }

    private static float getDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public boolean hasNotch(Activity activity) {
        return isNotch();
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public void getNotchRect(Activity activity, INotchScreen.NotchSizeCallback callback) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ScreenUtil.calculateNotchRect(activity, getNotchWidth(activity), getNotchHeight(activity)));
        callback.onResult(arrayList);
    }
}
