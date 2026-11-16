package com.juhe.juhesdk.interfaces;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.juhe.juhesdk.middle.data.GameData;
import com.juhe.juhesdk.middle.data.PayInfo;
import com.juhe.juhesdk.sdk.IFlashCallback;
import com.juhe.juhesdk.sdk.OnLoginCallback;

/* loaded from: classes.dex */
public interface ISDKApi {

    /* renamed from: com.juhe.juhesdk.interfaces.ISDKApi$-CC, reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
        public static void $default$clearWebCache(ISDKApi iSDKApi) {
        }

        public static void $default$eventRecord(ISDKApi iSDKApi, String str, Bundle bundle) {
        }

        public static void $default$finish(ISDKApi iSDKApi) {
        }

        public static String $default$getOaid(ISDKApi iSDKApi) {
            return "";
        }

        public static void $default$onAttachedToWindow(ISDKApi iSDKApi) {
        }

        public static void $default$onConfigurationChanged(ISDKApi iSDKApi, Configuration configuration) {
        }

        public static void $default$onRestoreInstanceState(ISDKApi iSDKApi, Bundle bundle) {
        }

        public static void $default$onSaveInstanceState(ISDKApi iSDKApi, Bundle bundle) {
        }

        public static void $default$onWindowFocusChanged(ISDKApi iSDKApi, boolean z) {
        }

        public static void $default$tapTapOpenReview(ISDKApi iSDKApi) {
        }
    }

    void clearWebCache();

    void eventRecord(String eventName, Bundle bundle);

    void exitGame();

    void finish();

    String getOaid();

    void getServerState(Activity activity, IFlashCallback cb);

    void init(Activity var1, IFlashCallback cb, Bundle savedInstanceState);

    void initSplashChannel(IFlashCallback cb, Activity activity);

    void login(Activity var1, OnLoginCallback var3);

    void logout();

    void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data);

    void onAttachedToWindow();

    void onBackPressed(Activity activity);

    void onConfigurationChanged(Configuration newConfig);

    void onDestroy(Activity activity);

    void onNewIntent(Intent intent);

    void onPause(Activity activity);

    void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults);

    void onRestart(Activity activity);

    void onRestoreInstanceState(Bundle savedInstanceState);

    void onResume(Activity activity);

    void onSaveInstanceState(Bundle outState);

    void onStart(Activity activity);

    void onStop(Activity activity);

    void onWindowFocusChanged(boolean hasFocus);

    void pay(Context var1, PayInfo var2, IFlashCallback var3);

    void showContact(String roleId, String roleName, String serverId, String serverName);

    void showUserCenter();

    void submitGameData(GameData data, int type);

    void switchAccount(Activity activity);

    void tapTapOpenReview();
}
