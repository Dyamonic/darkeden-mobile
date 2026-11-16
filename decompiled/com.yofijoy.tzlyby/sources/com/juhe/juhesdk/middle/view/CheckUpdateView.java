package com.juhe.juhesdk.middle.view;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.juhe.juhesdk.sdk.CheckUpdateCallback;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes.dex */
public class CheckUpdateView extends Dialog {
    private static final String TAG = "CheckUpdateView";
    private TextView cancle_btn;
    private CheckUpdateCallback cb;
    private TextView confirm_btn;
    public String downLoadUrl;
    private Context mContext;
    public int needUpdate;
    private TextView ok_btn;
    public String updateContent;

    public int isNeedUpdate() {
        return this.needUpdate;
    }

    public void setNeedUpdate(int needUpdate) {
        this.needUpdate = needUpdate;
    }

    public String getDownLoadUrl() {
        return this.downLoadUrl;
    }

    public void setDownLoadUrl(String downLoadUrl) {
        this.downLoadUrl = downLoadUrl;
    }

    public String getUpdateContent() {
        return this.updateContent;
    }

    public void setUpdateContent(String updateContent) {
        this.updateContent = updateContent;
    }

    public CheckUpdateView(Context context, CheckUpdateCallback cb) {
        super(context);
        this.mContext = context;
        this.cb = cb;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(this.mContext.getResources().getIdentifier("juhe_checkupdate", "layout", this.mContext.getPackageName()));
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
        TextView textView = (TextView) findViewById(this.mContext.getResources().getIdentifier("message_tv", BreakpointSQLiteKey.ID, this.mContext.getPackageName()));
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        if (!TextUtils.isEmpty(this.updateContent)) {
            textView.setText(this.updateContent);
        }
        TextView textView2 = (TextView) findViewById(this.mContext.getResources().getIdentifier("cancle_btn", BreakpointSQLiteKey.ID, this.mContext.getPackageName()));
        this.cancle_btn = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.middle.view.CheckUpdateView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CheckUpdateView.this.cb.onCancelClick("");
                CheckUpdateView.this.dismiss();
            }
        });
        TextView textView3 = (TextView) findViewById(this.mContext.getResources().getIdentifier("confirm_btn", BreakpointSQLiteKey.ID, this.mContext.getPackageName()));
        this.confirm_btn = textView3;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.middle.view.CheckUpdateView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CheckUpdateView.this.beginDownd();
            }
        });
        TextView textView4 = (TextView) findViewById(this.mContext.getResources().getIdentifier("ok_btn", BreakpointSQLiteKey.ID, this.mContext.getPackageName()));
        this.ok_btn = textView4;
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.middle.view.CheckUpdateView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CheckUpdateView.this.beginDownd();
            }
        });
        if (this.needUpdate == 2) {
            this.cancle_btn.setVisibility(8);
            this.confirm_btn.setVisibility(8);
            this.ok_btn.setVisibility(0);
        }
        hideBottomUIMenu();
        getWindow().getDecorView().setBackground(null);
        getWindow().setDimAmount(0.0f);
    }

    protected void hideBottomUIMenu() {
        if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
            getWindow().getDecorView().setSystemUiVisibility(8);
        } else if (Build.VERSION.SDK_INT >= 19) {
            getWindow().getDecorView().setSystemUiVisibility(2);
            Log.d(TAG, "hideBottomUIMenu: ");
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.juhe.juhesdk.middle.view.CheckUpdateView.4
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int visibility) {
                    Log.d(CheckUpdateView.TAG, "onSystemUiVisibilityChange: ");
                    CheckUpdateView.this.getWindow().getDecorView().setSystemUiVisibility(5894);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void beginDownd() {
        try {
            String str = this.downLoadUrl;
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            this.mContext.startActivity(intent);
        } catch (Exception e) {
            Log.d(TAG, "beginDownd Exception: " + e.toString());
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }
}
