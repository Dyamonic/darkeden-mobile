package com.taptap.sdk.moment.legacy.widget.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.taptap.sdk.kit.internal.extensions.UIExtKt;
import com.taptap.sdk.moment.legacy.utils.Utils;
import com.taptap.sdk.moment.legacy.widget.TTMGifView;

/* loaded from: classes.dex */
public class LoadingDialog extends Dialog {
    public LoadingDialog(Context context) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        setContentView(initView());
        setCanceledOnTouchOutside(false);
    }

    private View initView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(UIExtKt.toPx(24.0f), UIExtKt.toPx(24.0f)));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        TTMGifView tTMGifView = new TTMGifView(getContext());
        tTMGifView.setMovieResource(Utils.getDrawable(getContext(), "ttos_moment_loading"));
        linearLayout.addView(tTMGifView, layoutParams);
        Window window = getWindow();
        if (window != null) {
            requestWindowFeature(1);
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            layoutParams2.copyFrom(getWindow().getAttributes());
            layoutParams2.width = UIExtKt.toPx(24.0f);
            layoutParams2.height = UIExtKt.toPx(24.0f);
            layoutParams2.gravity = 17;
            window.setBackgroundDrawableResource(R.color.transparent);
            window.setAttributes(layoutParams2);
        }
        return linearLayout;
    }
}
