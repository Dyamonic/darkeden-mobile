package com.bytedance.ads.convert.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.ads.convert.BDConvert;
import com.bytedance.ads.convert.BDConvertInfo;
import com.bytedance.ads.convert.broadcast.common.EncryptionTools;
import com.bytedance.ads.convert.hume.readapk.Pair;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.IDataObserver;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.convert.IPIDProvider;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EventReporterV2 implements IOaidObserver, IDataObserver {
    private static final String TAG = "Convert:EventReporterV2";
    private static final String URL = "https://analytics.oceanengine.com/sdk/app/";
    private IAppLogInstance appLogInstance;
    private Context context;
    private static final Boolean PPE = false;
    public static String oaid = "";
    private static Boolean hasPost = false;
    private long oaidLoadTime = -1;
    private long didLoadTime = -1;

    public EventReporterV2(Context context, IAppLogInstance iAppLogInstance) {
        this.appLogInstance = null;
        this.context = context;
        this.appLogInstance = iAppLogInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postEventInternal(Context context, IAppLogInstance iAppLogInstance) {
        synchronized (this) {
            Log.d(TAG, "try post event");
            if (hasPost.booleanValue()) {
                return;
            }
            String did = iAppLogInstance != null ? iAppLogInstance.getDid() : "";
            if (context == null) {
                Log.d(TAG, "context is null");
                return;
            }
            hasPost = true;
            try {
                String packageName = context.getPackageName();
                String clientAnpi = IPIDProvider.getClientAnpi();
                BDConvertInfo readClickId = ClickIdSPUtil.readClickId(context);
                String str = readClickId.clickId;
                String source = readClickId.getSource();
                String str2 = readClickId.clickIdNature;
                String androidId = AndroidIdUtils.getAndroidId(context);
                String str3 = readClickId.humeChannelId;
                Pair<String, String> appUniqueId = AppUniqueIdUtils.getAppUniqueId(context, iAppLogInstance);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("app_package", packageName);
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                    jSONObject.put(TapEventParamConstants.PARAM_SUB_APP_VERSION, packageInfo.versionName);
                    jSONObject.put("app_install_time", String.valueOf(packageInfo.firstInstallTime));
                } catch (PackageManager.NameNotFoundException unused) {
                }
                jSONObject.put(BusinessConstant.KEY_CLIENT_TUN, clientAnpi);
                jSONObject.put("click_id", str);
                jSONObject.put(TapEventParamConstants.PARAM_SUB_SDK_VERSION, "1.3.1.9");
                jSONObject.put("model", Build.MODEL);
                jSONObject.put("device_brand", Build.BRAND);
                jSONObject.put(TapEventParamConstants.PARAM_DEVICE_ID, did);
                jSONObject.put("open_udid", androidId);
                jSONObject.put(BusinessConstant.SP_KEY_APP_UNIQUE_ID_SOURCE, appUniqueId.getFirst());
                jSONObject.put(BusinessConstant.SP_KEY_APP_UNIQUE_ID, appUniqueId.getSecond());
                jSONObject.put("memory", String.valueOf(EncryptionTools.getMemoryInfo(context).totalMem));
                jSONObject.put("disk", String.valueOf(EncryptionTools.getDiskTotalBytes()));
                jSONObject.put("boot_time_sec", String.valueOf(EncryptionTools.getBootTimeMs()));
                jSONObject.put("os_version", "" + Build.VERSION.SDK_INT);
                jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, oaid);
                jSONObject.put("os_name", "android");
                jSONObject.put("app_channel", str3);
                jSONObject.put("ipv6", IPIDProvider.getAllIPV6Address());
                jSONObject.put("click_id_source", source);
                jSONObject.put("click_id_nature", str2);
                jSONObject.put("applog_sdk_version", AppLog.getSdkVersion());
                jSONObject.put("pkg_info", EncryptionTools.getZDataP(context));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("header", jSONObject);
                jSONObject2.put("event_name", "launch_app");
                jSONObject2.put("local_time", String.valueOf(System.currentTimeMillis()));
                jSONObject2.put("sdk_init_time", String.valueOf(BDConvert.initTime));
                jSONObject2.put("oaid_callback_time", String.valueOf(this.oaidLoadTime));
                jSONObject2.put("did_callback_time", String.valueOf(this.didLoadTime));
                jSONObject2.put("event_version", "2");
                new Thread(new Runnable(this, jSONObject2) { // from class: com.bytedance.ads.convert.utils.EventReporterV2.3
                    final EventReporterV2 this$0;
                    final JSONObject val$event;

                    {
                        this.this$0 = this;
                        this.val$event = jSONObject2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        NetWorkUtils.post(this.val$event, EventReporterV2.TAG);
                    }
                }).start();
            } catch (Exception e) {
                e.printStackTrace();
                Log.d(TAG, "create request params failed" + e.getMessage());
            }
        }
    }

    public void init() {
        IAppLogInstance iAppLogInstance = this.appLogInstance;
        if (iAppLogInstance != null) {
            iAppLogInstance.addDataObserver(this);
            this.appLogInstance.setOaidObserver(this);
        } else {
            AppLog.addDataObserver(this);
            AppLog.setOaidObserver(this);
        }
        Log.d(TAG, "set appLog observer");
        new Timer().schedule(new TimerTask(this) { // from class: com.bytedance.ads.convert.utils.EventReporterV2.1
            final EventReporterV2 this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                EventReporterV2 eventReporterV2 = this.this$0;
                eventReporterV2.postEvent(eventReporterV2.context, this.this$0.appLogInstance);
            }
        }, 200L);
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onAbVidsChange(String str, String str2) {
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onIdLoaded(String str, String str2, String str3) {
        Log.d(TAG, "onIdLoaded: ");
        this.didLoadTime = System.currentTimeMillis();
        if (this.appLogInstance == null || TextUtils.isEmpty(oaid)) {
            return;
        }
        postEvent(this.context, this.appLogInstance);
    }

    @Override // com.bytedance.applog.IOaidObserver
    public void onOaidLoaded(IOaidObserver.Oaid oaid2) {
        Log.d(TAG, "onOaidLoaded: ");
        oaid = oaid2.id;
        this.oaidLoadTime = System.currentTimeMillis();
        IAppLogInstance iAppLogInstance = this.appLogInstance;
        if (iAppLogInstance == null || TextUtils.isEmpty(iAppLogInstance.getDid())) {
            return;
        }
        postEvent(this.context, this.appLogInstance);
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteAbConfigGet(boolean z, JSONObject jSONObject) {
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteConfigGet(boolean z, JSONObject jSONObject) {
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteIdGet(boolean z, String str, String str2, String str3, String str4, String str5, String str6) {
    }

    public void postEvent(Context context, IAppLogInstance iAppLogInstance) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            new Thread(new Runnable(this, context, iAppLogInstance) { // from class: com.bytedance.ads.convert.utils.EventReporterV2.2
                final EventReporterV2 this$0;
                final IAppLogInstance val$appLogInstance;
                final Context val$context;

                {
                    this.this$0 = this;
                    this.val$context = context;
                    this.val$appLogInstance = iAppLogInstance;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.postEventInternal(this.val$context, this.val$appLogInstance);
                }
            }).start();
        } else {
            postEventInternal(context, iAppLogInstance);
        }
    }
}
