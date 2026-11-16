package com.yofi.sdk.imp.middle.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.activity.VerticalContainerActivity;
import com.yofi.sdk.interfaces.IContainerView;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.List;

/* loaded from: classes2.dex */
public class PopView implements IContainerView {
    private Activity containerActivity;

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onDestory() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onPermissionsGranted(int requestCode, List<String> perms) {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResult(int requestCode, int resultCode, Intent data) {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResume() {
    }

    public PopView(final VerticalContainerActivity activity, final Bundle bundle) {
        this.containerActivity = activity;
        activity.setContentView(activity.getResources().getIdentifier("yofi_pop", "layout", activity.getPackageName()));
        ImageView imageView = (ImageView) activity.findViewById(activity.getResources().getIdentifier("iv_pop", BreakpointSQLiteKey.ID, activity.getPackageName()));
        Glide.with((FragmentActivity) activity).load(bundle.getString(ClientCookie.PATH_ATTR)).into(imageView);
        ((LinearLayout) activity.findViewById(activity.getResources().getIdentifier("bg_layout", BreakpointSQLiteKey.ID, activity.getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.PopView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PopView.this.containerActivity.finish();
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.PopView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PopView.this.containerActivity.finish();
            }
        });
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() != 0) {
            return false;
        }
        this.containerActivity.finish();
        return false;
    }
}
