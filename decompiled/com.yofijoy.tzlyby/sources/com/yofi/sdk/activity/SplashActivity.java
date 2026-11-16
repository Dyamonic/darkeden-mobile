package com.yofi.sdk.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.notchlib.NotchScreenManager;
import com.yofi.sdk.utils.ToastUtils;

/* loaded from: classes2.dex */
public class SplashActivity extends Activity implements ActivityCompat.OnRequestPermissionsResultCallback {
    private ImageView iv;
    private String targetClassName;
    private AssetManager assetManager = null;
    private Handler mHandler = new Handler() { // from class: com.yofi.sdk.activity.SplashActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message param1Message) {
            super.handleMessage(param1Message);
            Log.d(Constants.TAG, "targetClassName = " + SplashActivity.this.targetClassName);
            if (SplashActivity.this.targetClassName.equals("empty")) {
                SplashActivity splashActivity = SplashActivity.this;
                ToastUtils.show(splashActivity, splashActivity.getResources().getString(SplashActivity.this.getResources().getIdentifier("splash", "string", SplashActivity.this.getPackageName())));
                return;
            }
            Intent intent = new Intent();
            SplashActivity splashActivity2 = SplashActivity.this;
            intent.setClassName(splashActivity2, splashActivity2.targetClassName);
            SplashActivity.this.startActivity(intent);
            SplashActivity.this.finish();
        }
    };

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
        setContentView(getResources().getIdentifier("splash", "layout", getPackageName()));
        this.iv = (ImageView) findViewById(getResources().getIdentifier("splash_imageview", BreakpointSQLiteKey.ID, getPackageName()));
        AssetManager assets = getAssets();
        this.assetManager = assets;
        try {
            this.iv.setImageBitmap(BitmapFactory.decodeStream(assets.open("splash_image/splash.png")));
        } catch (Exception unused) {
        }
        this.targetClassName = getMetaDataStringFromActivity(Constants.MAIN_ACTIVITY, "empty");
        startTimer();
        NotchScreenManager.getInstance().setDisplayInNotch(this);
    }

    private void startTimer() {
        new Thread(new Runnable() { // from class: com.yofi.sdk.activity.SplashActivity.2
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
                SplashActivity.this.mHandler.sendMessage(message);
            }
        }).start();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent paramIntent) {
        super.onNewIntent(paramIntent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }
}
