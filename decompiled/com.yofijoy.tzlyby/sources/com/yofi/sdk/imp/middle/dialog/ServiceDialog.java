package com.yofi.sdk.imp.middle.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes2.dex */
public class ServiceDialog extends Dialog {
    Callback callback;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onCancel();
    }

    public ServiceDialog(Context context) {
        super(context, context.getResources().getIdentifier("Sj_MyDialog", "style", context.getPackageName()));
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getContext().getResources().getIdentifier("dialog_service", "layout", getContext().getPackageName()));
        ((Button) findViewById(getContext().getResources().getIdentifier("btn_commit", BreakpointSQLiteKey.ID, getContext().getPackageName()))).setOnClickListener(new View.OnClickListener() { // from class: com.yofi.sdk.imp.middle.dialog.ServiceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ServiceDialog.this.callback != null) {
                    ServiceDialog.this.dismiss();
                    ServiceDialog.this.callback.onCancel();
                }
            }
        });
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    public void setDialogInterface(Callback callback) {
        this.callback = callback;
    }
}
