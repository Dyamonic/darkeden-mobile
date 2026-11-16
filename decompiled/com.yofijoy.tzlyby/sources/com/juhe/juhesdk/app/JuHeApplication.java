package com.juhe.juhesdk.app;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import androidx.multidex.MultiDex;
import com.juhe.juhesdk.interfaces.IAppApi;
import com.juhe.juhesdk.middle.manager.ConfigManager;
import com.juhe.juhesdk.sdk.SDKLoader;

/* loaded from: classes.dex */
public class JuHeApplication extends Application {
    private static Context context;
    public static boolean hasInJuHeApplication;
    IAppApi iAppApi;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        context = getApplicationContext();
        this.iAppApi.initApp();
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(this);
        ConfigManager.instance().init(base);
        hasInJuHeApplication = true;
        String str = ConfigManager.instance().getJuheChannel() + "";
        Log.d("JuHeApplication", "调用attachBaseContext: " + str);
        this.iAppApi = SDKLoader.instance().getApp(Integer.parseInt(str));
        Log.d("JuHeApplication", "调用attachBaseContext: " + this.iAppApi);
        Log.d("JuHeApplication", "调用attachBaseContext: " + this);
        this.iAppApi.attachBaseContext(this);
    }

    public static Context getContextObject() {
        if (context == null) {
            Log.d("JuHeApplication", "JuHeApplication为初始化");
        }
        return context;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.iAppApi.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        this.iAppApi.onTerminate();
    }

    public void loadLib() {
        this.iAppApi.loadLib();
    }
}
