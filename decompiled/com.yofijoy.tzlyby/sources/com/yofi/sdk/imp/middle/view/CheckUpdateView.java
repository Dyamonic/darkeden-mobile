package com.yofi.sdk.imp.middle.view;

import android.content.Intent;
import android.net.Uri;
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
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.widget.WidgetUtil;
import java.util.List;

/* loaded from: classes2.dex */
public class CheckUpdateView implements IContainerView {
    private ContainerActivity mActivity;
    private final String updateContent;
    private final int updateType;
    private final String url;

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

    public CheckUpdateView(final ContainerActivity activity, final Bundle bundle) {
        this.mActivity = activity;
        this.url = bundle.getString(Constants.DOWNLOAD_URL);
        int i = bundle.getInt(Constants.UPDATE_NEED_TYPE);
        this.updateType = i;
        String string = bundle.getString(Constants.UPDATE_CONTENT);
        this.updateContent = string;
        activity.setContentView(activity.getResources().getIdentifier("check_update", "layout", activity.getPackageName()));
        TextView textView = (TextView) activity.findViewById(activity.getResources().getIdentifier("tv_content", BreakpointSQLiteKey.ID, activity.getPackageName()));
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        if (!TextUtils.isEmpty(string)) {
            textView.setText(string);
        }
        Button button = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_ok", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.CheckUpdateView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CheckUpdateView.this.beginDownd();
            }
        });
        Button button2 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_cancel", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button2);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.CheckUpdateView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                YoFiSdkImp.instance().setIsCheckUpdate(false);
                activity.finish();
            }
        });
        Button button3 = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_sure", BreakpointSQLiteKey.ID, activity.getPackageName()));
        WidgetUtil.setButtonStateChangeListener(button3);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.CheckUpdateView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CheckUpdateView.this.beginDownd();
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
        String str;
        if (YoFiSdkImp.instance().getIsDebug().booleanValue()) {
            str = Constants.DEBUG_SERVER_URL + "sdk/api/v1/h5/download";
        } else {
            str = Constants.SERVER_URL + "sdk/api/v1/h5/download";
        }
        String str2 = (str + "?url=") + this.url;
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setFlags(268435456);
        intent.setData(Uri.parse(str2));
        this.mActivity.startActivity(intent);
    }
}
