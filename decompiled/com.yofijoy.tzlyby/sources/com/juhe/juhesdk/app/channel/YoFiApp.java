package com.juhe.juhesdk.app.channel;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import com.juhe.juhesdk.app.JuHeApplication;
import com.juhe.juhesdk.interfaces.IAppApi;
import com.yofi.sdk.YoFiSDK;

/* loaded from: classes.dex */
public class YoFiApp implements IAppApi {
    @Override // com.juhe.juhesdk.interfaces.IAppApi
    public boolean checkedPermission(Activity activity) {
        return true;
    }

    @Override // com.juhe.juhesdk.interfaces.IAppApi
    public void loadLib() {
    }

    @Override // com.juhe.juhesdk.interfaces.IAppApi
    public void onConfigurationChanged(Configuration config) {
    }

    @Override // com.juhe.juhesdk.interfaces.IAppApi
    public void onTerminate() {
    }

    @Override // com.juhe.juhesdk.interfaces.IAppApi
    public void initApp() {
        YoFiSDK.onApplicationCreate((Application) JuHeApplication.getContextObject());
    }

    @Override // com.juhe.juhesdk.interfaces.IAppApi
    public void attachBaseContext(Context context) {
        Log.v("YoFiApp", "attachBaseContext");
    }
}
