package com.taptap.sdk.moment.legacy.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.R;
import com.taptap.sdk.moment.legacy.utils.Utils;
import com.taptap.sdk.moment.legacy.widget.TTMGifView;

/* loaded from: classes.dex */
public class NetworkErrorDialog extends Dialog {
    private boolean isNotch;
    private RefreshCallback refreshCallback;

    /* loaded from: classes.dex */
    public interface RefreshCallback {
        void onClose();

        void onRefresh();
    }

    public NetworkErrorDialog(Context context, boolean z, RefreshCallback refreshCallback) {
        super(context, Utils.getStyle(context, "dialog"));
        this.isNotch = false;
        this.refreshCallback = refreshCallback;
        this.isNotch = z;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(initView());
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        Window window = getWindow();
        if (window != null) {
            window.setFlags(1024, 1024);
            window.setLayout(-1, -1);
            window.setBackgroundDrawableResource(Utils.getDrawable(getContext(), "error_background"));
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
                window.getDecorView().setSystemUiVisibility(1280);
            }
        }
    }

    private View initView() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        if (getContext().getResources().getConfiguration().orientation == 2) {
            relativeLayout.setBackgroundResource(Utils.getDrawable(getContext(), "error_background"));
        }
        ImageView imageView = new ImageView(getContext());
        imageView.setBackgroundResource(Utils.getDrawable(getContext(), "ttos_moment_close"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Utils.dip2px(getContext(), 60.0f), Utils.dip2px(getContext(), 60.0f));
        layoutParams.addRule(11);
        if (getContext().getResources().getConfiguration().orientation == 2) {
            layoutParams.setMargins(0, 0, Utils.dip2px(getContext(), 30.0f), 0);
        } else if (this.isNotch) {
            layoutParams.setMargins(0, Utils.dip2px(getContext(), 30.0f), 0, 0);
        }
        imageView.setLayoutParams(layoutParams);
        relativeLayout.addView(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NetworkErrorDialog.this.refreshCallback != null) {
                    NetworkErrorDialog.this.refreshCallback.onClose();
                }
                NetworkErrorDialog.this.dismiss();
            }
        });
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(Utils.dip2px(getContext(), 210.0f), Utils.dip2px(getContext(), 150.0f));
        layoutParams2.addRule(13);
        linearLayout.setLayoutParams(layoutParams2);
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(Utils.dip2px(getContext(), 140.0f), Utils.dip2px(getContext(), 120.0f)));
        imageView2.setImageResource(Utils.getDrawable(getContext(), "network_error"));
        linearLayout.addView(imageView2);
        TextView textView = new TextView(getContext());
        textView.setTextSize(16.0f);
        textView.setText(TapLocalizeUtil.getLocalizedString(R.string.moment_load_fail_hint));
        textView.setTextColor(-1);
        Drawable drawable = getContext().getResources().getDrawable(Utils.getDrawable(getContext(), "ic_refresh"));
        textView.setCompoundDrawablePadding(Utils.dip2px(getContext(), 5.0f));
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(textView.getLayoutParams());
        marginLayoutParams.topMargin = Utils.dip2px(getContext(), 5.0f);
        textView.setLayoutParams(marginLayoutParams);
        linearLayout.addView(textView);
        TTMGifView tTMGifView = new TTMGifView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(Utils.dip2px(getContext(), 24.0f), Utils.dip2px(getContext(), 24.0f));
        layoutParams3.addRule(13);
        tTMGifView.setMovieResource(Utils.getDrawable(getContext(), "ttos_moment_loading"));
        tTMGifView.setLayoutParams(layoutParams3);
        tTMGifView.setVisibility(4);
        relativeLayout.addView(tTMGifView);
        relativeLayout.addView(linearLayout);
        textView.setOnClickListener(new AnonymousClass2(textView, linearLayout, tTMGifView));
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements View.OnClickListener {
        final /* synthetic */ LinearLayout val$container;
        final /* synthetic */ TextView val$tip;
        final /* synthetic */ TTMGifView val$ttmGifView;

        AnonymousClass2(TextView textView, LinearLayout linearLayout, TTMGifView tTMGifView) {
            this.val$tip = textView;
            this.val$container = linearLayout;
            this.val$ttmGifView = tTMGifView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.val$tip.postDelayed(new Runnable() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog.2.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass2.this.val$container.setVisibility(4);
                    AnonymousClass2.this.val$ttmGifView.setVisibility(0);
                    if (Utils.getNetworkState(NetworkErrorDialog.this.getContext()) > 0) {
                        if (NetworkErrorDialog.this.refreshCallback != null) {
                            NetworkErrorDialog.this.refreshCallback.onRefresh();
                        }
                        NetworkErrorDialog.this.dismiss();
                        return;
                    }
                    AnonymousClass2.this.val$tip.postDelayed(new Runnable() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.NetworkErrorDialog.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass2.this.val$container.setVisibility(0);
                            AnonymousClass2.this.val$ttmGifView.setVisibility(4);
                        }
                    }, 5000L);
                }
            }, 500L);
        }
    }
}
