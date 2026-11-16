package com.yofi.sdk.imp.middle.view;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.activity.ContainerActivity;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.taptap.TapTapSingleton;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.widget.WidgetUtil;
import java.util.List;

/* loaded from: classes2.dex */
public class TapTapCheckUpdateView implements IContainerView {
    private ContainerActivity mActivity;
    private final String updateContent;
    private final int updateType;

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

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    public TapTapCheckUpdateView(final ContainerActivity activity, final Bundle bundle) {
        this.mActivity = activity;
        int i = bundle.getInt(Constants.UPDATE_NEED_TYPE);
        this.updateType = i;
        String string = bundle.getString(Constants.UPDATE_CONTENT);
        this.updateContent = string;
        activity.setContentView(activity.getResources().getIdentifier("taptap_check_update", "layout", activity.getPackageName()));
        TextView textView = (TextView) activity.findViewById(activity.getResources().getIdentifier("tv_content", BreakpointSQLiteKey.ID, activity.getPackageName()));
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        if (!TextUtils.isEmpty(string)) {
            textView.setText(string);
        }
        Button button = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_ok", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.TapTapCheckUpdateView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                TapTapCheckUpdateView.this.beginDownd();
            }
        });
        Button button2 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_cancel", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button2);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.TapTapCheckUpdateView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                YoFiSdkImp.instance().setIsCheckUpdate(false);
                activity.finish();
            }
        });
        Button button3 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_sure", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button3);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.TapTapCheckUpdateView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                TapTapCheckUpdateView.this.beginDownd();
            }
        });
        if (i == Constants.UPDATE_TYPE.POSSIBLE.getValue()) {
            button2.setVisibility(8);
            button.setVisibility(8);
            button3.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void beginDownd() {
        TapTapSingleton.getInstance().tapTapOpenUpdate(this.mActivity);
    }
}
