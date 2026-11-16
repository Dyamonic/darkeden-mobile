package com.juhe.juhesdk.middle.channel;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.juhe.juhesdk.interfaces.ISDKApi;
import com.juhe.juhesdk.middle.common.JUHE_RESULT;
import com.juhe.juhesdk.middle.data.GameData;
import com.juhe.juhesdk.middle.data.JuHeLoginData;
import com.juhe.juhesdk.middle.data.PayInfo;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.middle.manager.LittleApiImp;
import com.juhe.juhesdk.sdk.IFlashCallback;
import com.juhe.juhesdk.sdk.OnLoginCallback;
import com.juhe.juhesdk.utils.JuHeToolUtils;
import com.juhe.juhesdk.web.WebAPICallback;
import com.yofi.sdk.YoFiSDK;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class YoFiImp implements ISDKApi {
    IFlashCallback initCb;
    private Activity mActivity;
    OnLoginCallback mLoginCallback;
    SharedPreferences sp;
    private String mAccessToken = "";
    private int channelId = 1;

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public /* synthetic */ void finish() {
        ISDKApi.CC.$default$finish(this);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void initSplashChannel(IFlashCallback cb, Activity activity) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onAttachedToWindow() {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onBackPressed(Activity activity) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public /* synthetic */ void onConfigurationChanged(Configuration configuration) {
        ISDKApi.CC.$default$onConfigurationChanged(this, configuration);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onNewIntent(Intent intent) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onRestart(Activity activity) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public /* synthetic */ void onRestoreInstanceState(Bundle bundle) {
        ISDKApi.CC.$default$onRestoreInstanceState(this, bundle);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public /* synthetic */ void onSaveInstanceState(Bundle bundle) {
        ISDKApi.CC.$default$onSaveInstanceState(this, bundle);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onStart(Activity activity) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onStop(Activity activity) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public /* synthetic */ void onWindowFocusChanged(boolean z) {
        ISDKApi.CC.$default$onWindowFocusChanged(this, z);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void switchAccount(Activity activity) {
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void login(final Activity activity, final OnLoginCallback loginCallback) {
        this.mActivity = activity;
        this.mLoginCallback = loginCallback;
        Log.d("yofiImp", "begin login");
        activity.runOnUiThread(new Runnable() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.1
            @Override // java.lang.Runnable
            public void run() {
                YoFiImp.this.doLogin();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.juhe.juhesdk.middle.channel.YoFiImp$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements com.yofi.sdk.OnLoginCallback {
        @Override // com.yofi.sdk.OnLoginCallback
        public void onTapTapMomentMessage(boolean b) {
        }

        AnonymousClass2() {
        }

        @Override // com.yofi.sdk.OnLoginCallback
        public void onLoginSuccess(String s) {
            Log.v("yofiImp", s);
            try {
                String string = new JSONObject(s).getString("accessToken");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("accessToken", string);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                final int appId = ConfigManager.instance().getAppId();
                LittleApiImp.juheLogin(appId, ConfigManager.instance().getJuheChannel(), jSONObject.toString(), null, null, new WebAPICallback() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.2.1
                    @Override // com.juhe.juhesdk.web.WebAPICallback
                    public void onSuccess(JSONObject res) {
                        Log.v("yofiImp", res.toString());
                        new JSONObject();
                        try {
                            int i = res.getInt("code");
                            final String string2 = res.getString("msg");
                            Log.v("JuheSdkImp", string2);
                            if (i != 0) {
                                YoFiImp.this.mActivity.runOnUiThread(new Runnable() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        JuHeToolUtils.juHeToast(YoFiImp.this.mActivity, string2);
                                    }
                                });
                                YoFiImp.this.mLoginCallback.onLoginFailed(JUHE_RESULT.SERVER_ERROR.code, string2);
                                return;
                            }
                            JSONObject jSONObject2 = res.getJSONObject("data");
                            if (jSONObject2.has("token")) {
                                YoFiImp.this.mAccessToken = jSONObject2.getString("token");
                            }
                            String string3 = jSONObject2.getString("channelUserName");
                            String string4 = jSONObject2.getString("channelUserId");
                            JuHeLoginData juHeLoginData = new JuHeLoginData();
                            juHeLoginData.setAccessToken(YoFiImp.this.mAccessToken);
                            juHeLoginData.setCode(i);
                            juHeLoginData.setUserId(string4);
                            juHeLoginData.setUserName(string3);
                            juHeLoginData.setMsg(string2);
                            juHeLoginData.setChannelId(YoFiImp.this.channelId);
                            YoFiImp.this.mLoginCallback.onLoginSuccess(JSON.toJSONString(juHeLoginData));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            YoFiImp.this.mLoginCallback.onLoginFailed(JUHE_RESULT.JSON_EXCEPTION.code, JUHE_RESULT.JSON_EXCEPTION.msg);
                        }
                    }

                    @Override // com.juhe.juhesdk.web.WebAPICallback
                    public void onFailure(int code, String msg) {
                        Log.d("JuheSDKLogin", "==============" + msg + code + "    " + appId);
                        YoFiImp.this.mLoginCallback.onLoginFailed(JUHE_RESULT.NETWORK_ERROR.code, msg);
                    }
                });
            } catch (JSONException e2) {
                e2.printStackTrace();
                YoFiImp.this.mLoginCallback.onLoginFailed(JUHE_RESULT.JSON_EXCEPTION.code, JUHE_RESULT.JSON_EXCEPTION.msg);
            }
        }

        @Override // com.yofi.sdk.OnLoginCallback
        public void onLoginFailed(int i) {
            YoFiImp.this.mLoginCallback.onLoginFailed(JUHE_RESULT.NETWORK_ERROR.code, JUHE_RESULT.NETWORK_ERROR.msg);
        }

        @Override // com.yofi.sdk.OnLoginCallback
        public void onLogoutSuccess(String s) {
            Log.d("yofiImp", "onLogoutSuccess: yofi_logout_success");
            new Handler().postDelayed(new Runnable() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.2.2
                @Override // java.lang.Runnable
                public void run() {
                    System.out.println("---------->我是handler的延迟操作");
                    YoFiImp.this.mLoginCallback.onLogoutSuccess("success");
                }
            }, 0L);
        }

        @Override // com.yofi.sdk.OnLoginCallback
        public void onHaveNewMessages() {
            YoFiImp.this.mLoginCallback.onHaveNewMessages();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doLogin() {
        YoFiSDK.login(this.mActivity, new AnonymousClass2());
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void init(final Activity activity, final IFlashCallback cb, Bundle savedInstanceState) {
        this.mActivity = activity;
        this.initCb = cb;
        Log.v("yofiImp", "开始初始化init");
        initSdk();
    }

    private void initSdk() {
        String orientation = JuHeToolUtils.getOrientation();
        Log.d("juHeOrientation", "聚合屏幕值:" + orientation);
        boolean z = true;
        if (orientation != null && !orientation.equals("0") && orientation.equals("1")) {
            z = false;
        }
        YoFiSDK.init(this.mActivity, z, new com.yofi.sdk.IFlashCallback() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.3
            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String s) {
                Log.v("yofiImp", "初始化init成功");
                YoFiImp.this.initCb.onSuccess("success");
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int i, String error) {
                Log.v("yofiImp", "初始化init失败");
                YoFiImp.this.initCb.onFailed(JUHE_RESULT.INIT_ERROR.code, JUHE_RESULT.INIT_ERROR.msg);
            }
        });
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void logout() {
        Log.v("yofiImp", "调用了logout");
        YoFiSDK.logout();
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void pay(final Context context, final PayInfo payInfo, final IFlashCallback payCallback) {
        int juheChannel = ConfigManager.instance().getJuheChannel();
        LittleApiImp.createOrder(this.mAccessToken, payInfo, ConfigManager.instance().getAppId(), juheChannel, "", new WebAPICallback() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.4
            @Override // com.juhe.juhesdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    if (res.getInt("code") == 0) {
                        JSONObject jSONObject = res.getJSONObject("data");
                        String string = jSONObject.getString("juheOrderId");
                        String string2 = jSONObject.getString("channelGoodsId");
                        com.yofi.sdk.imp.middle.data.PayInfo payInfo2 = new com.yofi.sdk.imp.middle.data.PayInfo();
                        payInfo2.setCpOrderId(string);
                        payInfo2.setAmount(payInfo.getAmount());
                        payInfo2.setProductId(string2);
                        payInfo2.setProductName(payInfo.getProductName());
                        payInfo2.setServerId(payInfo.getServerId());
                        payInfo2.setServerName(payInfo.getServerName());
                        payInfo2.setRoleId(payInfo.getRoleId());
                        payInfo2.setRoleName(payInfo.getRoleName());
                        payInfo2.setRoleLevel(payInfo.getRoleLevel());
                        payInfo2.setExtraParam(payInfo.getExtraParam());
                        YoFiSDK.pay(context, payInfo2, new com.yofi.sdk.IFlashCallback() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.4.1
                            @Override // com.yofi.sdk.IFlashCallback
                            public void onSuccess(String res2) {
                                payCallback.onSuccess("pay success");
                                Log.d("yofiImp", "pay success");
                            }

                            @Override // com.yofi.sdk.IFlashCallback
                            public void onFailed(int code, String error) {
                                payCallback.onFailed(code, JUHE_RESULT.YOFI_ERROR.msg + ":" + code);
                                Log.d("yofiImp", "payfailed" + code + "");
                            }
                        });
                    } else {
                        final String string3 = res.getString("msg");
                        YoFiImp.this.mActivity.runOnUiThread(new Runnable() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                JuHeToolUtils.juHeToast(YoFiImp.this.mActivity, string3);
                            }
                        });
                        payCallback.onFailed(JUHE_RESULT.NETWORK_ERROR.code, string3);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // com.juhe.juhesdk.web.WebAPICallback
            public void onFailure(int code, String msg) {
                payCallback.onFailed(JUHE_RESULT.NETWORK_ERROR.code, msg);
            }
        });
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void getServerState(Activity activity, final IFlashCallback cb) {
        YoFiSDK.getServerState(activity, new com.yofi.sdk.IFlashCallback() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.5
            @Override // com.yofi.sdk.IFlashCallback
            public void onSuccess(String s) {
                cb.onSuccess(s);
            }

            @Override // com.yofi.sdk.IFlashCallback
            public void onFailed(int i, String error) {
                cb.onFailed(i, "");
            }
        });
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void submitGameData(GameData data, int type) {
        LittleApiImp.submitGameData(type, this.mActivity, this.mAccessToken, data);
        com.yofi.sdk.imp.middle.data.GameData gameData = new com.yofi.sdk.imp.middle.data.GameData();
        gameData.setBattlePoint(data.getBattlePoint());
        gameData.setRoleCreateTime(data.getRoleCreateTime());
        gameData.setRoleId(data.getRoleId());
        gameData.setRoleLevel(data.getRoleLevel());
        gameData.setRoleName(data.getRoleName());
        gameData.setServerId(data.getServerId());
        gameData.setServerName(data.getServerName());
        gameData.setVipLevel(data.getVipLevel());
        YoFiSDK.submitGameData(gameData, type);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void eventRecord(String eventName, Bundle bundle) {
        YoFiSDK.eventRecord(eventName, bundle);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void exitGame() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
        builder.setTitle("你确定要离开吗？");
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                dialog.dismiss();
                JuHeToolUtils.juHeExitGame(YoFiImp.this.mActivity);
            }
        });
        builder.setNegativeButton("取消", new DialogInterface.OnClickListener() { // from class: com.juhe.juhesdk.middle.channel.YoFiImp.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                dialog.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onPause(Activity activity) {
        YoFiSDK.onPause(activity);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onResume(Activity activity) {
        YoFiSDK.onResume(activity);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void onDestroy(Activity activity) {
        YoFiSDK.destory(activity);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void showContact(String roleId, String roleName, String serverId, String serverName) {
        YoFiSDK.showContact(roleId, roleName, serverId, serverName);
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void showUserCenter() {
        YoFiSDK.showUserCenter();
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public String getOaid() {
        return YoFiSDK.getOaid();
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void tapTapOpenReview() {
        YoFiSDK.tapTapOpenReview();
    }

    @Override // com.juhe.juhesdk.interfaces.ISDKApi
    public void clearWebCache() {
        YoFiSDK.clearWebCache();
    }
}
