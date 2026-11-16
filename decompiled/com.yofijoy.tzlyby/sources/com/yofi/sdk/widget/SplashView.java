package com.yofi.sdk.widget;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.utils.ResUtils;
import cz.msebera.android.httpclient.client.config.CookieSpecs;

/* loaded from: classes2.dex */
public class SplashView extends RelativeLayout {
    private AssetManager assetManager;
    private Context context;
    private ImageView imageView;
    private boolean isLandScape;
    private RelativeLayout.LayoutParams layoutParams;
    private LinearLayout linearLayout;
    private View view;

    public SplashView(Context context, boolean isLandScape) {
        super(context);
        this.context = context;
        this.isLandScape = isLandScape;
        initView();
    }

    private void initView() {
        String str;
        Bitmap decodeStream;
        this.linearLayout = createLinear();
        this.layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (this.isLandScape) {
            this.view = LayoutInflater.from(getContext()).inflate(ResUtils.getId(this.context, "yofi_splash_layout_land", "layout"), (ViewGroup) null);
        } else {
            this.view = LayoutInflater.from(getContext()).inflate(ResUtils.getId(this.context, "yofi_splash_layout_port", "layout"), (ViewGroup) null);
        }
        this.imageView = (ImageView) this.view.findViewById(getResources().getIdentifier("iv_splash", BreakpointSQLiteKey.ID, this.context.getPackageName()));
        AssetManager assets = this.context.getAssets();
        this.assetManager = assets;
        try {
            if (this.isLandScape) {
                decodeStream = BitmapFactory.decodeStream(assets.open("splash_image/splash_land.png"));
            } else {
                decodeStream = BitmapFactory.decodeStream(assets.open("splash_image/splash.png"));
            }
            this.imageView.setImageBitmap(decodeStream);
        } catch (Exception unused) {
        }
        try {
            str = this.context.getResources().getString(this.context.getResources().getIdentifier(Constants.YOFI_SPLASH_TYPE, "string", this.context.getPackageName()));
        } catch (Exception unused2) {
            str = CookieSpecs.DEFAULT;
        }
        if (str.equals("centerlogo")) {
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.linearLayout.setBackgroundColor(Color.rgb(255, 255, 255));
        } else {
            this.imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            this.linearLayout.setBackgroundColor(Color.rgb(0, 0, 0));
        }
        this.linearLayout.addView(this.view, this.layoutParams);
        addView(this.linearLayout);
    }

    private LinearLayout createLinear() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        return linearLayout;
    }
}
