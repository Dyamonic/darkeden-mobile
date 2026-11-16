package com.yofi.sdk.imp.middle.manager;

import android.util.Log;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import com.yofi.sdk.IFlashCallback;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.common.WebAPI;
import com.yofi.sdk.imp.middle.data.GameData;
import com.yofi.sdk.imp.middle.data.PayInfo;
import com.yofi.sdk.web.WebAPICallback;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class LittleApiImp {
    static final String LOG_TAG = "LittleApi";

    public static void taptapLogin(String token, String version, final WebAPICallback cb) {
        WebAPI.login(Constants.LOGIN_TYPE.TAPTAP.getValue(), "", "", token, "", YoFiSdkImp.instance().getImei(), "", YoFiSdkImp.instance().getAppChannel(), YoFiSdkImp.instance().getPackageName(), version, YoFiSdkImp.instance().getAndroidId(), YoFiSdkImp.instance().getOaid(), YoFiSdkImp.instance().getMac(), new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.manager.LittleApiImp.1
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                Log.e(LittleApiImp.LOG_TAG, "Wechat Login Success");
                WebAPICallback.this.onSuccess(res);
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                Log.e(LittleApiImp.LOG_TAG, "Wechat Login Failed");
                WebAPICallback.this.onFailure(code, msg);
            }
        });
    }

    public static void logout(String accessToken, final IFlashCallback cb) {
        WebAPI.logout(accessToken, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.manager.LittleApiImp.2
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                if (res.has(WebLoginFragment.QUERY_KEY_ERROR)) {
                    IFlashCallback.this.onFailed(-1006, "");
                } else {
                    IFlashCallback.this.onSuccess("");
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                Log.e(LittleApiImp.LOG_TAG, "Logout Failed");
                IFlashCallback.this.onFailed(code, "");
            }
        });
    }

    public static void createOrder(String accessToken, PayInfo payInfo, String version, final WebAPICallback cb) {
        WebAPI.createOrder(accessToken, payInfo, YoFiSdkImp.instance().getImei(), YoFiSdkImp.instance().getPackageName(), YoFiSdkImp.instance().getAppChannel(), version, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.manager.LittleApiImp.3
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                Log.e(LittleApiImp.LOG_TAG, "Create Order Success");
                WebAPICallback.this.onSuccess(res);
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                Log.e(LittleApiImp.LOG_TAG, "Create Order Failed");
                WebAPICallback.this.onFailure(code, msg);
            }
        });
    }

    public static void clientReportOrderToAd(String accessToken, String isLoadBackH5Success, String orderId, final WebAPICallback cb) {
        WebAPI.clientReportOrderToAd(accessToken, isLoadBackH5Success, orderId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.manager.LittleApiImp.4
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                WebAPICallback.this.onSuccess(res);
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                WebAPICallback.this.onFailure(code, msg);
            }
        });
    }

    public static void alipay(String orderId, final WebAPICallback cb) {
        WebAPI.alipay(orderId, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.manager.LittleApiImp.5
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                WebAPICallback.this.onSuccess(res);
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                WebAPICallback.this.onFailure(code, msg);
            }
        });
    }

    public static void createRole(String accessToken, GameData gameData) {
        WebAPI.createRole(accessToken, gameData, YoFiSdkImp.instance().getAppChannel());
    }

    public static void roleLogin(String accessToken, GameData gameData) {
        WebAPI.roleLogin(accessToken, gameData, YoFiSdkImp.instance().getImei(), YoFiSdkImp.instance().getAppChannel());
    }

    public static void roleLevel(String accessToken, GameData gameData) {
        WebAPI.roleLevel(accessToken, gameData, YoFiSdkImp.instance().getImei(), YoFiSdkImp.instance().getAppChannel());
    }

    public static void gameStage(int stage, String appBuildVersion, String appVersion) {
        WebAPI.gameStage("", stage, appBuildVersion, appVersion, YoFiSdkImp.instance().getPackageName(), YoFiSdkImp.instance().getImei(), YoFiSdkImp.instance().getAppChannel());
    }

    public static void sdkStage(int stage, String appBuildVersion, String appVersion) {
        WebAPI.sdkStage("", stage, appBuildVersion, appVersion, YoFiSdkImp.instance().getPackageName(), YoFiSdkImp.instance().getImei(), YoFiSdkImp.instance().getAppChannel(), YoFiSdkImp.instance().getAndroidId(), YoFiSdkImp.instance().getOaid(), YoFiSdkImp.instance().getMac());
    }

    public static void evaluateChat(String accessToken, String closeTime, String isOk, String message, String score, final WebAPICallback cb) {
        WebAPI.evaluateChat(accessToken, closeTime, isOk, message, score, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.manager.LittleApiImp.6
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                WebAPICallback.this.onSuccess(res);
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String var1) {
                WebAPICallback.this.onFailure(code, var1);
            }
        });
    }

    public static void deviceModel() {
        WebAPI.deviceModel();
    }

    public static void clientLog(String content, final WebAPICallback cb) {
        WebAPI.clientLog(content, YoFiSdkImp.instance().getVersion(), cb);
    }

    public static void getOrderStatus(String orderId, final WebAPICallback cb) {
        WebAPI.getOrderStatus(orderId, cb);
    }
}
