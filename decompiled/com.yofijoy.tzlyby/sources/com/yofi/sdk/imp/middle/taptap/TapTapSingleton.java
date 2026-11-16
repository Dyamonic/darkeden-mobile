package com.yofi.sdk.imp.middle.taptap;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.taptap.sdk.core.TapTapSdk;
import com.taptap.sdk.core.TapTapSdkOptions;
import com.taptap.sdk.moment.TapTapMoment;
import com.taptap.sdk.moment.constant.Constant;
import com.taptap.sdk.review.TapTapReview;
import com.taptap.sdk.update.TapTapUpdate;
import com.taptap.sdk.update.TapTapUpdateCallback;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.utils.ResUtils;

/* loaded from: classes2.dex */
public class TapTapSingleton {
    private static final String TAG = "TapTapSingleton";
    private int TIME = Constant.CALLBACK_CODE_LOGIN_SUCCESS;
    Handler handler = new Handler();
    Runnable runnable = new Runnable() { // from class: com.yofi.sdk.imp.middle.taptap.TapTapSingleton.1
        @Override // java.lang.Runnable
        public void run() {
            Log.v("taptapmsg", "run");
            try {
                TapTapMoment.fetchNotification();
                TapTapSingleton.this.handler.postDelayed(this, TapTapSingleton.this.TIME);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private boolean hasInitTapTap = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SingletonInstance {
        private static final TapTapSingleton INSTANCE = new TapTapSingleton();

        private SingletonInstance() {
        }
    }

    public static TapTapSingleton getInstance() {
        return SingletonInstance.INSTANCE;
    }

    public void init(Context context) {
        try {
            String string = ResUtils.getString(context, "TAPTAP_CLIENTID");
            String string2 = ResUtils.getString(context, "TAPTAP_CLIENT_TOKEN");
            boolean booleanValue = ResUtils.getBool(context, Constants.TAPTAP_SHOW).booleanValue();
            if (booleanValue) {
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    TapTapSdkOptions tapTapSdkOptions = new TapTapSdkOptions(string, string2, 0);
                    tapTapSdkOptions.setEnableLog(true);
                    TapTapSdk.init(context, tapTapSdkOptions);
                    this.hasInitTapTap = true;
                    TapTapMoment.setCallback(new TapTapMoment.TapTapMomentCallback() { // from class: com.yofi.sdk.imp.middle.taptap.TapTapSingleton.2
                        @Override // com.taptap.sdk.moment.TapTapMoment.TapTapMomentCallback
                        public void onCallback(int code, String msg) {
                            if (code == 10000) {
                                if (!TextUtils.isEmpty(msg) && !msg.equals("0")) {
                                    YoFiSdkImp.instance().getLoginCallback().onTapTapMomentMessage(true);
                                } else {
                                    YoFiSdkImp.instance().getLoginCallback().onTapTapMomentMessage(false);
                                }
                            }
                        }
                    });
                } else {
                    Log.d(TAG, "SingletonInstance init: 参数为空clientId=" + string + " ,clientToken=" + string2);
                }
            } else {
                Log.d(TAG, "包体设置TAPTAP_SHOW= " + booleanValue);
            }
        } catch (Exception unused) {
        }
    }

    public void tapTapOpenMoment() {
        if (!this.hasInitTapTap) {
            Log.d(TAG, "tapTapOpenMoment: 需要先初始化taptapsdk");
        } else {
            TapTapMoment.open();
        }
    }

    public void tapTapOpenReview() {
        if (!this.hasInitTapTap) {
            Log.d(TAG, "tapTapOpenReview: 需要先初始化taptapsdk");
        } else {
            TapTapReview.openReview();
        }
    }

    public void tapTapOpenUpdate(Activity activity) {
        if (!this.hasInitTapTap) {
            Log.d(TAG, "tapTapOpenUpdate: 需要先初始化taptapsdk");
        } else {
            TapTapUpdate.updateGame(activity, new TapTapUpdateCallback() { // from class: com.yofi.sdk.imp.middle.taptap.TapTapSingleton.3
                @Override // com.taptap.sdk.update.TapTapUpdateCallback
                public void onCancel() {
                }
            });
        }
    }

    public void onDestory() {
        this.handler.removeCallbacks(this.runnable);
    }
}
