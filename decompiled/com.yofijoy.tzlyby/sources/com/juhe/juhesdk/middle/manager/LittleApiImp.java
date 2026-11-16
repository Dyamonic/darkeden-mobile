package com.juhe.juhesdk.middle.manager;

import android.content.Context;
import com.juhe.juhesdk.middle.common.Constants;
import com.juhe.juhesdk.middle.common.WebAPI;
import com.juhe.juhesdk.middle.data.GameData;
import com.juhe.juhesdk.middle.data.PayInfo;
import com.juhe.juhesdk.utils.CommonUtils;
import com.juhe.juhesdk.web.WebAPICallback;

/* loaded from: classes.dex */
public class LittleApiImp {
    public static void juheLogin(int appId, int channelId, String extension, Integer isAdult, Integer age, WebAPICallback cb) {
        WebAPI.login(appId, channelId, extension, isAdult, age, cb);
    }

    public static void checkUpdate(int appId, int channel, String version, WebAPICallback cb) {
        WebAPI.checkUpdate(appId, channel, version, cb);
    }

    public static void pay(String orderID, int appId, double money, String extraParam, int channel, WebAPICallback cb) {
        WebAPI.pay(orderID, appId, money, extraParam, channel, cb);
    }

    public static void createOrder(String accessToken, PayInfo payInfo, int appId, int channelId, String extension, WebAPICallback cb) {
        WebAPI.createOrder(accessToken, payInfo, appId, channelId, extension, cb);
    }

    public static void checkOrder(int appId, int channelId, String juheOrderIds, WebAPICallback cb) {
        WebAPI.checkOrder(appId, channelId, juheOrderIds, cb);
    }

    public static void submitGameData(int type, Context context, String accessToken, GameData data) {
        if (Constants.SUBMIT_TYPE.CREATE.getValue() == type) {
            createRole(context, accessToken, data);
        } else if (Constants.SUBMIT_TYPE.LOGIN.getValue() == type) {
            roleLogin(context, accessToken, data);
        } else if (Constants.SUBMIT_TYPE.LEVELUP.getValue() == type) {
            roleLevel(context, accessToken, data);
        }
    }

    public static void createRole(Context context, String accessToken, GameData gameData) {
        WebAPI.createRole(accessToken, ConfigManager.instance().getAppId(), gameData, ConfigManager.instance().getJuheChannel(), CommonUtils.instance().getmDeviceId());
    }

    public static void roleLogin(Context context, String accessToken, GameData gameData) {
        WebAPI.roleLogin(accessToken, ConfigManager.instance().getAppId(), gameData, CommonUtils.instance().getmDeviceId(), ConfigManager.instance().getJuheChannel());
    }

    public static void roleLevel(Context context, String accessToken, GameData gameData) {
        WebAPI.roleLevel(accessToken, ConfigManager.instance().getAppId(), gameData, CommonUtils.instance().getmDeviceId(), ConfigManager.instance().getJuheChannel());
    }

    public static void sdkStage(Context context, int stage, boolean needDetUniqueID) {
        WebAPI.sdkStage(stage, CommonUtils.instance().getAppVersionName(), CommonUtils.instance().getAppVersionCode(), CommonUtils.instance().getPackageName(), needDetUniqueID ? CommonUtils.instance().getmDeviceId() : "", ConfigManager.instance().getJuheChannel(), ConfigManager.instance().getAppId());
        ConfigManager.instance().setSdkStage(stage);
    }

    public static void gameStage(String stage) {
        String str = CommonUtils.instance().getmDeviceId();
        int appId = ConfigManager.instance().getAppId();
        WebAPI.gameStage(stage, CommonUtils.instance().getAppVersionName(), CommonUtils.instance().getAppVersionCode(), CommonUtils.instance().getPackageName(), str, ConfigManager.instance().getJuheChannel(), appId);
    }
}
