package com.taptap.sdk.moment.legacy.widget.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.R;
import com.taptap.sdk.moment.legacy.utils.ScreenHelper;
import com.taptap.sdk.moment.legacy.utils.Utils;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class BottomSheet extends DialogFragment {
    public static final String TAG = "BottomSheet";
    private static WeakReference<BottomSheet> sheetWeakReference;
    private LinearLayout mLinearLayout;
    private OnItemClickListener mListener;
    private TextView mTvCancel;

    /* loaded from: classes.dex */
    public interface OnItemClickListener {
        void onClick(int i, String str);
    }

    public static BottomSheet newInstance(OnItemClickListener onItemClickListener, String... strArr) {
        Bundle bundle = new Bundle();
        bundle.putStringArray(ActionUtils.PAYMENT_AMOUNT, strArr);
        BottomSheet bottomSheet = new BottomSheet();
        bottomSheet.setArguments(bundle);
        bottomSheet.setOnItemClickListener(onItemClickListener);
        sheetWeakReference = new WeakReference<>(bottomSheet);
        return bottomSheet;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mListener = onItemClickListener;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, Utils.getStyle(getActivity(), "BottomSheetStyle"));
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Activity activity = getActivity();
        Objects.requireNonNull(activity);
        return layoutInflater.inflate(Utils.getLayoutId(activity, "ttos_moment_dialog_bottom_sheet"), viewGroup, false);
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        changeContainerParam(configuration.orientation);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments == null) {
            dismiss();
        } else {
            if (getActivity() == null) {
                return;
            }
            initView(view, arguments);
            settingDialog();
        }
    }

    private void settingDialog() {
        final Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.addFlags(8);
        getDialog().setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                window.clearFlags(8);
            }
        });
        ScreenHelper.fullScreenImmersive(window);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
    }

    private void initView(View view, Bundle bundle) {
        this.mLinearLayout = (LinearLayout) view.findViewById(Utils.getViewId(getActivity(), "ll_container"));
        final List asList = Arrays.asList(bundle.getStringArray(ActionUtils.PAYMENT_AMOUNT));
        for (final int i = 0; i < asList.size(); i++) {
            TextView constructorTextView = constructorTextView((String) asList.get(i), new LinearLayout.LayoutParams(-1, -2));
            constructorTextView.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    BottomSheet.this.dismiss();
                    if (BottomSheet.this.mListener != null) {
                        OnItemClickListener onItemClickListener = BottomSheet.this.mListener;
                        int i2 = i;
                        onItemClickListener.onClick(i2, (String) asList.get(i2));
                    }
                }
            });
            this.mLinearLayout.addView(constructorTextView);
        }
        TextView textView = (TextView) view.findViewById(Utils.getViewId(getActivity(), "tv_bottom_cancel"));
        this.mTvCancel = textView;
        textView.setText(TapLocalizeUtil.getLocalizedString(R.string.moment_dialog_cancel));
        this.mTvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BottomSheet.this.dismiss();
            }
        });
        view.findViewById(Utils.getViewId(getActivity(), "ll_root")).setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.BottomSheet.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BottomSheet.this.dismiss();
            }
        });
        if (getResources().getConfiguration().orientation == 2) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mLinearLayout.getLayoutParams();
            layoutParams.width = Utils.dip2px(getActivity(), 355.0f);
            layoutParams.gravity = 1;
            this.mLinearLayout.setLayoutParams(layoutParams);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mTvCancel.getLayoutParams();
            layoutParams2.width = Utils.dip2px(getActivity(), 355.0f);
            this.mTvCancel.setLayoutParams(layoutParams2);
            layoutParams2.gravity = 1;
        }
    }

    private void changeContainerParam(int i) {
        if (i == 2) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mLinearLayout.getLayoutParams();
            layoutParams.width = Utils.dip2px(getActivity(), 355.0f);
            layoutParams.gravity = 1;
            this.mLinearLayout.setLayoutParams(layoutParams);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mTvCancel.getLayoutParams();
            layoutParams2.width = Utils.dip2px(getActivity(), 355.0f);
            this.mTvCancel.setLayoutParams(layoutParams2);
            layoutParams2.gravity = 1;
        }
    }

    private TextView constructorTextView(String str, LinearLayout.LayoutParams layoutParams) {
        TextView textView = new TextView(getActivity());
        textView.setTextColor(Color.parseColor("#333333"));
        textView.setTextSize(0, Utils.dip2px(getActivity(), 15.0f));
        textView.setGravity(8388627);
        Drawable drawable = getResources().getDrawable(Utils.getDrawable(getActivity(), "ttos_moment_download"));
        drawable.setBounds(0, 0, Utils.dip2px(getActivity(), 20.0f), Utils.dip2px(getActivity(), 20.0f));
        textView.setCompoundDrawablePadding(Utils.dip2px(getActivity(), 15.0f));
        textView.setCompoundDrawables(drawable, null, null, null);
        textView.setPadding(Utils.dip2px(getActivity(), 20.0f), 0, 0, 0);
        layoutParams.height = Utils.dip2px(getActivity(), 44.0f);
        textView.setLayoutParams(layoutParams);
        textView.setText(str);
        return textView;
    }

    public static void dismissWhenShow() {
        BottomSheet bottomSheet;
        WeakReference<BottomSheet> weakReference = sheetWeakReference;
        if (weakReference == null || (bottomSheet = weakReference.get()) == null || bottomSheet.getDialog() == null || !bottomSheet.getDialog().isShowing()) {
            return;
        }
        bottomSheet.dismiss();
    }
}
