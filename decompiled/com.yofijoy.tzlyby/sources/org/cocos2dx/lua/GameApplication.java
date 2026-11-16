package org.cocos2dx.lua;

import com.juhe.juhesdk.app.JuHeApplication;
import com.tencent.bugly.crashreport.CrashReport;

/* loaded from: classes3.dex */
public class GameApplication extends JuHeApplication {
    @Override // com.juhe.juhesdk.app.JuHeApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        CrashReport.initCrashReport(this, "39e288ca5e", true, new CrashReport.UserStrategy(this));
    }
}
