package com.yofi.sdk.imp.middle.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.activity.VerticalContainerActivity;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.dialog.ServiceDialog;
import com.yofi.sdk.imp.middle.manager.LittleApiImp;
import com.yofi.sdk.interfaces.IContainerView;
import com.yofi.sdk.utils.ToastUtils;
import com.yofi.sdk.web.WebAPICallback;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class ServiceAppraiseView implements IContainerView {
    Activity activity;
    Button btn_commit;
    String closeTime;
    EditText et_content;
    int isOk = 3;
    int score = 0;

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onDestory() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onKeyDown(int var1, KeyEvent var2) {
        return false;
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onPermissionsGranted(int requestCode, List<String> perms) {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResult(int var1, int var2, Intent var3) {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public void onResume() {
    }

    @Override // com.yofi.sdk.interfaces.IContainerView
    public boolean onTouchEvent(MotionEvent event) {
        return false;
    }

    public ServiceAppraiseView(final VerticalContainerActivity activity, final Bundle bundle) {
        this.activity = activity;
        this.closeTime = String.valueOf(bundle.getLong("createTime"));
        activity.setContentView(activity.getResources().getIdentifier("serciveappraise", "layout", activity.getPackageName()));
        activity.findViewById(activity.getResources().getIdentifier("btn_back", BreakpointSQLiteKey.ID, activity.getPackageName())).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ServiceAppraiseView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                activity.finish();
            }
        });
        Button button = (Button) activity.findViewById(activity.getResources().getIdentifier("btn_commit", BreakpointSQLiteKey.ID, activity.getPackageName()));
        this.btn_commit = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.view.ServiceAppraiseView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ServiceAppraiseView.this.evaluateChat();
            }
        });
        this.et_content = (EditText) activity.findViewById(activity.getResources().getIdentifier("et_content", BreakpointSQLiteKey.ID, activity.getPackageName()));
        RadioGroup radioGroup = (RadioGroup) activity.findViewById(activity.getResources().getIdentifier("radioGroup", BreakpointSQLiteKey.ID, activity.getPackageName()));
        final RadioButton radioButton = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("radio_1", BreakpointSQLiteKey.ID, activity.getPackageName()));
        final RadioButton radioButton2 = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("radio_2", BreakpointSQLiteKey.ID, activity.getPackageName()));
        final RadioButton radioButton3 = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("radio_3", BreakpointSQLiteKey.ID, activity.getPackageName()));
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.yofi.sdk.imp.middle.view.ServiceAppraiseView.3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                if (checkedId == radioButton.getId()) {
                    ServiceAppraiseView.this.score = 1;
                } else if (checkedId == radioButton2.getId()) {
                    ServiceAppraiseView.this.score = 2;
                } else if (checkedId == radioButton3.getId()) {
                    ServiceAppraiseView.this.score = 3;
                }
                ServiceAppraiseView.this.setClick();
            }
        });
        RadioGroup radioGroup2 = (RadioGroup) activity.findViewById(activity.getResources().getIdentifier("rg2", BreakpointSQLiteKey.ID, activity.getPackageName()));
        final RadioButton radioButton4 = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("rb_yes", BreakpointSQLiteKey.ID, activity.getPackageName()));
        final RadioButton radioButton5 = (RadioButton) activity.findViewById(activity.getResources().getIdentifier("rb_no", BreakpointSQLiteKey.ID, activity.getPackageName()));
        radioGroup2.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.yofi.sdk.imp.middle.view.ServiceAppraiseView.4
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                if (checkedId == radioButton4.getId()) {
                    ServiceAppraiseView.this.isOk = 1;
                } else if (checkedId == radioButton5.getId()) {
                    ServiceAppraiseView.this.isOk = 0;
                }
                ServiceAppraiseView.this.setClick();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClick() {
        if (this.score == 0 || this.isOk == 3) {
            return;
        }
        this.btn_commit.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void evaluateChat() {
        LittleApiImp.evaluateChat(YoFiSdkImp.instance().getAccessToken(), this.closeTime, String.valueOf(this.isOk), this.et_content.getText().toString(), String.valueOf(this.score), new WebAPICallback() { // from class: com.yofi.sdk.imp.middle.view.ServiceAppraiseView.5
            @Override // com.yofi.sdk.web.WebAPICallback
            public void onSuccess(JSONObject res) {
                try {
                    if (res.getInt("code") == 0) {
                        ServiceDialog serviceDialog = new ServiceDialog(ServiceAppraiseView.this.activity);
                        serviceDialog.setDialogInterface(new ServiceDialog.Callback() { // from class: com.yofi.sdk.imp.middle.view.ServiceAppraiseView.5.1
                            @Override // com.yofi.sdk.imp.middle.dialog.ServiceDialog.Callback
                            public void onCancel() {
                                ServiceAppraiseView.this.activity.setResult(101);
                                ServiceAppraiseView.this.activity.finish();
                            }
                        });
                        serviceDialog.show();
                    } else {
                        ToastUtils.show(ServiceAppraiseView.this.activity, res.getString("msg"));
                    }
                } catch (Exception unused) {
                }
            }

            @Override // com.yofi.sdk.web.WebAPICallback
            public void onFailure(int code, String var1) {
                ToastUtils.show(ServiceAppraiseView.this.activity, var1);
            }
        });
    }
}
