package com.bytedance.ads.convert.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.bytedance.ads.convert.BDConvert;
import com.bytedance.ads.convert.broadcast.common.EncryptionTools;
import com.bytedance.ads.convert.hume.readapk.Pair;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.convert.IPIDProvider;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EventReporterV3 {
    private static final String TAG = "Convert:EventReporterV3";
    private static Boolean hasPost = false;

    public static void postEventInternal(Context context) {
        synchronized (EventReporterV3.class) {
            Log.d(TAG, "try post event");
            if (hasPost.booleanValue()) {
                return;
            }
            if (context == null) {
                Log.d(TAG, "context is null");
                return;
            }
            hasPost = true;
            try {
                String packageName = context.getPackageName();
                String clientAnpi = IPIDProvider.getClientAnpi();
                String androidId = AndroidIdUtils.getAndroidId(context);
                Pair<String, String> appUniqueId = AppUniqueIdUtils.getAppUniqueId(context, null);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("app_package", packageName);
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                    jSONObject.put(TapEventParamConstants.PARAM_SUB_APP_VERSION, packageInfo.versionName);
                    jSONObject.put("app_install_time", String.valueOf(packageInfo.firstInstallTime));
                } catch (PackageManager.NameNotFoundException unused) {
                }
                jSONObject.put(BusinessConstant.KEY_CLIENT_TUN, clientAnpi);
                jSONObject.put(TapEventParamConstants.PARAM_SUB_SDK_VERSION, "1.3.1.9");
                jSONObject.put("model", Build.MODEL);
                jSONObject.put("device_brand", Build.BRAND);
                jSONObject.put("open_udid", androidId);
                jSONObject.put("ipv6", IPIDProvider.getAllIPV6Address());
                jSONObject.put(BusinessConstant.SP_KEY_APP_UNIQUE_ID_SOURCE, appUniqueId.getFirst());
                jSONObject.put(BusinessConstant.SP_KEY_APP_UNIQUE_ID, appUniqueId.getSecond());
                jSONObject.put("memory", String.valueOf(EncryptionTools.getMemoryInfo(context).totalMem));
                jSONObject.put("disk", String.valueOf(EncryptionTools.getDiskTotalBytes()));
                jSONObject.put("boot_time_sec", String.valueOf(EncryptionTools.getBootTimeMs()));
                jSONObject.put("os_version", "" + Build.VERSION.SDK_INT);
                jSONObject.put("os_name", "android");
                jSONObject.put("applog_sdk_version", AppLog.getSdkVersion());
                jSONObject.put("pkg_info", EncryptionTools.getZDataP(context));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("header", jSONObject);
                jSONObject2.put("event_name", "launch_app");
                jSONObject2.put("event_version", "3");
                jSONObject2.put("local_time", String.valueOf(System.currentTimeMillis()));
                jSONObject2.put("sdk_init_time", String.valueOf(BDConvert.initTime));
                new Thread(new Runnable(jSONObject2) { // from class: com.bytedance.ads.convert.utils.EventReporterV3.1
                    final JSONObject val$event;

                    {
                        this.val$event = jSONObject2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        NetWorkUtils.post(this.val$event, EventReporterV3.TAG);
                    }
                }).start();
            } catch (Exception e) {
                e.printStackTrace();
                Log.d(TAG, "create request params failed" + e.getMessage());
            }
        }
    }
}
