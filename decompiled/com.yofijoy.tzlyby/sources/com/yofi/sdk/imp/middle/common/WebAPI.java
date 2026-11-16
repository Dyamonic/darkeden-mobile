package com.yofi.sdk.imp.middle.common;

import android.os.Build;
import android.util.Log;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.data.GameData;
import com.yofi.sdk.imp.middle.data.PayInfo;
import com.yofi.sdk.utils.CommonUtils;
import com.yofi.sdk.utils.RSAUtils;
import com.yofi.sdk.web.WebAPICallback;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class WebAPI {
    private static final String LOG_TAG = "WebAPI";

    private static void postWithFormData(String url, Map<String, String> params, final WebAPICallback cb) {
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            Log.d(LOG_TAG, "postWithFormDataUrl=" + url);
        }
        HttpUtils.getInstance().PostWithFormData(url, params, new MyCallBack() { // from class: com.yofi.sdk.imp.middle.common.WebAPI.1
            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onSuccess(String response) {
                try {
                    JSONObject jSONObject = new JSONObject(response);
                    if (WebAPICallback.this != null) {
                        int i = jSONObject.getInt("code");
                        if (i == 0) {
                            WebAPICallback.this.onSuccess(jSONObject);
                        } else {
                            WebAPICallback.this.onFailure(i, jSONObject.getString("msg"));
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    WebAPICallback webAPICallback = WebAPICallback.this;
                    if (webAPICallback != null) {
                        webAPICallback.onFailure(1, "网络异常，请检查网络是否正常");
                    }
                }
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "网络异常，请检查网络是否正常");
                }
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onError(Response response) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "");
                }
            }
        });
    }

    private static void postWithFormData(String url, Map<String, String> params) {
        HttpUtils.getInstance().PostWithFormData(url, params, new MyCallBack() { // from class: com.yofi.sdk.imp.middle.common.WebAPI.2
            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onError(Response response) {
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onSuccess(String response) {
            }
        });
    }

    private static void getWithFormData(String url, final WebAPICallback cb) {
        Log.d(LOG_TAG, "getWithFormDataUrl=" + url);
        HttpUtils.getInstance().Get(url, new MyCallBack() { // from class: com.yofi.sdk.imp.middle.common.WebAPI.3
            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onSuccess(String response) {
                try {
                    JSONObject jSONObject = new JSONObject(response);
                    if (WebAPICallback.this != null) {
                        int i = jSONObject.getInt("code");
                        if (i == 0) {
                            WebAPICallback.this.onSuccess(jSONObject);
                        } else {
                            WebAPICallback.this.onFailure(i, jSONObject.getString("msg"));
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    WebAPICallback webAPICallback = WebAPICallback.this;
                    if (webAPICallback != null) {
                        webAPICallback.onFailure(1, "网络异常，请检查网络是否正常");
                    }
                }
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "网络异常，请检查网络是否正常");
                }
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onError(Response response) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "");
                }
            }
        });
    }

    public static void register(String account, String password, String verifyCode, String deviceId, int channelId, String version, String packageName, String androidId, String oaid, String mac, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("phone", account);
        hashMap.put("password", password);
        hashMap.put("smsCode", verifyCode);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("deviceId", deviceId);
        hashMap.put("channelId", channelId + "");
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("realDeviceId", "");
        if (androidId != null) {
            hashMap.put("androidId", androidId);
        }
        if (oaid != null) {
            hashMap.put(TapEventParamConstants.PARAM_SUB_OAID, oaid);
        }
        if (mac != null) {
            hashMap.put("mac", mac);
        }
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/player/register";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/player/register";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void getVerifyCode(String account, int type, Integer channelId, String version, String packageName, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("phone", account);
        hashMap.put("type", type + "");
        hashMap.put("channelId", channelId + "");
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/sms/send";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/sms/send";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void login(int loginType, String loginName, String password, String accessToken, String code, String deviceId, String uid, int channelId, String packageName, String version, String androidId, String oaid, String mac, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("loginType", loginType + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("accessToken", accessToken);
        hashMap.put("code", code);
        hashMap.put("deviceId", deviceId);
        hashMap.put("loginName", loginName);
        hashMap.put("password", password);
        hashMap.put("uid", uid);
        hashMap.put("channelId", channelId + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put("realDeviceId", "");
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        if (androidId != null) {
            hashMap.put("androidId", androidId);
        }
        if (oaid != null) {
            hashMap.put(TapEventParamConstants.PARAM_SUB_OAID, oaid);
        }
        if (mac != null) {
            hashMap.put("mac", mac);
        }
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/player/login";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/player/login";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void tokenLogin(int channelId, String accessToken, int loginType, String version, String deviceId, String packageName, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("channelId", channelId + "");
        hashMap.put("loginType", loginType + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("accessToken", accessToken);
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put("deviceId", deviceId);
        hashMap.put("realDeviceId", "");
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/player/tokenLogin";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/player/tokenLogin";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void logout(String accessToken, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/loginOut";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/loginOut";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void identify(String name, String idCard, String accessToken, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("name", name);
        hashMap.put("idCard", idCard);
        hashMap.put("accessToken", accessToken);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/verification/idCard";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/verification/idCard";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void changePassword(String phone, String password, String verifyCode, String deviceId, int channelId, String version, String packageName, String androidId, String oaid, String mac, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("phone", phone);
        hashMap.put("password", password);
        hashMap.put("smsCode", verifyCode);
        hashMap.put("deviceId", deviceId);
        hashMap.put("channelId", channelId + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put("realDeviceId", "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        if (androidId != null) {
            hashMap.put("androidId", androidId);
        }
        if (oaid != null) {
            hashMap.put(TapEventParamConstants.PARAM_SUB_OAID, oaid);
        }
        if (mac != null) {
            hashMap.put("mac", mac);
        }
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/player/retrievePass";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/player/retrievePass";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void modifyPassword(String accessToken, String oldPassword, String newPassword, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("oldPassword", oldPassword);
        hashMap.put("newPassword", newPassword);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/updatePass";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/updatePass";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void bindPhone(String accessToken, String phone, String password, String requestId, String verifyCode, String deviceId, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("phone", phone);
        if (password.length() > 0) {
            hashMap.put("password", password);
        }
        if (requestId != null && requestId.length() > 0) {
            hashMap.put("requestId", requestId);
        }
        hashMap.put("smsCode", verifyCode);
        hashMap.put("deviceId", deviceId);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/updatePhone";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/updatePhone";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void verifyOldPhone(String accessToken, String phone, String verifyCode, String idCard, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("phone", phone);
        hashMap.put("smsCode", verifyCode);
        hashMap.put("idCard", idCard);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/verifyOldPhone";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/verifyOldPhone";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void createOrder(String accessToken, PayInfo payInfo, String deviceId, String packageName, int channelId, String version, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("amount", payInfo.getAmount());
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("cpOrderId", payInfo.getCpOrderId());
        hashMap.put("deviceId", deviceId);
        hashMap.put("extraParam", payInfo.getExtraParam());
        hashMap.put("goodsId", payInfo.getProductId());
        hashMap.put("goodsName", payInfo.getProductName());
        hashMap.put("roleId", payInfo.getRoleId());
        hashMap.put("roleName", payInfo.getRoleName());
        hashMap.put(ActionUtils.LEVEL, payInfo.getRoleLevel() + "");
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        hashMap.put("serverId", payInfo.getServerId());
        hashMap.put("serverName", payInfo.getServerName());
        hashMap.put("channelId", channelId + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/pay/createOrder";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/pay/createOrder";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void createRole(String accessToken, GameData gameData, int channelId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("roleCreateTime", gameData.getRoleCreateTime() + "");
        hashMap.put("roleId", gameData.getRoleId());
        hashMap.put("roleName", gameData.getRoleName());
        hashMap.put("serverId", gameData.getServerId());
        hashMap.put("serverName", gameData.getServerName());
        hashMap.put("score", gameData.getBattlePoint() + "");
        hashMap.put("roleLevel", gameData.getRoleLevel() + "");
        hashMap.put("vipLevel", gameData.getVipLevel() + "");
        hashMap.put("channelId", channelId + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/createRole";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/createRole";
        }
        postWithFormData(str, hashMap);
    }

    public static void roleLevel(String accessToken, GameData gameData, String deviceId, int channelId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("deviceId", deviceId);
        hashMap.put("roleCreateTime", gameData.getRoleCreateTime() + "");
        hashMap.put("roleId", gameData.getRoleId());
        hashMap.put("roleName", gameData.getRoleName());
        hashMap.put("serverId", gameData.getServerId());
        hashMap.put("serverName", gameData.getServerName());
        hashMap.put("score", gameData.getBattlePoint() + "");
        hashMap.put("roleLevel", gameData.getRoleLevel() + "");
        hashMap.put("vipLevel", gameData.getVipLevel() + "");
        hashMap.put("channelId", channelId + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/roleLevel";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/roleLevel";
        }
        postWithFormData(str, hashMap);
    }

    public static void roleLogin(String accessToken, GameData gameData, String deviceId, int channelId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("deviceId", deviceId);
        hashMap.put("roleCreateTime", gameData.getRoleCreateTime() + "");
        hashMap.put("roleId", gameData.getRoleId());
        hashMap.put("roleName", gameData.getRoleName());
        hashMap.put("serverId", gameData.getServerId());
        hashMap.put("serverName", gameData.getServerName());
        hashMap.put("score", gameData.getBattlePoint() + "");
        hashMap.put("roleLevel", gameData.getRoleLevel() + "");
        hashMap.put("vipLevel", gameData.getVipLevel() + "");
        hashMap.put("channelId", channelId + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/roleLogin";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/roleLogin";
        }
        postWithFormData(str, hashMap);
    }

    public static void gameStage(String customDeviceId, int stage, String appBuildVersion, String appVersion, String bundleId, String deviceId, int channelId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("customDeviceId", customDeviceId);
        hashMap.put("stage", stage + "");
        hashMap.put("deviceId", deviceId);
        hashMap.put("appBuildVersion", appBuildVersion);
        hashMap.put("appVersion", appVersion);
        hashMap.put("bundleId", bundleId);
        hashMap.put("channelId", channelId + "");
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("realDeviceId", "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/gameStage";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/gameStage";
        }
        postWithFormData(str, hashMap);
    }

    public static void sdkStage(String customDeviceId, int stage, String appBuildVersion, String appVersion, String bundleId, String deviceId, int channelId, String androidId, String oaid, String mac) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("customDeviceId", customDeviceId);
        hashMap.put("stage", stage + "");
        hashMap.put("deviceId", deviceId);
        hashMap.put("appBuildVersion", appBuildVersion);
        hashMap.put("appVersion", appVersion);
        hashMap.put("bundleId", bundleId);
        hashMap.put("channelId", channelId + "");
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("realDeviceId", "");
        if (androidId != null) {
            hashMap.put("androidId", androidId);
        }
        if (oaid != null) {
            hashMap.put(TapEventParamConstants.PARAM_SUB_OAID, oaid);
        }
        if (mac != null) {
            hashMap.put("mac", mac);
        }
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/sdkStage";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/sdkStage";
        }
        postWithFormData(str, hashMap);
    }

    public static void getServerState(String packageName, int channelId, String version, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put(BillingClientConstants.PACKAGE_NAME, packageName);
        hashMap.put("channelId", channelId + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/gameConfig/getState";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/gameConfig/getState";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void getContact(WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("channelId", YoFiSdkImp.instance().getAppChannel() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/gameConfig/contact";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/gameConfig/contact";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void checkUpdate(int channelId, String version, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("channelId", channelId + "");
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/gameConfig/update";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/gameConfig/update";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void alipay(String orderId, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("orderId", orderId);
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/pay/alipayApp";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/pay/alipayApp";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void clientReportOrderToAd(String accessToken, String isLoadBackH5Success, String orderId, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("isLoadBackH5Success", isLoadBackH5Success);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("orderId", orderId);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/adsconvert/clientReportOrderToAd";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/adsconvert/clientReportOrderToAd";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void createMessage(String accessToken, String content, String name, String mail, int problemType, String roleId, String roleName, String serverId, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("content", content);
        hashMap.put("name", name);
        hashMap.put("sdkVersion", YoFiSdkImp.instance().getVersion());
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("mail", mail);
        hashMap.put("problemType", problemType + "");
        hashMap.put("roleId", roleId);
        hashMap.put("roleName", roleName);
        hashMap.put("serverId", serverId);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/message/personalData";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/message/personalData";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void sendMessage(String accessToken, String content, long contentId, int msgType, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("content", content);
        hashMap.put("contentId", contentId + "");
        hashMap.put("msgType", msgType + "");
        hashMap.put("sdkVersion", YoFiSdkImp.instance().getVersion());
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/message/send";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/message/send";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void heartbeat(String accessToken, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_TASK_SERVER_URL + "sdk/api/v1/playerCenter/heartbeat";
        } else {
            str = Constants.TASK_SERVER_URL + "sdk/api/v1/playerCenter/heartbeat";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void querySession(String accessToken, String userId, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("userId", userId);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_TASK_SERVER_URL + "sdk/api/v1/playerCenter/chat/querySession";
        } else {
            str = Constants.TASK_SERVER_URL + "sdk/api/v1/playerCenter/chat/querySession";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void evaluateChat(String accessToken, String closeTime, String isOk, String message, String score, WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("closeTime", closeTime);
        hashMap.put("isOk", isOk);
        hashMap.put("message", message);
        hashMap.put("score", score);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/playerCenter/chat/evaluate";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/playerCenter/chat/evaluate";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void getInitParams(WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/gameConfig/init";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/gameConfig/init";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void getCDNConfigParams(String url, final WebAPICallback cb) {
        String str = url + "?appId=" + YoFiSdkImp.instance().getAppId() + "&packagename=" + YoFiSdkImp.instance().getPackageName();
        Log.d(LOG_TAG, "拉取的cdn地址 = " + str);
        CDNHttpUtils.getInstance().Get(str, new MyCallBack() { // from class: com.yofi.sdk.imp.middle.common.WebAPI.4
            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onSuccess(String response) {
                try {
                    Log.d(WebAPI.LOG_TAG, "拉取的cdn地址成功response=" + response);
                    String decryptByPublicKey = RSAUtils.decryptByPublicKey(response);
                    if (decryptByPublicKey != null) {
                        Log.d(WebAPI.LOG_TAG, "拉取的cdn地址解码成功outStr =" + decryptByPublicKey);
                    }
                    JSONObject jSONObject = new JSONObject(decryptByPublicKey);
                    if (jSONObject.length() > 0) {
                        Log.d(WebAPI.LOG_TAG, "拉取的cdn地址成功数据 = " + jSONObject.toString());
                        WebAPICallback.this.onSuccess(jSONObject);
                        return;
                    }
                    Log.d(WebAPI.LOG_TAG, "拉取的cdn地址失败 = json解析失败 ");
                    WebAPICallback.this.onFailure(1, "");
                } catch (Exception e) {
                    e.printStackTrace();
                    Log.d(WebAPI.LOG_TAG, "拉取的cdn地址失败 =" + e.toString());
                    WebAPICallback.this.onFailure(1, "");
                }
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
                Log.d(WebAPI.LOG_TAG, "拉取的cdn地址失败 =" + e.toString());
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "网络异常，请检查网络是否正常");
                }
            }

            @Override // com.yofi.sdk.imp.middle.common.MyCallBack
            public void onError(Response response) {
                Log.d(WebAPI.LOG_TAG, "拉取的cdn地址失败 =" + response.toString());
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "");
                }
            }
        });
    }

    public static void deviceModel() {
        String str;
        String str2 = Build.MODEL;
        String str3 = Build.BRAND;
        String str4 = Build.VERSION.RELEASE;
        HashMap hashMap = new HashMap();
        hashMap.put("model", str2);
        hashMap.put("brand", str3);
        hashMap.put("systemVersion", str4);
        hashMap.put("system", Constants.SYSTEM_TYPE.ANDROID.getValue() + "");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("deviceId", YoFiSdkImp.instance().getImei());
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/deviceModel";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/deviceModel";
        }
        postWithFormData(str, hashMap, new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.common.WebAPI.5
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String var1) {
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
            }
        });
    }

    public static void clientLog(String content, String sdkVersion, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("content", content);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, System.currentTimeMillis() + "");
        hashMap.put("sdkVersion", sdkVersion);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/report/clientLog";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/report/clientLog";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void getOrderStatus(String orderId, final WebAPICallback cb) {
        String str;
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/pay/unifiedCheck";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/pay/unifiedCheck";
        }
        getWithFormData(str + "?orderId=" + orderId, cb);
    }
}
