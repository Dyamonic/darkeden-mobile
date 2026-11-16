package com.bytedance.bdtracker;

import com.bytedance.applog.profile.UserProfileCallback;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class o3 {
    public static final String[] a = {"aid", "region", TapEventParamConstants.PARAM_SUB_OS, "package", TapEventParamConstants.PARAM_SUB_APP_VERSION, TapEventParamConstants.PARAM_SUB_SDK_VERSION, "os_version", TapEventParamConstants.PARAM_SUB_DEVICE_MODEL, "resolution", "language", "timezone", "access", "display_name", TapEventParamConstants.PARAM_SUB_CHANNEL, "carrier", "app_language", "app_region", "tz_name", "tz_offset", "install_id", "openudid", "mcc_mnc", TapEventParamConstants.PARAM_SUB_ROM, "manifest_version_code", "device_manufacturer", "clientudid", "sig_hash", "display_density", "os_api", "update_version_code", "density_dpi", "version_code", "sim_serial_number", "release_build", "udid", "cpu_abi", "google_aid"};
    public static final String[] b = {"setOnce", "synchronize"};
    public static final int[] c = {-1, -1};
    public static final long[] d = {-1, -1};

    /* loaded from: classes.dex */
    public static class a implements UserProfileCallback {
        public final /* synthetic */ int a;
        public final /* synthetic */ JSONObject b;
        public final /* synthetic */ UserProfileCallback c;

        public a(int i, JSONObject jSONObject, UserProfileCallback userProfileCallback) {
            this.a = i;
            this.b = jSONObject;
            this.c = userProfileCallback;
        }

        @Override // com.bytedance.applog.profile.UserProfileCallback
        public void onFail(int i) {
            this.c.onFail(i);
        }

        @Override // com.bytedance.applog.profile.UserProfileCallback
        public void onSuccess() {
            o3.c[this.a] = this.b.toString().hashCode();
            o3.d[this.a] = System.currentTimeMillis();
            this.c.onSuccess();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0110 A[Catch: JSONException -> 0x0129, TryCatch #2 {JSONException -> 0x0129, blocks: (B:32:0x00ff, B:34:0x0109, B:36:0x0110, B:37:0x0125, B:53:0x00eb, B:54:0x00fa), top: B:52:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.bytedance.bdtracker.d0 r25, int r26, org.json.JSONObject r27, com.bytedance.applog.profile.UserProfileCallback r28, android.os.Handler r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.o3.a(com.bytedance.bdtracker.d0, int, org.json.JSONObject, com.bytedance.applog.profile.UserProfileCallback, android.os.Handler, boolean):void");
    }
}
