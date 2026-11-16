package com.huawei.hms.ads.identifier;

import android.content.Context;

/* loaded from: classes.dex */
public class AdvertisingIdClient {
    private static final String SETTINGS_AD_ID = "pps_oaid";
    private static final String SETTINGS_TRACK_LIMIT = "pps_track_limit";
    private static final String TAG = "AdvertisingIdClient";

    /* renamed from: com.huawei.hms.ads.identifier.AdvertisingIdClient$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Runnable {
        public final /* synthetic */ Context a;

        public AnonymousClass1(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    /* loaded from: classes.dex */
    public static final class Info {
        private final String advertisingId;
        private final boolean limitAdTrackingEnabled;

        public Info(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTrackingEnabled = z;
        }

        public native String getId();

        public native boolean isLimitAdTrackingEnabled();
    }

    public static native Info getAdvertisingIdInfo(Context context);

    private static native Info getIdInfoViaAIDL(Context context);

    public static native boolean isAdvertisingIdAvailable(Context context);

    /* JADX INFO: Access modifiers changed from: private */
    public static native Info requestAdvertisingIdInfo(Context context);

    private static native void updateAdvertisingIdInfo(Context context);

    public static native boolean verifyAdId(Context context, String str, boolean z);
}
