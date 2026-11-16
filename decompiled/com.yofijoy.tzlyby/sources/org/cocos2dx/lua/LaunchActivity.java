package org.cocos2dx.lua;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import org.cocos2dx.lib.Cocos2dxReflectionHelper;

/* loaded from: classes3.dex */
public class LaunchActivity extends Activity {
    public static String TAG = "LaunchActivity";
    private String[] permissions = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"};
    private final int REQUEST_CODE_ADDRESS = 100;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.d(TAG, "LaunchActivity onCreate");
        super.onCreate(bundle);
        onLoadNativeLibraries();
        requestPermission();
    }

    private boolean isInternetConnectionAvailable() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            Log.d(TAG, "isInternetConnectionAvailable error:" + e.toString());
            return true;
        }
    }

    private void requestPermission() {
        Log.d(TAG, "requestPermission");
        if (getApplicationInfo().targetSdkVersion > 22) {
            if (Build.VERSION.SDK_INT >= 23) {
                Log.d(TAG, "n = " + this.permissions.length);
                if (ContextCompat.checkSelfPermission(this, this.permissions[0]) != 0 || ContextCompat.checkSelfPermission(this, this.permissions[1]) != 0 || ContextCompat.checkSelfPermission(this, this.permissions[2]) != 0) {
                    Log.d(TAG, "Req For Permissions");
                    ActivityCompat.requestPermissions(this, this.permissions, 100);
                    return;
                } else {
                    Log.d(TAG, "Permissions GRANTED");
                    sdkPrepare();
                    return;
                }
            }
            Log.d(TAG, "VERSION.SDK_INT < 23");
            sdkPrepare();
            return;
        }
        Log.d(TAG, "sdkVersion < 22");
        sdkPrepare();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sdkPrepare() {
        if (!isInternetConnectionAvailable()) {
            runOnUiThread(new Runnable() { // from class: org.cocos2dx.lua.LaunchActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    AlertDialog.Builder builder = new AlertDialog.Builder(LaunchActivity.this);
                    builder.setTitle("提示！");
                    builder.setMessage("当前无网络连接，请检查设置后重试");
                    builder.setPositiveButton("重试", new DialogInterface.OnClickListener() { // from class: org.cocos2dx.lua.LaunchActivity.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            LaunchActivity.this.sdkPrepare();
                        }
                    });
                    builder.create();
                    builder.show();
                }
            });
        } else {
            runOnUiThread(new Runnable() { // from class: org.cocos2dx.lua.LaunchActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(LaunchActivity.TAG, "onCreate Finish LaunchActivity");
                    LaunchActivity.this.startActivity(new Intent(LaunchActivity.this, (Class<?>) AppActivity.class));
                    LaunchActivity.this.finish();
                }
            });
        }
    }

    protected void onLoadNativeLibraries() {
        try {
            System.loadLibrary(getPackageManager().getApplicationInfo(getPackageName(), 128).metaData.getString("android.app.lib_name"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void hideBottomUIMenu() {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                int intValue = ((Integer) Cocos2dxReflectionHelper.getConstantValue(View.class, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION")).intValue();
                int intValue2 = ((Integer) Cocos2dxReflectionHelper.getConstantValue(View.class, "SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN")).intValue();
                int intValue3 = ((Integer) Cocos2dxReflectionHelper.getConstantValue(View.class, "SYSTEM_UI_FLAG_HIDE_NAVIGATION")).intValue();
                Cocos2dxReflectionHelper.invokeInstanceMethod(getWindow().getDecorView(), "setSystemUiVisibility", new Class[]{Integer.TYPE}, new Object[]{Integer.valueOf(((Integer) Cocos2dxReflectionHelper.getConstantValue(View.class, "SYSTEM_UI_FLAG_LAYOUT_STABLE")).intValue() | intValue | intValue2 | intValue3 | ((Integer) Cocos2dxReflectionHelper.getConstantValue(View.class, "SYSTEM_UI_FLAG_FULLSCREEN")).intValue() | ((Integer) Cocos2dxReflectionHelper.getConstantValue(View.class, "SYSTEM_UI_FLAG_IMMERSIVE_STICKY")).intValue())});
            } catch (NullPointerException e) {
                Log.e(TAG, "hideVirtualButton", e);
            }
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.e(TAG, "requestCode = " + i + ", permissions.num = " + strArr.length + ", grantResults.num = " + iArr.length);
        if (i != 100) {
            return;
        }
        int length = iArr.length;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = true;
                break;
            } else {
                if (iArr[i2] != 0) {
                    Log.d(TAG, "grant = " + iArr);
                    break;
                }
                i2++;
            }
        }
        if (strArr.length == 0 || !z) {
            return;
        }
        Log.d(TAG, "permissions ok  sdkPrepare ");
        sdkPrepare();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        hideBottomUIMenu();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
