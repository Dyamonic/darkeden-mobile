package com.juhe.juhesdk.notchlib.impl;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import com.juhe.juhesdk.notchlib.INotchScreen;
import com.juhe.juhesdk.notchlib.utils.ScreenUtil;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class OppoNotchScreen implements INotchScreen {
    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    @Deprecated
    public void setDisplayInNotch(Activity activity) {
    }

    private static String getScreenValue() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls.newInstance(), "ro.oppo.screen.heteromorphism");
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public boolean hasNotch(Activity activity) {
        try {
            return activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.juhe.juhesdk.notchlib.INotchScreen
    public void getNotchRect(Activity activity, INotchScreen.NotchSizeCallback callback) {
        int intValue;
        int intValue2;
        int intValue3;
        int i;
        try {
            String screenValue = getScreenValue();
            if (TextUtils.isEmpty(screenValue)) {
                return;
            }
            String[] split = screenValue.split(":");
            String[] split2 = split[0].split(",");
            String[] split3 = split[1].split(",");
            if (ScreenUtil.isPortrait(activity)) {
                intValue = Integer.valueOf(split2[0]).intValue();
                intValue2 = Integer.valueOf(split2[1]).intValue();
                i = Integer.valueOf(split3[0]).intValue();
                intValue3 = Integer.valueOf(split3[1]).intValue();
            } else {
                intValue = Integer.valueOf(split2[1]).intValue();
                intValue2 = Integer.valueOf(split2[0]).intValue();
                int intValue4 = Integer.valueOf(split3[1]).intValue();
                intValue3 = Integer.valueOf(split3[0]).intValue();
                i = intValue4;
            }
            Rect rect = new Rect(intValue, intValue2, i, intValue3);
            ArrayList arrayList = new ArrayList();
            arrayList.add(rect);
            callback.onResult(arrayList);
        } catch (Throwable unused) {
            callback.onResult(null);
        }
    }
}
