package com.juhe.juhesdk.interfaces;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;

/* loaded from: classes.dex */
public interface IAppApi {
    void attachBaseContext(Context context);

    boolean checkedPermission(Activity activity);

    void initApp();

    void loadLib();

    void onConfigurationChanged(Configuration config);

    void onTerminate();
}
