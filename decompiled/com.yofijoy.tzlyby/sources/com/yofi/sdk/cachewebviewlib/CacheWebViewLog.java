package com.yofi.sdk.cachewebviewlib;

import android.util.Log;

/* loaded from: classes2.dex */
class CacheWebViewLog {
    private static final String TAG = "CacheWebView";

    CacheWebViewLog() {
    }

    public static void d(String log) {
        Log.d(TAG, log);
    }

    public static void d(String log, boolean show) {
        if (show) {
            d(log);
        }
    }
}
