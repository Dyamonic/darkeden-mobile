package com.juhe.juhesdk.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.app.ActivityCompat;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.middle.view.JuheXieYiCallback;
import com.juhe.juhesdk.middle.view.JuheXieYiDialog;
import com.juhe.juhesdk.notchlib.NotchScreenManager;
import com.juhe.juhesdk.sdk.IFlashCallback;
import com.juhe.juhesdk.sdk.SDKLoader;
import com.juhe.juhesdk.utils.HubActionAdapter;
import com.juhe.juhesdk.utils.JuHeToolUtils;
import com.netease.yofun.external.Api;
import com.yofi.sdk.imp.middle.common.Constants;

/* loaded from: classes.dex */
public class JuheSplashActivity extends Activity implements ActivityCompat.OnRequestPermissionsResultCallback {
    public static int REQUEST_PERMISSION_CODE = 1;
    private static final String TAG = "JuheSplashActivity";
    HubActionAdapter mAction;
    private SharedPreferences sp;
    private String storageKey;
    private String targetClassName;
    private AssetManager assetManager = null;
    private Handler mHandler = new Handler() { // from class: com.juhe.juhesdk.activity.JuheSplashActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message param1Message) {
            super.handleMessage(param1Message);
            if (param1Message.what != 0) {
                return;
            }
            Log.d(Constants.TAG, "targetClassName = " + JuheSplashActivity.this.targetClassName);
            if (JuheSplashActivity.this.targetClassName.equals("empty")) {
                JuHeToolUtils.juHeToast(JuheSplashActivity.this, "请配置闪屏跳转页");
                return;
            }
            String str = ConfigManager.instance().getJuheChannel() + "";
            String str2 = ConfigManager.instance().getAppId() + "";
            if (str.equals("1")) {
                JuheSplashActivity.this.storageKey = "yofi";
                JuheSplashActivity juheSplashActivity = JuheSplashActivity.this;
                juheSplashActivity.showProtocolPopup(juheSplashActivity.storageKey, str2, str);
            } else {
                if (str.equals(com.tencent.connect.common.Constants.VIA_REPORT_TYPE_DATALINE)) {
                    JuheSplashActivity.this.storageKey = "ym";
                    JuheSplashActivity juheSplashActivity2 = JuheSplashActivity.this;
                    juheSplashActivity2.showProtocolPopup(juheSplashActivity2.storageKey, str2, str);
                    return;
                }
                JuheSplashActivity.this.finishJuheSplashActivity();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void showProtocolPopup(String storageKey, String appId, String channel) {
        String format;
        SharedPreferences preferences = getPreferences(0);
        this.sp = preferences;
        boolean z = preferences.getBoolean(storageKey, true);
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            format = String.format(com.juhe.juhesdk.middle.common.Constants.DEBUG_SERVER_URL + "juhe/api/html/privacyPolicy.html?appId=%s&channelId=%s", appId, channel);
        } else {
            format = String.format(com.juhe.juhesdk.middle.common.Constants.SERVER_URL + "juhe/api/html/privacyPolicy.html?appId=%s&channelId=%s", appId, channel);
        }
        Log.v(TAG, "展示协议弹窗");
        if (z) {
            runOnUiThread(new AnonymousClass2(format, storageKey));
        } else {
            finishJuheSplashActivity();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.juhe.juhesdk.activity.JuheSplashActivity$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {
        final /* synthetic */ String val$storageKey;
        final /* synthetic */ String val$url;

        AnonymousClass2(final String val$storageKey, final String val$url) {
            this.val$url = val$storageKey;
            this.val$storageKey = val$url;
        }

        @Override // java.lang.Runnable
        public void run() {
            new JuheXieYiDialog(JuheSplashActivity.this, this.val$url, new JuheXieYiCallback() { // from class: com.juhe.juhesdk.activity.JuheSplashActivity.2.1
                @Override // com.juhe.juhesdk.middle.view.JuheXieYiCallback
                public void onSuccess(String var1) {
                    JuheSplashActivity.this.runOnUiThread(new Runnable() { // from class: com.juhe.juhesdk.activity.JuheSplashActivity.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            JuheSplashActivity.this.sp.edit().putBoolean(AnonymousClass2.this.val$storageKey, false).commit();
                            JuheSplashActivity.this.finishJuheSplashActivity();
                        }
                    });
                }

                @Override // com.juhe.juhesdk.middle.view.JuheXieYiCallback
                public void onFailure(String var1) {
                    JuHeToolUtils.juHeExitGame(JuheSplashActivity.this);
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishJuheSplashActivity() {
        Intent intent = new Intent();
        intent.setClassName(this, this.targetClassName);
        startActivity(intent);
        finish();
    }

    private Bundle getActivityMetaDataBundle(PackageManager paramPackageManager, ComponentName paramComponentName) {
        try {
            return paramPackageManager.getActivityInfo(paramComponentName, 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("getMetaDataBundle", e.getMessage(), e);
            return null;
        }
    }

    private String getMetaDataStringFromActivity(String paramString1, String paramString2) {
        Bundle activityMetaDataBundle = getActivityMetaDataBundle(getPackageManager(), getComponentName());
        return (activityMetaDataBundle == null || !activityMetaDataBundle.containsKey(paramString1)) ? paramString2 : activityMetaDataBundle.getString(paramString1);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        this.targetClassName = getMetaDataStringFromActivity(com.juhe.juhesdk.middle.common.Constants.MAIN_ACTIVITY, "empty");
        if (getIsMumuChannel()) {
            Api.getInstance().displayChannelLogo(this, 0, new Runnable() { // from class: com.juhe.juhesdk.activity.JuheSplashActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    Log.d("mumuImp", "闪屏已显示");
                    Log.d(Constants.TAG, "targetClassName = " + JuheSplashActivity.this.targetClassName);
                    if (!JuheSplashActivity.this.targetClassName.equals("empty")) {
                        JuheSplashActivity.this.finishJuheSplashActivity();
                    } else {
                        JuHeToolUtils.juHeToast(JuheSplashActivity.this, "请配置闪屏跳转页");
                    }
                }
            });
            return;
        }
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        LinearLayout linearLayout = new LinearLayout(this);
        ImageView imageView = new ImageView(this);
        String splashType = ConfigManager.instance().getSplashType();
        Log.d(TAG, "splashType= " + splashType);
        if (splashType.equals("centerlogo")) {
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            linearLayout.setBackgroundColor(Color.rgb(255, 255, 255));
        } else {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            linearLayout.setBackgroundColor(Color.rgb(0, 0, 0));
        }
        AssetManager assets = getAssets();
        this.assetManager = assets;
        try {
            imageView.setImageBitmap(BitmapFactory.decodeStream(assets.open("splash_image/splash.png")));
        } catch (Exception unused) {
        }
        linearLayout.addView(imageView, -1, -1);
        setContentView(linearLayout);
        NotchScreenManager.getInstance().setDisplayInNotch(this);
        if (SDKLoader.instance().getApp(Integer.parseInt(ConfigManager.instance().getJuheChannel() + "")).checkedPermission(this)) {
            startTimer();
        }
    }

    private void startTimer() {
        String str = ConfigManager.instance().getJuheChannel() + "";
        if (str.equals(com.tencent.connect.common.Constants.VIA_REPORT_TYPE_JOININ_GROUP)) {
            Log.v("juhesdk", str + "initSplashChannel");
            SDKLoader.instance().getSDK().initSplashChannel(new IFlashCallback() { // from class: com.juhe.juhesdk.activity.JuheSplashActivity.4
                @Override // com.juhe.juhesdk.sdk.IFlashCallback
                public void onSuccess(String var1) {
                    Message message = new Message();
                    message.what = 0;
                    JuheSplashActivity.this.mHandler.sendMessage(message);
                }

                @Override // com.juhe.juhesdk.sdk.IFlashCallback
                public void onFailed(int var1, String msg) {
                    JuHeToolUtils.juHeToast(JuheSplashActivity.this, "初始化失败");
                }
            }, this);
            return;
        }
        new Thread(new Runnable() { // from class: com.juhe.juhesdk.activity.JuheSplashActivity.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.currentThread();
                    Thread.sleep(2000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Message message = new Message();
                message.what = 0;
                JuheSplashActivity.this.mHandler.sendMessage(message);
            }
        }).start();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent paramIntent) {
        super.onNewIntent(paramIntent);
    }

    @Override // android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == REQUEST_PERMISSION_CODE) {
            for (int i : grantResults) {
                if (i != 0) {
                    Log.d("YoFiSdk-log", "android.os.Process.killProcess");
                    Process.killProcess(Process.myPid());
                    return;
                }
            }
            startTimer();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!getIsMumuChannel() || this.mAction == null) {
            return;
        }
        Api.getInstance().unregister(this.mAction);
    }

    private boolean getIsMumuChannel() {
        StringBuilder sb = new StringBuilder();
        sb.append(ConfigManager.instance().getJuheChannel());
        sb.append("");
        return sb.toString().equals(com.tencent.connect.common.Constants.VIA_ACT_TYPE_NINETEEN);
    }
}
