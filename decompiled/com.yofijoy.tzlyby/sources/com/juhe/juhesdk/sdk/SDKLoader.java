package com.juhe.juhesdk.sdk;

import com.juhe.juhesdk.interfaces.IAppApi;
import com.juhe.juhesdk.interfaces.ISDKApi;
import com.juhe.juhesdk.middle.manager.ConfigManager;

/* loaded from: classes.dex */
public class SDKLoader {
    private static SDKLoader imp;
    private ISDKApi sdk = null;
    private IAppApi appApi = null;

    public static SDKLoader instance() {
        if (imp == null) {
            imp = new SDKLoader();
        }
        return imp;
    }

    public ISDKApi getSDK() {
        if (this.sdk == null) {
            try {
                this.sdk = (ISDKApi) Class.forName(ConfigManager.instance().getChannelClassName()).newInstance();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.sdk;
    }

    public IAppApi getApp(int channel) {
        Class<?> cls;
        if (this.appApi == null) {
            try {
                if (channel == 1) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.YoFiApp");
                } else if (channel == 4) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.ViVoApp");
                } else if (channel == 5) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.CoolPayApp");
                } else if (channel == 9) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.HuaWeiApp");
                } else if (channel == 12) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.G360App");
                } else if (channel == 13) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.BaiDuApp");
                } else if (channel == 15) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.BiLiBiLiApp");
                } else if (channel == 17) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.HeiShaApp");
                } else if (channel == 18) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.NubiaApp");
                } else if (channel == 19) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.MuMuApp");
                } else if (channel == 21) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.GBApp");
                } else if (channel == 22) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.YuMingApp");
                } else if (channel == 23) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.ZhongChenApp");
                } else if (channel == 26) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.YouXiFanApp");
                } else if (channel == 30) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.UmarkApp");
                } else if (channel == 31) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.QidianApp");
                } else if (channel == 32) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.UmarkSdkApp");
                } else if (channel == 35) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.BwhApp");
                } else if (channel == 38) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.HonorApp");
                } else if (channel == 39) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.TTsdkApp");
                } else if (channel == 42) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.DownJoyApp");
                } else if (channel == 65) {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.QimengApp");
                } else {
                    cls = Class.forName("com.juhe.juhesdk.app.channel.DefaultApp");
                }
                this.appApi = (IAppApi) cls.newInstance();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.appApi;
    }
}
