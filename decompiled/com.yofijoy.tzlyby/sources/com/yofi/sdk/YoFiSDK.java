package com.yofi.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yofi.sdk.cachewebviewlib.WebViewCacheInterceptorInst;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.data.GameData;
import com.yofi.sdk.imp.middle.data.PayInfo;
import com.yofi.sdk.imp.middle.taptap.TapTapSingleton;
import com.yofi.sdk.utils.CommonUtils;

/* loaded from: classes2.dex */
public class YoFiSDK {
    public static String getVersion() {
        return SDKLoader.instance().getSDK().getVersion();
    }

    public static String getAppId() {
        return SDKLoader.instance().getSDK().getAppId();
    }

    public static String getAppKey() {
        return SDKLoader.instance().getSDK().getAppKey();
    }

    public static String getSDKName() {
        return SDKLoader.instance().getSDK().getSDKName();
    }

    public static String getAppPrivateKey() {
        return SDKLoader.instance().getSDK().getAppPrivateKey();
    }

    public static String getWechatAppId() {
        return SDKLoader.instance().getSDK().getWechatAppId();
    }

    public static int getAppChannel() {
        return SDKLoader.instance().getSDK().getAppChannel();
    }

    public static String getImei() {
        return SDKLoader.instance().getSDK().getImei();
    }

    public static String getModel() {
        return SDKLoader.instance().getSDK().getModel();
    }

    public static String getDeviceId() {
        return SDKLoader.instance().getSDK().getDeviceId();
    }

    public static String getOaid() {
        return SDKLoader.instance().getSDK().getOaid();
    }

    public static String getOS() {
        return SDKLoader.instance().getSDK().getOS();
    }

    public static String getPhoneNum() {
        return SDKLoader.instance().getSDK().getPhoneNum();
    }

    public static int getAge() {
        return SDKLoader.instance().getSDK().getAge();
    }

    public static Boolean isTourist() {
        return SDKLoader.instance().getSDK().isTourist();
    }

    public static void getServerState(Activity activity, IFlashCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onFailed(-1007, "");
        } else {
            SDKLoader.instance().getSDK().getServerState(activity, cb);
        }
    }

    public static void init(Activity activity, boolean isLandScape, final IFlashCallback cb) {
        CommonUtils.instance().init(activity);
        SDKLoader.instance().getSDK().initialize(activity, isLandScape, new IFlashCallback() { // from class: com.yofi.sdk.YoFiSDK.1
            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String var1) {
                YoFiSdkImp.instance().sdkStage(10);
                IFlashCallback.this.onSuccess("");
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int var1, String error) {
                IFlashCallback.this.onFailed(var1, error);
            }
        });
    }

    public static void destory(Activity activity) {
        SDKLoader.instance().getSDK().destory(activity);
    }

    public static void logout() {
        SDKLoader.instance().getSDK().logout();
    }

    public static void login(Activity activity, OnLoginCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onLoginFailed(-1007);
        } else {
            SDKLoader.instance().getSDK().login(activity, cb);
        }
    }

    public static void pay(Context context, PayInfo payInfo, IFlashCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onFailed(-1007, "");
        } else {
            SDKLoader.instance().getSDK().pay(context, payInfo, cb);
        }
    }

    public static void setIsLandScape(boolean isLandScape) {
        SDKLoader.instance().getSDK().setScreenIsLandScape(isLandScape);
    }

    public static void submitGameData(GameData data, int type) {
        SDKLoader.instance().getSDK().submitGameData(data, type);
    }

    public static void gameStage(int stage) {
        SDKLoader.instance().getSDK().gameStage(stage);
    }

    public static void execute(Activity activity, Intent intent, IFlashCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onFailed(-1007, "");
        } else {
            SDKLoader.instance().getSDK().execute(activity, intent, cb);
        }
    }

    public static void onResume(Activity activity) {
        SDKLoader.instance().getSDK().onResume(activity);
    }

    public static void onPause(Activity activity) {
        SDKLoader.instance().getSDK().onPause(activity);
    }

    public static void showUserCenter() {
        SDKLoader.instance().getSDK().showUserCenter();
    }

    public static void showContact(String roleId, String roleName, String serverId, String serverName) {
        SDKLoader.instance().getSDK().showContact(roleId, roleName, serverId, serverName);
    }

    public static void bindPhone(Context context, IFlashCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onFailed(-1007, "");
        } else {
            SDKLoader.instance().getSDK().bindPhone((Activity) context, cb);
        }
    }

    public static void tapTapOpenMoment() {
        TapTapSingleton.getInstance().tapTapOpenMoment();
    }

    public static void tapTapOpenReview() {
        TapTapSingleton.getInstance().tapTapOpenReview();
    }

    public static void clearWebCache() {
        WebViewCacheInterceptorInst.getInstance().clearCache();
    }

    public static void tapTapOpenUpdate(Activity activity) {
        TapTapSingleton.getInstance().tapTapOpenUpdate(activity);
    }

    public static void onApplicationCreate(Application application) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onApplicationCreate(application);
        }
    }

    public static void eventRecord(String eventName, Bundle bundle) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().eventRecord(eventName, bundle);
        }
    }
}
