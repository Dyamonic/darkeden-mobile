package com.juhe.juhesdk.middle.common;

import android.util.Log;
import com.juhe.juhesdk.middle.data.GameData;
import com.juhe.juhesdk.middle.data.PayInfo;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.utils.CommonUtils;
import com.juhe.juhesdk.utils.RSAUtils;
import com.juhe.juhesdk.web.WebAPICallback;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.core.internal.event.iap.lib2plus.BillingClientConstants;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WebAPI {
    private static final String LOG_TAG = "JuheWebAPI";

    private static void postWithFormData(String url, Map<String, String> params, final WebAPICallback cb) {
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            Log.d(LOG_TAG, "JuHe_postWithFormDataUrl=" + url);
        }
        HttpUtils.getInstance().PostWithFormData(url, params, new MyCallBack() { // from class: com.juhe.juhesdk.middle.common.WebAPI.1
            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onSuccess(String response) {
                try {
                    JSONObject jSONObject = new JSONObject(response);
                    WebAPICallback webAPICallback = WebAPICallback.this;
                    if (webAPICallback != null) {
                        webAPICallback.onSuccess(jSONObject);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    WebAPICallback webAPICallback2 = WebAPICallback.this;
                    if (webAPICallback2 != null) {
                        webAPICallback2.onFailure(1, e.toString());
                    }
                }
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, e.toString());
                }
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onError(Response response) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "");
                }
            }
        });
    }

    private static void postWithFormData(String url, Map<String, String> params) {
        HttpUtils.getInstance().PostWithFormData(url, params, new MyCallBack() { // from class: com.juhe.juhesdk.middle.common.WebAPI.2
            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onError(Response response) {
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onSuccess(String response) {
            }
        });
    }

    public static void login(int appId, int channelId, String extension, Integer isAdult, Integer age, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("extension", extension);
        if (isAdult != null) {
            hashMap.put("isAdult", String.valueOf(isAdult));
        }
        if (age != null) {
            hashMap.put("age", String.valueOf(age));
        }
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/user/getLoginToken";
        } else {
            str = Constants.SERVER_URL + "juhe/api/user/getLoginToken";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void checkUpdate(int appId, int channel, String version, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("channelId", String.valueOf(channel));
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put(ClientCookie.VERSION_ATTR, version);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/gameconfig/update";
        } else {
            str = Constants.SERVER_URL + "juhe/api/gameconfig/update";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void pay(String orderID, int appId, double money, String extraParam, int channel, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("cpOrderId", orderID);
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("money", String.valueOf(money));
        hashMap.put("extraParam", extraParam);
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/pay/callback/" + channel + "/" + appId + "/";
        } else {
            str = Constants.SERVER_URL + "juhe/api/pay/callback/" + channel + "/" + appId + "/";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void createOrder(String accessToken, PayInfo payInfo, int appId, int channelId, String extension, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("amount", payInfo.getAmount());
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("roleId", payInfo.getRoleId());
        hashMap.put("roleName", payInfo.getRoleName());
        hashMap.put(ActionUtils.LEVEL, payInfo.getRoleLevel() + "");
        hashMap.put("serverId", payInfo.getServerId());
        hashMap.put("serverName", payInfo.getServerName());
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("cpOrderId", payInfo.getCpOrderId());
        hashMap.put("goodsId", payInfo.getProductId());
        hashMap.put("goodsName", payInfo.getProductName());
        hashMap.put("extraParam", payInfo.getExtraParam());
        if (extension != null) {
            hashMap.put("extension", extension);
        }
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/pay/createOrder";
        } else {
            str = Constants.SERVER_URL + "juhe/api/pay/createOrder";
        }
        Log.d(LOG_TAG, "调用支付创建订单接口：" + str);
        postWithFormData(str, hashMap, cb);
    }

    public static void checkOrder(int appId, int channelId, String juheOrderIds, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("juheOrderIds", juheOrderIds);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/pay/checkOrder";
        } else {
            str = Constants.SERVER_URL + "juhe/api/pay/checkOrder";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void doValidate(int appId, int channelId, int accountFlag, String productId, String purchaseToken, String ext, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("accountFlag", String.valueOf(accountFlag));
        hashMap.put(BillingClientConstants.PRODUCT_ID, productId);
        hashMap.put("purchaseToken", purchaseToken);
        hashMap.put("ext", ext);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/sdk/huawei/pay/validate";
        } else {
            str = Constants.SERVER_URL + "juhe/api/sdk/huawei/pay/validate";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void doValidateHonor(int appId, int channelId, String purchaseProductInfo, String ext, final WebAPICallback cb) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("purchaseProductInfo", purchaseProductInfo);
        hashMap.put("ext", ext);
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/sdk/rongyao/pay/validate";
        } else {
            str = Constants.SERVER_URL + "juhe/api/sdk/rongyao/pay/validate";
        }
        postWithFormData(str, hashMap, cb);
    }

    public static void createRole(String accessToken, int appId, GameData gameData, int channelId, String deviceId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("deviceId", deviceId);
        hashMap.put("roleCreateTime", String.valueOf(gameData.getRoleCreateTime()));
        hashMap.put("roleId", gameData.getRoleId());
        hashMap.put("roleName", gameData.getRoleName());
        hashMap.put("serverId", gameData.getServerId());
        hashMap.put("serverName", gameData.getServerName());
        hashMap.put("score", String.valueOf(gameData.getBattlePoint()));
        hashMap.put("roleLevel", String.valueOf(gameData.getRoleLevel()));
        hashMap.put("vipLevel", String.valueOf(gameData.getVipLevel()));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/v1/report/createRole";
        } else {
            str = Constants.SERVER_URL + "juhe/api/v1/report/createRole";
        }
        postWithFormData(str, hashMap, null);
    }

    public static void roleLevel(String accessToken, int appId, GameData gameData, String deviceId, int channelId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("deviceId", deviceId);
        hashMap.put("roleCreateTime", String.valueOf(gameData.getRoleCreateTime()));
        hashMap.put("roleId", gameData.getRoleId());
        hashMap.put("roleName", gameData.getRoleName());
        hashMap.put("serverId", gameData.getServerId());
        hashMap.put("serverName", gameData.getServerName());
        hashMap.put("score", String.valueOf(gameData.getBattlePoint()));
        hashMap.put("roleLevel", String.valueOf(gameData.getRoleLevel()));
        hashMap.put("vipLevel", String.valueOf(gameData.getVipLevel()));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/v1/report/roleLevel";
        } else {
            str = Constants.SERVER_URL + "juhe/api/v1/report/roleLevel";
        }
        postWithFormData(str, hashMap, null);
    }

    public static void roleLogin(String accessToken, int appId, GameData gameData, String deviceId, int channelId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("accessToken", accessToken);
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("deviceId", deviceId);
        hashMap.put("roleCreateTime", String.valueOf(gameData.getRoleCreateTime()));
        hashMap.put("roleId", gameData.getRoleId());
        hashMap.put("roleName", gameData.getRoleName());
        hashMap.put("serverId", gameData.getServerId());
        hashMap.put("serverName", gameData.getServerName());
        hashMap.put("score", String.valueOf(gameData.getBattlePoint()));
        hashMap.put("roleLevel", String.valueOf(gameData.getRoleLevel()));
        hashMap.put("vipLevel", String.valueOf(gameData.getVipLevel()));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/v1/report/roleLogin";
        } else {
            str = Constants.SERVER_URL + "juhe/api/v1/report/roleLogin";
        }
        postWithFormData(str, hashMap, null);
    }

    public static void sdkStage(int stage, String appBuildVersion, String appVersion, String bundleId, String deviceId, int channelId, int appId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("stage", stage + "");
        hashMap.put("deviceId", deviceId);
        hashMap.put("appBuildVersion", appBuildVersion);
        hashMap.put("appVersion", appVersion);
        hashMap.put("bundleId", bundleId);
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("system", "1");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/v1/report/sdkStage";
        } else {
            str = Constants.SERVER_URL + "juhe/api/v1/report/sdkStage";
        }
        postWithFormData(str, hashMap);
    }

    public static void gameStage(String stage, String appBuildVersion, String appVersion, String bundleId, String deviceId, int channelId, int appId) {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("stage", stage);
        hashMap.put("appBuildVersion", appBuildVersion);
        hashMap.put("appVersion", appVersion);
        hashMap.put("deviceId", deviceId);
        hashMap.put("bundleId", bundleId);
        hashMap.put("appId", String.valueOf(appId));
        hashMap.put("channelId", String.valueOf(channelId));
        hashMap.put("system", "1");
        hashMap.put(TapEventParamConstants.PARAM_SUB_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        hashMap.put("sign", CommonUtils.instance().getSign(hashMap));
        if (ConfigManager.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "juhe/api/v1/report/gameStage";
        } else {
            str = Constants.SERVER_URL + "juhe/api/v1/report/gameStage";
        }
        postWithFormData(str, hashMap);
    }

    public static void getCDNConfigParams(String url, final WebAPICallback cb) {
        String str = url + "?appId=" + ConfigManager.instance().getAppId() + "&packagename=" + CommonUtils.instance().getPackageName();
        Log.d(LOG_TAG, "拉取的juhe_cdn地址 = " + str);
        CDNHttpUtils.getInstance().Get(str, new MyCallBack() { // from class: com.juhe.juhesdk.middle.common.WebAPI.3
            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onLoadingBefore(Request request) {
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onSuccess(String response) {
                try {
                    Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址成功response=" + response);
                    String decryptByPublicKey = RSAUtils.decryptByPublicKey(response);
                    if (decryptByPublicKey != null) {
                        Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址解码成功outStr =" + decryptByPublicKey);
                    }
                    JSONObject jSONObject = new JSONObject(decryptByPublicKey);
                    if (jSONObject.length() > 0) {
                        Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址成功数据 = " + jSONObject.toString());
                        WebAPICallback.this.onSuccess(jSONObject);
                        return;
                    }
                    WebAPICallback.this.onFailure(1, "");
                    Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址失败 = json解析失败 ");
                } catch (Exception e) {
                    e.printStackTrace();
                    WebAPICallback.this.onFailure(1, "");
                    Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址失败 =" + e.toString());
                }
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onFailure(Request request, Exception e) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "网络异常，请检查网络是否正常");
                }
                Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址失败 =" + e.toString());
            }

            @Override // com.juhe.juhesdk.middle.common.MyCallBack
            public void onError(Response response) {
                WebAPICallback webAPICallback = WebAPICallback.this;
                if (webAPICallback != null) {
                    webAPICallback.onFailure(1, "");
                }
                Log.d(WebAPI.LOG_TAG, "拉取的juhe_cdn地址失败 =" + response.toString());
            }
        });
    }
}
