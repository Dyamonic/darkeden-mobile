package com.yofi.sdk.app;

import android.app.Application;
import com.yofi.sdk.YoFiSDK;

/* loaded from: classes2.dex */
public abstract class YoFiApplication extends Application {
    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        YoFiSDK.onApplicationCreate(this);
    }
}
