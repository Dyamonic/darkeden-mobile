package com.juhe.juhesdk.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.juhe.juhesdk.app.JuHeApplication;
import com.juhe.juhesdk.middle.common.Constants;
import com.juhe.juhesdk.middle.common.JUHE_RESULT;
import com.juhe.juhesdk.middle.data.GameData;
import com.juhe.juhesdk.middle.data.PayInfo;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.middle.manager.LittleApiImp;
import com.juhe.juhesdk.middle.view.CheckUpdateView;
import com.juhe.juhesdk.utils.CommonUtils;
import com.juhe.juhesdk.utils.GetWebUrlFromCDNTool;
import com.juhe.juhesdk.utils.JuHeToolUtils;
import com.juhe.juhesdk.web.WebAPICallback;
import cz.msebera.android.httpclient.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JuheSDK {
    private static final String TAG = "juhesdk_tag";

    public static void logout() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().logout();
        }
    }

    public static void login(final Activity activity, final OnLoginCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onLoginFailed(JUHE_RESULT.INIT_ERROR.code, JUHE_RESULT.INIT_ERROR.msg);
        } else {
            LittleApiImp.sdkStage(activity, 200, true);
            SDKLoader.instance().getSDK().login(activity, new OnLoginCallback() { // from class: com.juhe.juhesdk.sdk.JuheSDK.1
                @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                public void onLoginSuccess(String var1) {
                    LittleApiImp.sdkStage(activity, 500, true);
                    cb.onLoginSuccess(var1);
                }

                @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                public void onLoginFailed(int var1, String msg) {
                    LittleApiImp.sdkStage(activity, HttpStatus.SC_BAD_REQUEST, true);
                    cb.onLoginFailed(var1, msg);
                }

                @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                public void onLogoutSuccess(String var1) {
                    cb.onLogoutSuccess(var1);
                }

                @Override // com.juhe.juhesdk.sdk.OnLoginCallback
                public void onHaveNewMessages() {
                    cb.onHaveNewMessages();
                }
            });
        }
    }

    public static void init(Activity activity, IFlashCallback cb) {
        init(activity, cb, new Bundle());
    }

    public static void init(final Activity activity, IFlashCallback cb, Bundle savedInstanceState) {
        if (!JuHeApplication.hasInJuHeApplication) {
            JuHeToolUtils.juHeToast(activity, "JuHeApplication未启动，初始化失败");
            cb.onFailed(-1, "app init failed");
            return;
        }
        CommonUtils instance = CommonUtils.instance();
        instance.init(activity);
        if (!instance.isNetWorkActive()) {
            Log.d(TAG, "network is bad 网络已断开，请连接网络");
        }
        String juheCacheServerUrl = ConfigManager.instance().getJuheCacheServerUrl();
        if (juheCacheServerUrl.length() > 0) {
            Log.d("juheCacheServerUrl", "Juhe获取的缓存server地址 =  " + juheCacheServerUrl);
            if (ConfigManager.instance().getIsDebug().booleanValue()) {
                Constants.DEBUG_SERVER_URL = juheCacheServerUrl;
            } else {
                Constants.SERVER_URL = juheCacheServerUrl;
            }
        }
        new GetWebUrlFromCDNTool().beginFetch();
        int juheChannel = ConfigManager.instance().getJuheChannel();
        int appId = ConfigManager.instance().getAppId();
        String appVersionName = instance.getAppVersionName();
        extractedInit(activity, cb, savedInstanceState, juheChannel);
        LittleApiImp.checkUpdate(appId, juheChannel, appVersionName, new WebAPICallback() { // from class: com.juhe.juhesdk.sdk.JuheSDK.2
            @Override // com.juhe.juhesdk.web.WebAPICallback
            public void onFailure(int code, String var1) {
            }

            @Override // com.juhe.juhesdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    JSONObject jSONObject = res.getJSONObject("data");
                    int i = jSONObject.getInt("need");
                    if (i == 0) {
                        return;
                    }
                    String string = jSONObject.getString("url");
                    String string2 = jSONObject.has("content") ? jSONObject.getString("content") : "";
                    CheckUpdateView checkUpdateView = new CheckUpdateView(activity, new CheckUpdateCallback() { // from class: com.juhe.juhesdk.sdk.JuheSDK.2.1
                        @Override // com.juhe.juhesdk.sdk.CheckUpdateCallback
                        public void onCancelClick(String var1) {
                        }
                    });
                    checkUpdateView.setNeedUpdate(i);
                    checkUpdateView.setDownLoadUrl(string);
                    checkUpdateView.setUpdateContent(string2);
                    checkUpdateView.show();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private static void extractedInit(final Activity activity, final IFlashCallback cb, Bundle savedInstanceState, final int channelId) {
        final boolean z = channelId != 35;
        SDKLoader.instance().getSDK().init(activity, new IFlashCallback() { // from class: com.juhe.juhesdk.sdk.JuheSDK.3
            @Override // com.juhe.juhesdk.sdk.IFlashCallback
            public void onSuccess(String var1) {
                if (z) {
                    int i = channelId;
                    if (i == 1 || i == 22) {
                        SharedPreferences sharedPreferences = CommonUtils.instance().getActivityContext().getSharedPreferences("Juhe", 0);
                        String string = sharedPreferences.getString("storage_android_id", "");
                        if (!TextUtils.isEmpty(string)) {
                            CommonUtils.instance().setmDeviceId(string);
                        } else {
                            String uniqueID = CommonUtils.instance().getUniqueID();
                            CommonUtils.instance().setmDeviceId(uniqueID);
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            edit.putString("storage_android_id", uniqueID);
                            edit.commit();
                        }
                    } else {
                        CommonUtils.instance().setmDeviceId(CommonUtils.instance().getNoPermissionDeviceUniqueId());
                    }
                }
                LittleApiImp.sdkStage(activity, 100, z);
                LittleApiImp.sdkStage(activity, 102, z);
                cb.onSuccess(var1);
            }

            @Override // com.juhe.juhesdk.sdk.IFlashCallback
            public void onFailed(int var1, String msg) {
                LittleApiImp.sdkStage(activity, 100, z);
                LittleApiImp.sdkStage(activity, 101, z);
                cb.onFailed(var1, msg);
            }
        }, savedInstanceState);
    }

    public static void pay(Context context, PayInfo payInfo, IFlashCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onFailed(-1007, "支付失败");
        } else {
            SDKLoader.instance().getSDK().pay(context, payInfo, cb);
        }
    }

    public static void getServerState(Activity activity, IFlashCallback cb) {
        if (SDKLoader.instance().getSDK() == null) {
            cb.onFailed(-1007, "获取状态失败");
        } else {
            SDKLoader.instance().getSDK().getServerState(activity, cb);
        }
    }

    public static void submitGameData(GameData data, int type) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().submitGameData(data, type);
        }
    }

    public static void gameStage(String stage) {
        if (CommonUtils.instance().getActivityContext() != null && ConfigManager.instance().getJuheChannel() == 0 && ConfigManager.instance().getshowRepotToast().equals("1")) {
            Toast.makeText(CommonUtils.instance().getActivityContext(), "gameStage埋点" + stage + "成功！", 0).show();
        }
        LittleApiImp.gameStage(stage);
    }

    public static void exitGame() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().exitGame();
        }
    }

    public static void onStart(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onStart(activity);
        }
    }

    public static void onRestart(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onRestart(activity);
        }
    }

    public static void onPause(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onPause(activity);
        }
    }

    public static void onResume(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onResume(activity);
        }
    }

    public static void onStop(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onStop(activity);
        }
    }

    public static void onBackPressed(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onBackPressed(activity);
        }
    }

    public static void onDestroy(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onDestroy(activity);
        }
    }

    public static void onNewIntent(Intent intent) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onNewIntent(intent);
        }
    }

    public static void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onActivityResult(activity, requestCode, resultCode, data);
        }
    }

    public static void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }

    public static void onConfigurationChanged(Configuration newConfig) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onConfigurationChanged(newConfig);
        }
    }

    public static void finish() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().finish();
        }
    }

    public static void onAttachedToWindow() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onAttachedToWindow();
        }
    }

    public static void onWindowFocusChanged(boolean hasFocus) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onWindowFocusChanged(hasFocus);
        }
    }

    public static void onSaveInstanceState(Bundle outState) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onSaveInstanceState(outState);
        }
    }

    public static void onRestoreInstanceState(Bundle savedInstanceState) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().onRestoreInstanceState(savedInstanceState);
        }
    }

    public static void showContact(String roleId, String roleName, String serverId, String serverName) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().showContact(roleId, roleName, serverId, serverName);
        }
    }

    public static void showUserCenter() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().showUserCenter();
        }
    }

    public static void switchAccount(Activity activity) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().switchAccount(activity);
        }
    }

    public static String getOaid() {
        return SDKLoader.instance().getSDK() != null ? SDKLoader.instance().getSDK().getOaid() : "";
    }

    public static String getChannelId() {
        Log.d(TAG, "开始调用：getChannelId()");
        String channelId = CommonUtils.instance().getChannelId();
        Log.d(TAG, "调用：getChannelId()返回值=" + channelId);
        return channelId;
    }

    @Deprecated
    public static String getGameChannelId() {
        return CommonUtils.instance().getGameChannelId();
    }

    public static String getJuHeSDKVersion() {
        return CommonUtils.instance().getJuHeSDKVersion();
    }

    public static String getExtrasParameters(Activity activity, String key) {
        try {
            return activity.getResources().getString(activity.getResources().getIdentifier(key, "string", activity.getPackageName()));
        } catch (Exception unused) {
            return "";
        }
    }

    public static void tapTapOpenReview() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().tapTapOpenReview();
        }
    }

    public static String getAppPackageVersion() {
        return CommonUtils.instance().getAppVersionName();
    }

    public static String getAppPackageBuild() {
        return CommonUtils.instance().getAppVersionCode();
    }

    public static String getAppPackageName() {
        return CommonUtils.instance().getPackageName();
    }

    public static void clearWebCache() {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().clearWebCache();
        }
    }

    public static void eventRecord(String eventName, Bundle bundle) {
        if (SDKLoader.instance().getSDK() != null) {
            SDKLoader.instance().getSDK().eventRecord(eventName, bundle);
        }
    }
}
