package com.taptap.sdk.moment.legacy.widget.dialog;

import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.R;
import com.taptap.sdk.moment.legacy.widget.dialog.AbstractAlertDialog;

/* loaded from: classes.dex */
public class SecurityJumpAlert extends AbstractAlertDialog {
    private ImageView mCloseView;
    private View mContentView;
    private TextView mMessageView;
    private TextView mTitleView;

    @Override // com.taptap.sdk.moment.legacy.widget.dialog.AbstractAlertDialog
    public View getContentView() {
        return this.mContentView;
    }

    @Override // com.taptap.sdk.moment.legacy.widget.dialog.AbstractAlertDialog, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        View inflate = layoutInflater.inflate(R.layout.ttos_moment_security_jump_alert_content, (ViewGroup) onCreateView, false);
        this.mContentView = inflate;
        this.mCloseView = (ImageView) inflate.findViewById(R.id.iv_alert_close);
        this.mTitleView = (TextView) this.mContentView.findViewById(R.id.tv_alert_title);
        this.mMessageView = (TextView) this.mContentView.findViewById(R.id.tv_alert_content);
        this.mCloseView.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.SecurityJumpAlert.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SecurityJumpAlert.this.dismiss();
            }
        });
        this.mTitleView.setText(TapLocalizeUtil.getLocalizedString(R.string.moment_security_jump_alert_title));
        String localizedString = TapLocalizeUtil.getLocalizedString(R.string.moment_security_jump_alert_message);
        String obj = getArguments().getParcelable("uri").toString();
        try {
            obj = obj.substring(0, 42) + "...";
        } catch (Throwable unused) {
        }
        this.mMessageView.setText(String.format(localizedString, obj));
        return onCreateView;
    }

    @Override // com.taptap.sdk.moment.legacy.widget.dialog.AbstractAlertDialog
    public AbstractAlertDialog.Event leftEvent() {
        return new AbstractAlertDialog.Event(TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_cancel), new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.SecurityJumpAlert.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SecurityJumpAlert.this.dismiss();
            }
        });
    }

    @Override // com.taptap.sdk.moment.legacy.widget.dialog.AbstractAlertDialog
    public AbstractAlertDialog.Event rightEvent() {
        return new AbstractAlertDialog.Event(TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_confirm), new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.SecurityJumpAlert.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    SecurityJumpAlert.this.mActivity.startActivity(new Intent("android.intent.action.VIEW", (Uri) SecurityJumpAlert.this.getArguments().getParcelable("uri")));
                } catch (Throwable unused) {
                }
                SecurityJumpAlert.this.dismiss();
            }
        });
    }

    @Override // com.taptap.sdk.moment.legacy.widget.dialog.AbstractAlertDialog
    public int[] getLayoutParams() {
        return new int[]{-1, -1};
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (getDialog() != null || getDialog().isShowing()) {
            dismiss();
            new SecurityJumpAlert().show(getFragmentManager(), (Uri) getArguments().getParcelable("uri"));
        }
    }

    public void show(FragmentManager fragmentManager, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        setArguments(bundle);
        if (getDialog() == null || !getDialog().isShowing()) {
            super.show(fragmentManager, "SecurityJumpAlert");
        }
    }
}
