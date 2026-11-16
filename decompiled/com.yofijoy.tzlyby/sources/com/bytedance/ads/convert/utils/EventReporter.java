package com.bytedance.ads.convert.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.ad.common.uaid.identity.UAIDDelegate;
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
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EventReporter implements IOaidObserver, IDataObserver {
    private static final String TAG = "Convert:EventReporter";
    private static final String URL = "https://analytics.oceanengine.com/sdk/app/";
    public static String oaid;
    private IAppLogInstance appLogInstance;
    private Context context;
    private boolean mUseIdentityOpt;
    private static final Boolean PPE = false;
    private static Boolean hasPost = false;
    private long oaidLoadTime = -1;
    private long didLoadTime = -1;

    public EventReporter(Context context, IAppLogInstance iAppLogInstance, boolean z) {
        this.mUseIdentityOpt = true;
        this.mUseIdentityOpt = z;
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
            String did = iAppLogInstance.getDid();
            if (TextUtils.isEmpty(did)) {
                Log.d(TAG, "did is empty");
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
                jSONObject.put("ipv6", IPIDProvider.getAllIPV6Address());
                jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, oaid);
                jSONObject.put("os_name", "android");
                jSONObject.put("app_channel", str3);
                jSONObject.put("click_id_source", source);
                jSONObject.put("click_id_nature", str2);
                jSONObject.put("pkg_info", EncryptionTools.getZDataP(context));
                if (this.mUseIdentityOpt) {
                    jSONObject.put("u_t", new JSONObject(UAIDDelegate.INSTANCE.getUAIDInfoSync(context, 5000L).toString()));
                }
                jSONObject.put("applog_sdk_version", AppLog.getSdkVersion());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("header", jSONObject);
                jSONObject2.put("event_name", "launch_app");
                jSONObject2.put("local_time", String.valueOf(System.currentTimeMillis()));
                jSONObject2.put("sdk_init_time", String.valueOf(BDConvert.initTime));
                jSONObject2.put("oaid_callback_time", String.valueOf(this.oaidLoadTime));
                jSONObject2.put("did_callback_time", String.valueOf(this.didLoadTime));
                new Thread(new Runnable(this, jSONObject2) { // from class: com.bytedance.ads.convert.utils.EventReporter.2
                    final EventReporter this$0;
                    final JSONObject val$event;

                    {
                        this.this$0 = this;
                        this.val$event = jSONObject2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        NetWorkUtils.post(this.val$event, EventReporter.TAG);
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
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onAbVidsChange(String str, String str2) {
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onIdLoaded(String str, String str2, String str3) {
        Log.d(TAG, "onIdLoaded: ");
        this.didLoadTime = System.currentTimeMillis();
        postEvent(this.context, this.appLogInstance);
    }

    @Override // com.bytedance.applog.IOaidObserver
    public void onOaidLoaded(IOaidObserver.Oaid oaid2) {
        Log.d(TAG, "onOaidLoaded: ");
        oaid = oaid2.id;
        this.oaidLoadTime = System.currentTimeMillis();
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
        postEvent(this.context, this.appLogInstance);
    }

    public void postEvent(Context context, IAppLogInstance iAppLogInstance) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            new Thread(new Runnable(this, context, iAppLogInstance) { // from class: com.bytedance.ads.convert.utils.EventReporter.1
                final EventReporter this$0;
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
