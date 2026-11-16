package com.yofi.sdk.utils;

import android.content.Context;

/* loaded from: classes2.dex */
public class ResUtils {
    public static int getId(Context activity, String name, String typeId) {
        return activity.getResources().getIdentifier(name, typeId, activity.getPackageName());
    }

    public static String getString(Context activity, String name) {
        return activity.getResources().getString(activity.getResources().getIdentifier(name, "string", activity.getPackageName()));
    }

    public static Boolean getBool(Context activity, String name) {
        return Boolean.valueOf(activity.getResources().getBoolean(activity.getResources().getIdentifier(name, "bool", activity.getPackageName())));
    }
}
