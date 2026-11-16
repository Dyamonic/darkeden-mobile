package com.juhe.juhesdk.middle.manager;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.juhe.juhesdk.middle.common.Constants;
import cz.msebera.android.httpclient.client.config.CookieSpecs;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ConfigManager {
    static ConfigManager ins;
    private Map<Integer, String> channelMap;
    private SharedPreferences.Editor localEditor;
    private SharedPreferences settings = null;
    private boolean initialized = false;
    private boolean isDebug = false;
    private int sdkStage = 0;

    public static ConfigManager instance() {
        if (ins == null) {
            ins = new ConfigManager();
        }
        return ins;
    }

    public void init(final Context context) {
        HashMap hashMap = new HashMap();
        this.channelMap = hashMap;
        hashMap.put(0, "com.juhe.juhesdk.middle.channel.DefaultImp");
        this.channelMap.put(1, "com.juhe.juhesdk.middle.channel.YoFiImp");
        this.channelMap.put(2, "com.juhe.juhesdk.middle.channel.SQImp");
        this.channelMap.put(3, "com.juhe.juhesdk.middle.channel.OPPOImp");
        this.channelMap.put(4, "com.juhe.juhesdk.middle.channel.VIVOImp");
        this.channelMap.put(5, "com.juhe.juhesdk.middle.channel.CoolPayImp");
        this.channelMap.put(6, "com.juhe.juhesdk.middle.channel.AmigoPlayImp");
        this.channelMap.put(7, "com.juhe.juhesdk.middle.channel.LenovoImp");
        this.channelMap.put(8, "com.juhe.juhesdk.middle.channel.MeizuImp");
        this.channelMap.put(9, "com.juhe.juhesdk.middle.channel.HuaweiImp");
        this.channelMap.put(10, "com.juhe.juhesdk.middle.channel.YSDKImp");
        this.channelMap.put(11, "com.juhe.juhesdk.middle.channel.UCImp");
        this.channelMap.put(12, "com.juhe.juhesdk.middle.channel.G360Imp");
        this.channelMap.put(13, "com.juhe.juhesdk.middle.channel.BaiduImp");
        this.channelMap.put(14, "com.juhe.juhesdk.middle.channel.MiImp");
        this.channelMap.put(15, "com.juhe.juhesdk.middle.channel.BiliImp");
        this.channelMap.put(16, "com.juhe.juhesdk.middle.channel.G4399Imp");
        this.channelMap.put(17, "com.juhe.juhesdk.middle.channel.HeiShaImp");
        this.channelMap.put(18, "com.juhe.juhesdk.middle.channel.NubiaImp");
        this.channelMap.put(19, "com.juhe.juhesdk.middle.channel.MumuImp");
        this.channelMap.put(20, "com.juhe.juhesdk.middle.channel.TapTapImp");
        this.channelMap.put(21, "com.juhe.juhesdk.middle.channel.GbImp");
        this.channelMap.put(22, "com.juhe.juhesdk.middle.channel.YuMingImp");
        this.channelMap.put(23, "com.juhe.juhesdk.middle.channel.ZhongChenImp");
        this.channelMap.put(24, "com.juhe.juhesdk.middle.channel.LdImp");
        this.channelMap.put(25, "com.juhe.juhesdk.middle.channel.NoxImp");
        this.channelMap.put(26, "com.juhe.juhesdk.middle.channel.YouXiFanImp");
        this.channelMap.put(27, "com.juhe.juhesdk.middle.channel.GpImp");
        this.channelMap.put(28, "com.juhe.juhesdk.middle.channel.XiaoqiImp");
        this.channelMap.put(30, "com.juhe.juhesdk.middle.channel.UmarkImp");
        this.channelMap.put(31, "com.juhe.juhesdk.middle.channel.QidianImp");
        this.channelMap.put(32, "com.juhe.juhesdk.middle.channel.UmarkSdkImp");
        this.channelMap.put(33, "com.juhe.juhesdk.middle.channel.YeHuaImp");
        this.channelMap.put(34, "com.juhe.juhesdk.middle.channel.SiPuImp");
        this.channelMap.put(35, "com.juhe.juhesdk.middle.channel.BwhImp");
        this.channelMap.put(36, "com.juhe.juhesdk.middle.channel.ChangMengImp");
        this.channelMap.put(38, "com.juhe.juhesdk.middle.channel.HonorImp");
        this.channelMap.put(39, "com.juhe.juhesdk.middle.channel.TTsdkImp");
        this.channelMap.put(40, "com.juhe.juhesdk.middle.channel.g233Imp");
        this.channelMap.put(41, "com.juhe.juhesdk.middle.channel.mumayiImp");
        this.channelMap.put(42, "com.juhe.juhesdk.middle.channel.DownJoyImp");
        this.channelMap.put(43, "com.juhe.juhesdk.middle.channel.SamSungImp");
        this.channelMap.put(44, "com.juhe.juhesdk.middle.channel.WuFanImp");
        this.channelMap.put(57, "com.juhe.juhesdk.middle.channel.HuanXiImp");
        this.channelMap.put(64, "com.juhe.juhesdk.middle.channel.YouGuImp");
        this.channelMap.put(65, "com.juhe.juhesdk.middle.channel.QimengImp");
        Log.d("channelMapInit", "init");
        if (this.settings == null) {
            this.settings = context.getSharedPreferences("Juhe", 0);
        }
        this.localEditor = this.settings.edit();
        Map<String, ?> all = this.settings.getAll();
        if (all.containsKey(Constants.SDK_STAGE)) {
            this.sdkStage = ((Integer) all.get(Constants.SDK_STAGE)).intValue();
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return;
            }
            if (applicationInfo.metaData != null) {
                this.isDebug = applicationInfo.metaData.getBoolean(Constants.JUHE_IS_DEBUG);
            }
            if (this.settings.getBoolean(Constants.JUHE_INITIALIZED, false)) {
                return;
            }
            String string = context.getResources().getString(context.getResources().getIdentifier(Constants.JUHE_APPID, "string", context.getPackageName()));
            this.localEditor.putInt(Constants.JUHE_APPID, string != null ? Integer.parseInt(string.trim()) : 0);
            String string2 = context.getResources().getString(context.getResources().getIdentifier(Constants.JUHE_CHANNEL, "string", context.getPackageName()));
            int parseInt = string2 != null ? Integer.parseInt(string2.trim()) : 0;
            this.localEditor.putInt(Constants.JUHE_CHANNEL, parseInt);
            this.localEditor.putString(Constants.JUHE_APPKEY, context.getResources().getString(context.getResources().getIdentifier(Constants.JUHE_APPKEY, "string", context.getPackageName())));
            if (parseInt == 0) {
                try {
                    this.localEditor.putString(Constants.JUHE_SHOW_REPORT_TOAST, context.getResources().getString(context.getResources().getIdentifier(Constants.JUHE_SHOW_REPORT_TOAST, "string", context.getPackageName())));
                } catch (Exception e) {
                    Log.e("channelMapInit", "configManager初始化失败：" + e.toString());
                }
            }
            if (parseInt == 1 || parseInt == 22) {
                this.localEditor.putString(Constants.SPLASH_TYPE, context.getResources().getString(context.getResources().getIdentifier(Constants.SPLASH_TYPE, "string", context.getPackageName())));
            }
            this.localEditor.putBoolean(Constants.JUHE_INITIALIZED, true);
            this.localEditor.commit();
            this.initialized = true;
        } catch (Exception e2) {
            Log.e("channelMapInit", "configManager初始化失败：" + e2.toString());
        }
    }

    public int getAppId() {
        return this.settings.getInt(Constants.JUHE_APPID, 0);
    }

    public Boolean getIsDebug() {
        return Boolean.valueOf(this.isDebug);
    }

    public int getJuheChannel() {
        return this.settings.getInt(Constants.JUHE_CHANNEL, 0);
    }

    public String getAppKey() {
        return this.settings.getString(Constants.JUHE_APPKEY, "");
    }

    public String getChannelClassName() {
        int juheChannel = getJuheChannel();
        Log.d("channelId", "" + juheChannel);
        if (this.channelMap.containsKey(Integer.valueOf(juheChannel))) {
            return this.channelMap.get(Integer.valueOf(juheChannel));
        }
        return this.channelMap.get(0);
    }

    public int getSdkStage() {
        return this.sdkStage;
    }

    public void setSdkStage(int sdkStage) {
        this.sdkStage = sdkStage;
        this.localEditor.putInt(Constants.SDK_STAGE, sdkStage);
        this.localEditor.commit();
    }

    public String getSplashType() {
        return this.settings.getString(Constants.SPLASH_TYPE, CookieSpecs.DEFAULT);
    }

    public String getshowRepotToast() {
        return this.settings.getString(Constants.JUHE_SHOW_REPORT_TOAST, "0");
    }

    public String getJuheCacheServerUrl() {
        return this.settings.getString("juheCacheServerUrl", "");
    }

    public void setJuheCacheServerUrl(String juheCacheServerUrl) {
        this.localEditor.putString("juheCacheServerUrl", juheCacheServerUrl);
        this.localEditor.commit();
    }
}
