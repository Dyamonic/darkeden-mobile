package com.bytedance.ads.convert.utils;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;

/* loaded from: classes.dex */
public class AndroidIdUtils {
    private static String androidId = "";

    public static String getAndroidId(Context context) {
        String str = androidId;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            str = Settings.Secure.getString(context.getContentResolver(), TapEventParamConstants.PARAM_SUB_ANDROID_ID);
            androidId = str;
            return str;
        } catch (Exception unused) {
            return str;
        }
    }
}
