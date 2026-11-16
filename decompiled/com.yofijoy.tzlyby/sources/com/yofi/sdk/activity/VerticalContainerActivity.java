package com.yofi.sdk.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import androidx.fragment.app.FragmentActivity;
import com.yofi.sdk.SDKLoader;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.notchlib.NotchScreenManager;
import com.yofi.sdk.utils.ActivityCore;

/* loaded from: classes2.dex */
public class VerticalContainerActivity extends FragmentActivity {
    private int functionCode;
    private IContainerView view;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        if (Build.VERSION.SDK_INT == 26 && ActivityCore.isTranslucentOrFloating(this)) {
            Log.d("onCreate", "onCreate fixOrientation when Oreo, result = " + ActivityCore.fixOrientation(this));
        }
        super.onCreate(savedInstanceState);
        createView(getIntent().getExtras());
        YoFiSdkImp.instance().addActivity(this);
        NotchScreenManager.getInstance().setDisplayInNotch(this);
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int requestedOrientation) {
        if (Build.VERSION.SDK_INT == 26 && ActivityCore.isTranslucentOrFloating(this)) {
            Log.d("onCreate", "avoid calling setRequestedOrientation when Oreo.");
        } else {
            super.setRequestedOrientation(requestedOrientation);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        getWindow().addFlags(Integer.MIN_VALUE);
    }

    public int getFunctionCode() {
        return this.functionCode;
    }

    public void setFunctionCode(int functionCode) {
        this.functionCode = functionCode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        IContainerView iContainerView = this.view;
        if (iContainerView != null) {
            iContainerView.onResume();
        }
        super.onResume();
        NotchScreenManager.getInstance().setDisplayInNotch(this);
    }

    private void createView(Bundle bundle) {
        this.functionCode = bundle.getInt("FUNCTION_CODE");
        this.view = SDKLoader.instance().getViewBuilder().create(this, bundle);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        if (this.view.onKeyDown(keyCode, event)) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.view.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.view.onResult(requestCode, resultCode, data);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.view.onDestory();
        super.onDestroy();
        YoFiSdkImp.instance().removeActivity(this);
    }
}
