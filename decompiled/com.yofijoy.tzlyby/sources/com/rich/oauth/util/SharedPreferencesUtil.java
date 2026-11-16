package com.rich.oauth.util;

import android.content.Context;

/* loaded from: classes.dex */
public class SharedPreferencesUtil {
    public static Long getlastRequestTime(Context context) {
        return Long.valueOf(context.getSharedPreferences("oauth", 0).getLong("lasttime", 0L));
    }

    public static boolean setlastRequestTime(Context context, long j) {
        return context.getSharedPreferences("oauth", 0).edit().putLong("lasttime", j).commit();
    }
}
