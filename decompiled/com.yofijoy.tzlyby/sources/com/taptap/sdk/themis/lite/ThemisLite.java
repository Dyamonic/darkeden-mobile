package com.taptap.sdk.themis.lite;

import android.content.Context;

/* loaded from: classes2.dex */
public class ThemisLite {
    private static final Object lock = new Object();
    public static Context m_ctx = null;
    public static String version = "1.0.1";

    private static native void hLn7jRbD(String str);

    private static native void initThemisByAppIDEx(String str, String str2, boolean z, boolean z2, long j);

    private static native void initThemisEx(String str, boolean z, boolean z2, long j);

    private static native void vQe8bYsT(String str);

    private static native String xJ3kLm9Q();

    private static native String zXq3tVwP();

    static /* synthetic */ String access$100() {
        return xJ3kLm9Q();
    }

    static /* synthetic */ String access$200() {
        return zXq3tVwP();
    }

    public static void Register(Context context) {
        m_ctx = context;
    }

    private static void CallbackRunner(final ThemisLiteCallback themisLiteCallback, long j) {
        if (themisLiteCallback == null) {
            return;
        }
        int i = (j > 100L ? 1 : (j == 100L ? 0 : -1));
        new Thread(new Runnable() { // from class: com.taptap.sdk.themis.lite.ThemisLite.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ThemisLite.lock) {
                    try {
                        LogUtil.debug(Base64Util.decode("Q2FsbGJhY2tSdW5uZXIgb24gaWY6"));
                        ThemisLiteCallback.this.getThemisTapaid(ThemisLite.access$100());
                        ThemisLiteCallback.this.getThemisOneIDData(ThemisLite.access$200());
                    } catch (Exception e) {
                        LogUtil.debug(Base64Util.decode("Q2FsbGJhY2tSdW5uZXI6") + e.getMessage());
                    }
                }
            }
        }).start();
    }

    public static void WakeUpCallback() {
        Object obj = lock;
        synchronized (obj) {
            obj.notify();
        }
    }

    public static void InitThemis(String str, ThemisLiteCallback themisLiteCallback, long j, String str2, String str3, boolean z, boolean z2) {
        if (themisLiteCallback == null) {
            return;
        }
        try {
            LogUtil.info(Base64Util.decode("c3RhcnQgaW5pdCBUaGVtaXNMaXRlIGJ5IEphdmEsIFZlcnNpb246IDEuMC4x"));
            System.loadLibrary("themis");
            initThemisEx(str, z, z2, j);
            hLn7jRbD(str2);
            vQe8bYsT(str3);
            CallbackRunner(themisLiteCallback, j);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void InitThemisByAppID(String str, String str2, ThemisLiteCallback themisLiteCallback, long j, String str3, String str4, boolean z, boolean z2) {
        if (themisLiteCallback == null) {
            return;
        }
        try {
            LogUtil.info(Base64Util.decode("c3RhcnQgaW5pdCBUaGVtaXNMaXRlIGJ5IEphdmEsIFZlcnNpb246IDEuMC4x"));
            System.loadLibrary("themis");
            initThemisByAppIDEx(str, str2, z, z2, j);
            hLn7jRbD(str3);
            vQe8bYsT(str4);
            CallbackRunner(themisLiteCallback, j);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
