package com.yofi.sdk.imp.middle.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class LoadingDialog extends Dialog {
    private Callback callback;
    private Handler mHandler;
    private String message;
    int progress;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onCancel();
    }

    public LoadingDialog(Context context, String msg) {
        super(context, context.getResources().getIdentifier("Sj_MyDialog", "style", context.getPackageName()));
        this.message = "";
        this.progress = 0;
        this.mHandler = new Handler();
        this.message = msg;
    }

    public LoadingDialog(Context context, String msg, Callback callback) {
        super(context, context.getResources().getIdentifier("Sj_MyDialog", "style", context.getPackageName()));
        this.message = "";
        this.progress = 0;
        this.mHandler = new Handler();
        this.message = msg;
        this.callback = callback;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getContext().getResources().getIdentifier("yofi_progressbar", "layout", getContext().getPackageName()));
        ((TextView) findViewById(getContext().getResources().getIdentifier("text", BreakpointSQLiteKey.ID, getContext().getPackageName()))).setText(this.message);
        final ProgressBar progressBar = (ProgressBar) findViewById(getContext().getResources().getIdentifier(NotificationCompat.CATEGORY_PROGRESS, BreakpointSQLiteKey.ID, getContext().getPackageName()));
        this.progress = progressBar.getProgress();
        new Timer().schedule(new TimerTask() { // from class: com.yofi.sdk.imp.middle.dialog.LoadingDialog.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                LoadingDialog.this.mHandler.post(new Runnable() { // from class: com.yofi.sdk.imp.middle.dialog.LoadingDialog.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LoadingDialog.this.progress += 5;
                        if (LoadingDialog.this.progress > 100) {
                            LoadingDialog.this.progress = 0;
                        }
                        progressBar.setProgress(LoadingDialog.this.progress);
                    }
                });
            }
        }, 0L, 100L);
        if (this.callback != null) {
            setCancelable(false);
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        Callback callback = this.callback;
        if (callback != null) {
            callback.onCancel();
        }
        super.onBackPressed();
    }
}
