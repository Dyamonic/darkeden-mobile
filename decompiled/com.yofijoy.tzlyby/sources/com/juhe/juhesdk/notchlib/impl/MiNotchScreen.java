package com.juhe.juhesdk.notchlib.impl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.Window;
import com.juhe.juhesdk.notchlib.INotchScreen;
import com.juhe.juhesdk.notchlib.utils.ScreenUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MiNotchScreen implements INotchScreen {
    private static boolean isNotch() {
        try {
            return ((Integer) Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, "ro.miui.notch", 0)).intValue() == 1;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int getNotchHeight(Context context) {
        int identifier = context.getResources().getIdentifier("notch_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int getNotchWidth(Context context) {
        int identifier = context.getResources().getIdentifier("notch_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public boolean hasNotch(Activity activity) {
        return isNotch();
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public void setDisplayInNotch(Activity activity) {
        try {
            Window.class.getMethod("addExtraFlags", Integer.TYPE).invoke(activity.getWindow(), 1792);
        } catch (Exception unused) {
        }
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public void getNotchRect(Activity activity, INotchScreen.NotchSizeCallback callback) {
        Rect calculateNotchRect = ScreenUtil.calculateNotchRect(activity, getNotchWidth(activity), getNotchHeight(activity));
        ArrayList arrayList = new ArrayList();
        arrayList.add(calculateNotchRect);
        callback.onResult(arrayList);
    }
}
