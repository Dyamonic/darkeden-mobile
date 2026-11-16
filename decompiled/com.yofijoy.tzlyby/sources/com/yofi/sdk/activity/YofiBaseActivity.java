package com.yofi.sdk.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.yofi.sdk.utils.ActivityCore;

/* loaded from: classes2.dex */
public class YofiBaseActivity extends Activity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        if (Build.VERSION.SDK_INT == 26 && ActivityCore.isTranslucentOrFloating(this)) {
            Log.d("onCreate", "onCreate fixOrientation when Oreo, result = " + ActivityCore.fixOrientation(this));
        }
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int requestedOrientation) {
        if (Build.VERSION.SDK_INT == 26 && ActivityCore.isTranslucentOrFloating(this)) {
            Log.d("onCreate", "avoid calling setRequestedOrientation when Oreo.");
        } else {
            super.setRequestedOrientation(requestedOrientation);
        }
    }
}
