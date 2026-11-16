package com.bytedance.ads.convert.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.ads.convert.hume.readapk.Pair;
import com.bytedance.applog.IAppLogInstance;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.UUID;

/* loaded from: classes.dex */
public class AppUniqueIdUtils {
    private static final String NULL = "NULL";
    private static Pair<String, String> cache;

    public static Pair<String, String> getAppUniqueId(Context context, IAppLogInstance iAppLogInstance) {
        Pair<String, String> of;
        synchronized (AppUniqueIdUtils.class) {
            Pair<String, String> pair = cache;
            if (pair != null) {
                return pair;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(BusinessConstant.SP_NAME_APP_UNIQUE_ID, 0);
            String string = sharedPreferences.getString(BusinessConstant.SP_KEY_APP_UNIQUE_ID, NULL);
            if (!NULL.equals(string)) {
                Pair<String, String> of2 = Pair.of(sharedPreferences.getString(BusinessConstant.SP_KEY_APP_UNIQUE_ID_SOURCE, NULL), string);
                cache = of2;
                return of2;
            }
            String str = "";
            if (iAppLogInstance != null) {
                try {
                    str = iAppLogInstance.getDid();
                } catch (Exception unused) {
                }
            }
            if (str.isEmpty()) {
                String androidId = AndroidIdUtils.getAndroidId(context);
                of = !androidId.isEmpty() ? Pair.of(TapEventParamConstants.PARAM_SUB_ANDROID_ID, androidId) : Pair.of("random_id", UUID.randomUUID().toString());
            } else {
                of = Pair.of(TapEventParamConstants.PARAM_DEVICE_ID, str);
            }
            cache = of;
            sharedPreferences.edit().putString(BusinessConstant.SP_KEY_APP_UNIQUE_ID_SOURCE, cache.getFirst()).putString(BusinessConstant.SP_KEY_APP_UNIQUE_ID, cache.getSecond()).apply();
            return cache;
        }
    }

    public static Pair<String, String> getCache() {
        Pair<String, String> pair = cache;
        return pair == null ? Pair.of(NULL, NULL) : pair;
    }
}
