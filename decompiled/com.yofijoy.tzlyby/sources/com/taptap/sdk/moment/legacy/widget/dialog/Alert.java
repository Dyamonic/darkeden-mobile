package com.taptap.sdk.moment.legacy.widget.dialog;

import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.R;
import com.taptap.sdk.moment.legacy.utils.ScreenHelper;
import com.taptap.sdk.moment.legacy.utils.Utils;

/* loaded from: classes.dex */
public class Alert extends DialogFragment implements View.OnClickListener {
    public static final String TAG = "Alert";
    private ClickStub mStub;

    /* loaded from: classes.dex */
    public static abstract class ClickStub implements OnClickListener {
        @Override // com.taptap.sdk.moment.legacy.widget.dialog.Alert.OnClickListener
        public void onNegative() {
        }

        @Override // com.taptap.sdk.moment.legacy.widget.dialog.Alert.OnClickListener
        public void onPositive() {
        }
    }

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void onNegative();

        void onPositive();
    }

    public static Alert newInstance(String str, String str2, String str3, String str4, boolean z, ClickStub clickStub) {
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putString("content", str2);
        bundle.putString("positive", str3);
        bundle.putString("negative", str4);
        bundle.putBoolean("cancelable", z);
        Alert alert = new Alert();
        alert.setArguments(bundle);
        alert.setClickStub(clickStub);
        return alert;
    }

    public void setClickStub(ClickStub clickStub) {
        this.mStub = clickStub;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, Utils.getStyle(getActivity(), "com_taptap_sdk_moment_alert_dialog_style"));
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(Utils.getLayoutId(getActivity(), "ttos_moment_dialog_alert"), viewGroup, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(Utils.getViewId(getActivity(), "tv_alert_content"));
        TextView textView2 = (TextView) view.findViewById(Utils.getViewId(getActivity(), "tv_negative"));
        TextView textView3 = (TextView) view.findViewById(Utils.getViewId(getActivity(), "tv_positive"));
        TextView textView4 = (TextView) view.findViewById(Utils.getViewId(getActivity(), "tv_alert_title"));
        view.findViewById(R.id.iv_alert_close).setOnClickListener(this);
        textView3.setOnClickListener(this);
        textView2.setOnClickListener(this);
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        textView4.setText(arguments.getString("title"));
        textView.setText(arguments.getString("content"));
        if (!TextUtils.isEmpty(arguments.getString("positive"))) {
            textView3.setText(arguments.getString("positive"));
        } else {
            textView3.setText(TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_confirm));
        }
        if (!TextUtils.isEmpty(arguments.getString("negative"))) {
            textView2.setText(arguments.getString("negative"));
        } else {
            textView2.setVisibility(8);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView3.getLayoutParams();
            layoutParams.bottomMargin = Utils.dip2px(getActivity(), 35.0f);
            textView3.setLayoutParams(layoutParams);
        }
        final boolean z = arguments.getBoolean("cancelable", true);
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        getDialog().setCancelable(z);
        getDialog().setCanceledOnTouchOutside(z);
        getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.Alert.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4) {
                    return !z;
                }
                return false;
            }
        });
        final Window window = getDialog().getWindow();
        ScreenHelper.fullScreenImmersive(window);
        window.addFlags(8);
        getDialog().setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.Alert.2
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                window.clearFlags(8);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (getActivity() == null) {
            return;
        }
        if (this.mStub != null) {
            if (view.getId() == Utils.getViewId(getActivity(), "tv_negative")) {
                this.mStub.onNegative();
            } else if (view.getId() == Utils.getViewId(getActivity(), "tv_positive")) {
                this.mStub.onPositive();
            } else if (view.getId() == Utils.getViewId(getActivity(), "iv_alert_close")) {
                this.mStub.onNegative();
            }
        }
        dismiss();
    }
}
