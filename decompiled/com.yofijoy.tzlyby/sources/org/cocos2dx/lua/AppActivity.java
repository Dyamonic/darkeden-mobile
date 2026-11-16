package org.cocos2dx.lua;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import cn.gamegod.littlegame.LittleGameHelper;
import com.juhe.juhesdk.middle.common.Constants;
import com.juhe.juhesdk.middle.data.GameData;
import com.juhe.juhesdk.middle.data.PayInfo;
import com.juhe.juhesdk.sdk.IFlashCallback;
import com.juhe.juhesdk.sdk.JuheSDK;
import com.juhe.juhesdk.sdk.OnLoginCallback;
import com.qq.gdt.action.ActionUtils;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxHelper;

/* loaded from: classes3.dex */
public class AppActivity extends Cocos2dxActivity {
    public static String TAG = "===================> AppActivity";
    public static Bundle bundleInstance;
    public static AppActivity instance;
    public static boolean isInitialized;
    private boolean mIsSoftKeyboardShowing;
    private ArrayList<OnSoftKeyboardStateChangedListener> mKeyboardStateListeners;
    private ViewTreeObserver.OnGlobalLayoutListener mLayoutChangeListener;
    private String role_id;
    private String role_level;
    private String role_name;
    private String server_id;
    private String server_name;
    public Handler mHandler = new Handler();
    LittleGameHelper mLittleHelper = new LittleGameHelper();
    private String userId = "";
    private String accessToken = "";
    private boolean _hasNewMessage = false;
    public int sdk_init = 0;
    public int sdk_login = 0;
    public boolean sdk_needlogin = false;

    /* loaded from: classes3.dex */
    public interface OnSoftKeyboardStateChangedListener {
        void OnSoftKeyboardStateChanged(boolean z, int i);
    }

    /* loaded from: classes3.dex */
    class BatteryReceiver extends BroadcastReceiver {
        BatteryReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                AppActivity.this.mLittleHelper.setBattleryPower(intent.getIntExtra(ActionUtils.LEVEL, 0) / intent.getIntExtra("scale", 100));
            }
        }
    }

    public void addSoftKeyboardChangedListener(OnSoftKeyboardStateChangedListener onSoftKeyboardStateChangedListener) {
        if (onSoftKeyboardStateChangedListener != null) {
            this.mKeyboardStateListeners.add(onSoftKeyboardStateChangedListener);
        }
    }

    public void removeSoftKeyboardChangedListener(OnSoftKeyboardStateChangedListener onSoftKeyboardStateChangedListener) {
        if (onSoftKeyboardStateChangedListener != null) {
            this.mKeyboardStateListeners.remove(onSoftKeyboardStateChangedListener);
        }
    }

    public static int getScreenHeight(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.d(TAG, "AppActivity onCreate");
        super.setEnableVirtualButton(false);
        super.onCreate(bundle);
        if (isTaskRoot()) {
            if (Build.VERSION.SDK_INT >= 28) {
                Window window = getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            registerReceiver(new BatteryReceiver(), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            this.mLittleHelper.setActivityInstance(this);
            this.mLittleHelper.setLittleGame(this);
            instance = this;
            bundleInstance = bundle;
            rotateLandscape();
            this.mIsSoftKeyboardShowing = false;
            this.mKeyboardStateListeners = new ArrayList<>();
            this.mLayoutChangeListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.cocos2dx.lua.AppActivity.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    Rect rect = new Rect();
                    float screenHeight = AppActivity.getScreenHeight(Cocos2dxActivity.getContext());
                    AppActivity.this.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                    int i = ((screenHeight - (rect.bottom - rect.top)) > (screenHeight / 3.0f) ? 1 : ((screenHeight - (rect.bottom - rect.top)) == (screenHeight / 3.0f) ? 0 : -1));
                }
            };
            getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(this.mLayoutChangeListener);
            sdkInit();
            WeChatMiniProgramLauncher.setContext(this);
        }
    }

    public static void rotateLandscape() {
        Activity activity = Cocos2dxHelper.getActivity();
        int i = activity.getResources().getConfiguration().orientation;
        if (activity.getRequestedOrientation() == 0) {
            activity.setRequestedOrientation(8);
        } else {
            activity.setRequestedOrientation(0);
        }
    }

    protected void hideBottomUIMenu() {
        hideVirtualButton();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        JuheSDK.onStart(this);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        JuheSDK.onRestart(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        hideBottomUIMenu();
        JuheSDK.onResume(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        JuheSDK.onPause(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        JuheSDK.onDestroy(this);
        if (Build.VERSION.SDK_INT >= 16) {
            getWindow().getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(this.mLayoutChangeListener);
        } else {
            getWindow().getDecorView().getViewTreeObserver().removeGlobalOnLayoutListener(this.mLayoutChangeListener);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        JuheSDK.onStop(this);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        JuheSDK.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        JuheSDK.onBackPressed(this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        JuheSDK.onNewIntent(intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        JuheSDK.onAttachedToWindow();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        JuheSDK.onConfigurationChanged(configuration);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        JuheSDK.onWindowFocusChanged(z);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        JuheSDK.onActivityResult(this, i, i2, intent);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        JuheSDK.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        JuheSDK.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        JuheSDK.onRestoreInstanceState(bundle);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    public void unzip(final File file, final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.2
            @Override // java.lang.Runnable
            public void run() {
                AppActivity.this.mLittleHelper.unZip(file, str, str2);
            }
        });
    }

    private void sdkInit() {
        Log.v(TAG, "Start AppActvity SDK init.");
        System.out.println("Start AppActvity SDK init.");
        this.sdk_init = 1;
        JuheSDK.init(this, new IFlashCallback() { // from class: org.cocos2dx.lua.AppActivity.3
            @Override // com.juhe.juhesdk.sdk.IFlashCallback
            public void onSuccess(String str) {
                Log.d(AppActivity.TAG, "JuheSDK init success ");
                AppActivity.this.onSDKInitSuccess();
            }

            @Override // com.juhe.juhesdk.sdk.IFlashCallback
            public void onFailed(int i, String str) {
                Log.d(AppActivity.TAG, "JuheSDK init Failed s:" + str);
                AppActivity.this.onSDKInitFailed();
            }
        });
    }

    public void login(int i) {
        Log.d(TAG, "this.sdk_login = " + this.sdk_login);
        System.out.println("this.sdk_login" + this.sdk_login);
        int i2 = this.sdk_init;
        if (i2 == 0) {
            Log.d(TAG, "AppActivity SDK havn't init.");
            sdkInit();
            this.sdk_needlogin = true;
        } else {
            if (i2 != 2) {
                Log.d(TAG, "AppActivity SDK init, have not result yet.");
                this.sdk_needlogin = true;
                return;
            }
            this.sdk_needlogin = false;
            if (this.sdk_login == 1) {
                Log.d(TAG, "AppActivity is waiting for login result");
            } else {
                this.mHandler.post(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(AppActivity.TAG, "Start AppActvity SDK login.");
                        AppActivity.this.sdk_login = 1;
                        JuheSDK.login(AppActivity.this, new OnLoginCallback() { // from class: org.cocos2dx.lua.AppActivity.4.1
                            @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                            public void onLoginSuccess(String str) {
                                AppActivity.this.onSDKLoginSuccess(str);
                            }

                            @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                            public void onLoginFailed(int i3, String str) {
                                AppActivity.this.onSDKLoginFailed();
                            }

                            @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                            public void onLogoutSuccess(String str) {
                                AppActivity.this.onSDKLogoutSuccess();
                            }

                            @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                            public void onHaveNewMessages() {
                                Log.d(AppActivity.TAG, "onHaveNewMessages.");
                                AppActivity.this._hasNewMessage = true;
                            }
                        });
                    }
                });
            }
        }
    }

    public void clearSession() {
        Log.d(TAG, "Start AppActvity SDK logout.");
        this.mHandler.post(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.5
            @Override // java.lang.Runnable
            public void run() {
                JuheSDK.logout();
            }
        });
    }

    public void payment(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        final PayInfo payInfo = new PayInfo();
        payInfo.setCpOrderId(str3);
        payInfo.setAmount(str4);
        payInfo.setProductId(str2);
        payInfo.setProductName(str);
        payInfo.setServerId(str9);
        payInfo.setServerName(str10);
        payInfo.setRoleId(str6);
        payInfo.setRoleName(str7);
        payInfo.setRoleLevel(Integer.parseInt(str8));
        payInfo.setExtraParam(str5);
        this.mHandler.post(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.6
            @Override // java.lang.Runnable
            public void run() {
                JuheSDK.pay(AppActivity.this, payInfo, new IFlashCallback() { // from class: org.cocos2dx.lua.AppActivity.6.1
                    @Override // com.juhe.juhesdk.sdk.IFlashCallback
                    public void onSuccess(String str11) {
                        Log.d(AppActivity.TAG, "sdk 支付成功" + str11);
                    }

                    @Override // com.juhe.juhesdk.sdk.IFlashCallback
                    public void onFailed(int i, String str11) {
                        Log.d(AppActivity.TAG, "sdk 支付失败" + str11);
                    }
                });
            }
        });
    }

    public void showFloat() {
        this.mHandler.post(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.7
            @Override // java.lang.Runnable
            public void run() {
                JuheSDK.showUserCenter();
            }
        });
    }

    public int getChannelType() {
        String channelId = JuheSDK.getChannelId();
        if (channelId == null || channelId.isEmpty()) {
            return 0;
        }
        return Integer.parseInt(channelId);
    }

    public void jumpToComment() {
        this.mHandler.post(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.8
            @Override // java.lang.Runnable
            public void run() {
                JuheSDK.tapTapOpenReview();
            }
        });
    }

    public void statisCreateRole(String str, String str2, String str3, String str4, String str5, String str6) {
        setUserInfo(str, str2, str3, str4, str5, str6, Constants.SUBMIT_TYPE.CREATE.getValue());
    }

    public void statisLogin(String str, String str2, String str3, String str4, String str5, String str6) {
        setUserInfo(str, str2, str3, str4, str5, str6, Constants.SUBMIT_TYPE.LOGIN.getValue());
    }

    public void statisLevelup(String str, String str2, String str3, String str4, String str5, String str6) {
        setUserInfo(str, str2, str3, str4, str5, str6, Constants.SUBMIT_TYPE.LEVELUP.getValue());
    }

    public void setUserInfo(String str, String str2, String str3, String str4, String str5, String str6, int i) {
        GameData gameData = new GameData();
        gameData.setRoleId(str2);
        gameData.setRoleName(str4);
        gameData.setRoleLevel(Integer.parseInt(str3));
        gameData.setRoleCreateTime(Long.parseLong(str));
        gameData.setServerId(str5);
        gameData.setServerName(str6);
        gameData.setBattlePoint(0L);
        gameData.setVipLevel(0);
        JuheSDK.submitGameData(gameData, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSDKInitSuccess() {
        this.sdk_init = 2;
        if (this.sdk_needlogin) {
            login(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSDKInitFailed() {
        this.sdk_init = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSDKLoginSuccess(final String str) {
        this.sdk_login = 2;
        runOnGLThread(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.9
            @Override // java.lang.Runnable
            public void run() {
                AppActivity.this.mLittleHelper.loginCallback(0, str);
            }
        });
        hideBottomUIMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSDKLoginFailed() {
        this.sdk_login = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSDKLogoutSuccess() {
        this.sdk_login = 0;
        runOnGLThread(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.10
            @Override // java.lang.Runnable
            public void run() {
                AppActivity.this.mLittleHelper.clearSessionCallback();
            }
        });
    }

    public int calcDiffDay(long j) {
        Calendar.getInstance().setTime(new Date(j * 1000));
        try {
            return (int) Math.floor(((new Date().getTime() / 1000) - (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(String.format("%d-%d-%d 00:00:00", Integer.valueOf(r0.get(1)), Integer.valueOf(r0.get(2) + 1), Integer.valueOf(r0.get(5)))).getTime() / 1000)) / 86400);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void testBuglyNativeCrash() {
        Log.d(TAG, "testBuglyNativeCrash");
        CrashReport.testNativeCrash();
    }

    public static void testBuglyJavaCrash() {
        CrashReport.testJavaCrash();
    }

    public void copyToClipboard(final String str) {
        Log.d(TAG, "copyToClipboard");
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lua.AppActivity.11
            @Override // java.lang.Runnable
            public void run() {
                ((ClipboardManager) Cocos2dxHelper.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Copied Text", str));
            }
        });
    }

    public boolean isWeChatInstalled() {
        return WeChatMiniProgramLauncher.isWeChatInstalled();
    }
}
