package com.bytedance.ads.convert;

import android.content.Context;
import android.util.Log;
import com.bytedance.ad.common.uaid.identity.UAIDDelegate;
import com.bytedance.ads.convert.IClickIdReceiver;
import com.bytedance.ads.convert.broadcast.StickyBroadcastManager;
import com.bytedance.ads.convert.hume.readapk.Pair;
import com.bytedance.ads.convert.utils.AppUniqueIdUtils;
import com.bytedance.ads.convert.utils.BusinessConstant;
import com.bytedance.ads.convert.utils.ClickIdSPUtil;
import com.bytedance.ads.convert.utils.EventReporter;
import com.bytedance.ads.convert.utils.EventReporterV2;
import com.bytedance.ads.convert.utils.EventReporterV3;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BDConvert {
    private static final String TAG = "BDConvert";
    public static long initTime = -1;
    private Context appContext;
    private StickyBroadcastManager broadcastManager;
    private EventReporter eventReporter;
    private final ClickIdReceiver clickIdReceiver = new ClickIdReceiver();
    private boolean mUseIdentityOpt = true;

    /* renamed from: com.bytedance.ads.convert.BDConvert$2, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final int[] $SwitchMap$com$bytedance$ads$convert$IClickIdReceiver$ClickIdFrom;

        static {
            int[] iArr = new int[IClickIdReceiver.ClickIdFrom.values().length];
            $SwitchMap$com$bytedance$ads$convert$IClickIdReceiver$ClickIdFrom = iArr;
            try {
                iArr[IClickIdReceiver.ClickIdFrom.StickyBroadcast.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ClickIdReceiver implements IClickIdReceiver {
        final BDConvert this$0;

        private ClickIdReceiver(BDConvert bDConvert) {
            this.this$0 = bDConvert;
        }

        @Override // com.bytedance.ads.convert.IClickIdReceiver
        public void onReceive(IClickIdReceiver.ClickIdFrom clickIdFrom, String str) {
            if (AnonymousClass2.$SwitchMap$com$bytedance$ads$convert$IClickIdReceiver$ClickIdFrom[clickIdFrom.ordinal()] != 1) {
                return;
            }
            try {
                ClickIdSPUtil.saveByPriority(this.this$0.appContext, new BDConvertInfo(new JSONObject(str).getString("click_id"), null, null, IClickIdReceiver.ClickIdFrom.StickyBroadcast));
            } catch (JSONException e) {
                Log.e(BDConvert.TAG, "onReceive: ", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SingletonInner {
        private static final BDConvert instance = new BDConvert();

        private SingletonInner() {
        }
    }

    public static String getClickId(Context context) {
        return ClickIdSPUtil.fetchClickId(context).clickId;
    }

    public static BDConvert getInstance() {
        return SingletonInner.instance;
    }

    public void init(Context context) {
        init(context, AppLog.getInstance());
    }

    public void init(Context context, IAppLogInstance iAppLogInstance) {
        Log.d(TAG, "BDConvert init");
        initTime = System.currentTimeMillis();
        Context applicationContext = context.getApplicationContext();
        this.appContext = applicationContext;
        EventReporterV3.postEventInternal(applicationContext);
        if (this.mUseIdentityOpt) {
            UAIDDelegate.INSTANCE.getUAIDInfoAsync(this.appContext, null);
        }
        if (this.broadcastManager == null) {
            StickyBroadcastManager stickyBroadcastManager = new StickyBroadcastManager(context, this.clickIdReceiver);
            this.broadcastManager = stickyBroadcastManager;
            stickyBroadcastManager.register();
        }
        AppLog.registerHeaderCustomCallback(new IHeaderCustomTimelyCallback(this, AppLog.getHeaderCustomCallback(), iAppLogInstance) { // from class: com.bytedance.ads.convert.BDConvert.1
            final BDConvert this$0;
            final IAppLogInstance val$appLogInstance;
            final IHeaderCustomTimelyCallback val$callback;

            {
                this.this$0 = this;
                this.val$callback = r2;
                this.val$appLogInstance = iAppLogInstance;
            }

            @Override // com.bytedance.applog.IHeaderCustomTimelyCallback
            public void updateHeader(JSONObject jSONObject) {
                IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback = this.val$callback;
                if (iHeaderCustomTimelyCallback != null) {
                    iHeaderCustomTimelyCallback.updateHeader(jSONObject);
                }
                if (jSONObject != null) {
                    try {
                        Pair<String, String> appUniqueId = AppUniqueIdUtils.getAppUniqueId(this.this$0.appContext, this.val$appLogInstance);
                        jSONObject.put(BusinessConstant.SP_KEY_APP_UNIQUE_ID_SOURCE, appUniqueId.getFirst());
                        jSONObject.put(BusinessConstant.SP_KEY_APP_UNIQUE_ID, appUniqueId.getSecond());
                    } catch (Exception unused) {
                    }
                }
            }
        });
        new EventReporterV2(this.appContext, iAppLogInstance).init();
        EventReporter eventReporter = new EventReporter(this.appContext, iAppLogInstance, this.mUseIdentityOpt);
        this.eventReporter = eventReporter;
        eventReporter.init();
    }

    public void useIdentityOpt(boolean z) {
        this.mUseIdentityOpt = z;
    }
}
