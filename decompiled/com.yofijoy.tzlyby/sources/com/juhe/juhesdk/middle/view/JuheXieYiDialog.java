package com.juhe.juhesdk.middle.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes.dex */
public class JuheXieYiDialog extends Dialog {
    private JuheXieYiCallback mCallBack;
    private String mUrl;
    private WebView mWebView;

    public JuheXieYiDialog(Context context, String url, JuheXieYiCallback callback) {
        super(context, context.getResources().getIdentifier("JuheXieYi_Dialog", "style", context.getPackageName()));
        this.mCallBack = callback;
        this.mUrl = url;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setCancelable(false);
        setContentView(getContext().getResources().getIdentifier("juhexieyi", "layout", getContext().getPackageName()));
        findViewById(getContext().getResources().getIdentifier("tv_agree", BreakpointSQLiteKey.ID, getContext().getPackageName())).setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.middle.view.JuheXieYiDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                JuheXieYiDialog.this.mCallBack.onSuccess("");
                JuheXieYiDialog.this.dismiss();
            }
        });
        findViewById(getContext().getResources().getIdentifier("tv_noagree", BreakpointSQLiteKey.ID, getContext().getPackageName())).setOnClickListener(new View.OnClickListener() { // from class: com.juhe.juhesdk.middle.view.JuheXieYiDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                JuheXieYiDialog.this.mCallBack.onFailure("");
                JuheXieYiDialog.this.dismiss();
            }
        });
        WebView webView = (WebView) findViewById(getContext().getResources().getIdentifier("juhewv", BreakpointSQLiteKey.ID, getContext().getPackageName()));
        this.mWebView = webView;
        WebSettings settings = webView.getSettings();
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccess(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setCacheMode(-1);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setDefaultTextEncodingName("utf-8");
        this.mWebView.setBackgroundColor(-1);
        this.mWebView.loadUrl(this.mUrl);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (i > i2) {
            float f = i2;
            ((ViewGroup.LayoutParams) attributes).width = (int) (1.1f * f);
            ((ViewGroup.LayoutParams) attributes).height = (int) (f * 0.9f);
        } else {
            ((ViewGroup.LayoutParams) attributes).width = (int) (i * 0.8f);
            ((ViewGroup.LayoutParams) attributes).height = (int) (i2 * 0.6f);
        }
        getWindow().setAttributes(attributes);
    }
}
