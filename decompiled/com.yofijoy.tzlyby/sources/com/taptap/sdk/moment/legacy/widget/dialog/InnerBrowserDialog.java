package com.taptap.sdk.moment.legacy.widget.dialog;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.taptap.sdk.kit.internal.utils.localize.TapLocalizeUtil;
import com.taptap.sdk.moment.legacy.utils.ScreenHelper;
import cz.msebera.android.httpclient.HttpHost;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class InnerBrowserDialog extends DialogFragment {
    private ImageView back;
    private ImageView close;
    private LinearLayout loadFailedLayout;
    private LinearLayout root;
    private FrameLayout titleBar;
    private WebView webView;
    private List<String> allowProtocols = new LinkedList();
    private List<Pattern> allowUrls = new LinkedList();
    private Uri failedUri = null;

    public void setAllowProtocols(List<String> list) {
        if (list == null) {
            return;
        }
        this.allowProtocols = list;
    }

    public void setAllowUrls(List<Pattern> list) {
        if (list == null) {
            return;
        }
        this.allowUrls = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkUrl(String str) {
        Iterator<String> it = this.allowProtocols.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (str.startsWith(it.next())) {
                Iterator<Pattern> it2 = this.allowUrls.iterator();
                while (it2.hasNext()) {
                    if (it2.next().matcher(str).matches()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void setFullScreen() {
        Window window;
        if (getDialog() == null || (window = getDialog().getWindow()) == null) {
            return;
        }
        window.setFlags(1024, 1024);
        window.getDecorView().setPadding(0, 0, 0, 0);
        window.setBackgroundDrawableResource(R.color.transparent);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            attributes2.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes2);
            window.getDecorView().setSystemUiVisibility(1280);
        }
        window.setFlags(16777216, 16777216);
        window.setAttributes(attributes);
        ScreenHelper.fullScreenImmersive(window);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, com.taptap.sdk.moment.R.style.BottomSheetStyle);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new Dialog(getActivity(), getTheme()) { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.1
            @Override // android.app.Dialog
            public void onBackPressed() {
                super.onBackPressed();
                if (InnerBrowserDialog.this.webView.canGoBack()) {
                    InnerBrowserDialog.this.webView.goBack();
                } else {
                    dismiss();
                }
            }
        };
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.taptap.sdk.moment.R.layout.ttos_moment_fragment_browser, viewGroup, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setFullScreen();
        this.root = (LinearLayout) view.findViewById(com.taptap.sdk.moment.R.id.root);
        WebView webView = (WebView) view.findViewById(com.taptap.sdk.moment.R.id.webView);
        this.webView = webView;
        WebSettings settings = webView.getSettings();
        settings.setDomStorageEnabled(true);
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.webView, true);
            settings.setMixedContentMode(0);
        }
        Method method = null;
        try {
            method = settings.getClass().getMethod("setAllowUniversalAccessFromFileURLs", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        if (method != null) {
            try {
                method.invoke(settings, true);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
        settings.setUseWideViewPort(true);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowFileAccess(false);
        settings.setCacheMode(-1);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                if (InnerBrowserDialog.this.checkUrl(str)) {
                    if (str.startsWith("http://") || str.startsWith("https://")) {
                        return super.shouldOverrideUrlLoading(webView2, str);
                    }
                    try {
                        InnerBrowserDialog.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        return true;
                    } catch (Throwable th) {
                        Log.d("InnerBrowserDialog", "shouldOverrideUrlLoading: " + str, th);
                        return true;
                    }
                }
                new SecurityJumpAlert().show(InnerBrowserDialog.this.getFragmentManager(), Uri.parse(str));
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
                if (InnerBrowserDialog.this.failedUri == null) {
                    InnerBrowserDialog.this.loadFailedLayout.setVisibility(4);
                } else {
                    InnerBrowserDialog.this.loadFailedLayout.setVisibility(0);
                }
                if (InnerBrowserDialog.this.webView.canGoBack()) {
                    InnerBrowserDialog.this.back.setVisibility(0);
                } else {
                    InnerBrowserDialog.this.back.setVisibility(4);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
                if (!webResourceRequest.isForMainFrame()) {
                    InnerBrowserDialog.this.failedUri = null;
                    return;
                }
                InnerBrowserDialog.this.failedUri = webResourceRequest.getUrl();
                if (InnerBrowserDialog.this.failedUri.getScheme().equals(HttpHost.DEFAULT_SCHEME_NAME) || InnerBrowserDialog.this.failedUri.getScheme().equals("https")) {
                    return;
                }
                InnerBrowserDialog.this.failedUri = null;
            }
        });
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.3
            private View mCustomView;
            private WebChromeClient.CustomViewCallback mCustomViewCallback;

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view2, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view2, customViewCallback);
                if (this.mCustomView != null) {
                    customViewCallback.onCustomViewHidden();
                    return;
                }
                this.mCustomView = view2;
                InnerBrowserDialog.this.root.addView(this.mCustomView);
                InnerBrowserDialog.this.webView.setVisibility(8);
                InnerBrowserDialog.this.titleBar.setVisibility(8);
                this.mCustomView.setVisibility(0);
                this.mCustomView.bringToFront();
                this.mCustomViewCallback = customViewCallback;
            }

            @Override // android.webkit.WebChromeClient
            public void onHideCustomView() {
                if (this.mCustomView == null) {
                    return;
                }
                InnerBrowserDialog.this.root.removeView(this.mCustomView);
                InnerBrowserDialog.this.webView.setVisibility(0);
                InnerBrowserDialog.this.titleBar.setVisibility(0);
                this.mCustomViewCallback.onCustomViewHidden();
                this.mCustomView = null;
                super.onHideCustomView();
            }
        });
        this.webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.4
            private float endY;
            private float startY;
            private ValueAnimator animation = null;
            private int height = 0;
            private final ValueAnimator.AnimatorUpdateListener updateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.4.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    ViewGroup.LayoutParams layoutParams = InnerBrowserDialog.this.titleBar.getLayoutParams();
                    layoutParams.height = intValue;
                    Log.d("onTouch", "onAnimationUpdate:" + intValue);
                    InnerBrowserDialog.this.titleBar.setLayoutParams(layoutParams);
                }
            };
            private final Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.4.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AnonymousClass4.this.animation = null;
                    ViewGroup.LayoutParams layoutParams = InnerBrowserDialog.this.titleBar.getLayoutParams();
                    if (layoutParams.height > 0) {
                        layoutParams.height = -2;
                    }
                    InnerBrowserDialog.this.titleBar.setLayoutParams(layoutParams);
                }
            };

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (this.animation != null) {
                    return false;
                }
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.startY = motionEvent.getY();
                } else if (action == 1) {
                    this.endY = motionEvent.getY();
                    float height = InnerBrowserDialog.this.root.getHeight() / 10.0f;
                    if (this.endY - this.startY <= height || InnerBrowserDialog.this.titleBar.getHeight() > 0) {
                        if (this.startY - this.endY > height && InnerBrowserDialog.this.titleBar.getHeight() > 0) {
                            int height2 = InnerBrowserDialog.this.titleBar.getHeight();
                            this.height = height2;
                            ValueAnimator duration = ValueAnimator.ofInt(height2, 0).setDuration(200);
                            this.animation = duration;
                            duration.addListener(this.animatorListener);
                            this.animation.addUpdateListener(this.updateListener);
                            this.animation.start();
                        }
                    } else {
                        ValueAnimator duration2 = ValueAnimator.ofInt(0, this.height).setDuration(200);
                        this.animation = duration2;
                        duration2.addListener(this.animatorListener);
                        this.animation.addUpdateListener(this.updateListener);
                        this.animation.start();
                    }
                    this.startY = 0.0f;
                    this.endY = 0.0f;
                }
                return false;
            }
        });
        ImageView imageView = (ImageView) view.findViewById(com.taptap.sdk.moment.R.id.back);
        this.back = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (InnerBrowserDialog.this.webView.canGoBack()) {
                    InnerBrowserDialog.this.webView.goBack();
                }
            }
        });
        this.back.setVisibility(4);
        ImageView imageView2 = (ImageView) view.findViewById(com.taptap.sdk.moment.R.id.close);
        this.close = imageView2;
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                InnerBrowserDialog.this.dismiss();
            }
        });
        this.titleBar = (FrameLayout) view.findViewById(com.taptap.sdk.moment.R.id.titleBar);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(com.taptap.sdk.moment.R.id.loadFailedLayout);
        this.loadFailedLayout = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (InnerBrowserDialog.this.webView.getUrl() == null || InnerBrowserDialog.this.failedUri == null) {
                    InnerBrowserDialog.this.webView.reload();
                    return;
                }
                String uri = InnerBrowserDialog.this.failedUri.toString();
                InnerBrowserDialog.this.failedUri = null;
                InnerBrowserDialog.this.webView.loadUrl(uri);
            }
        });
        ((TextView) view.findViewById(com.taptap.sdk.moment.R.id.reloadMessage)).setText(TapLocalizeUtil.getLocalizedString(com.taptap.sdk.moment.R.string.moment_browser_load_failed_message));
        getDialog().getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.8
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                DisplayCutout displayCutout;
                if (Build.VERSION.SDK_INT >= 28 && (displayCutout = windowInsets.getDisplayCutout()) != null) {
                    InnerBrowserDialog.this.titleBar.setPadding(0, displayCutout.getSafeInsetTop(), 0, 0);
                }
                return view2.onApplyWindowInsets(windowInsets);
            }
        });
        getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.9
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4 || keyEvent.getAction() != 1) {
                    return false;
                }
                if (InnerBrowserDialog.this.webView.canGoBack()) {
                    InnerBrowserDialog.this.webView.goBack();
                } else {
                    dialogInterface.dismiss();
                }
                return true;
            }
        });
        view.post(new Runnable() { // from class: com.taptap.sdk.moment.legacy.widget.dialog.InnerBrowserDialog.10
            @Override // java.lang.Runnable
            public void run() {
                InnerBrowserDialog.this.webView.loadUrl(InnerBrowserDialog.this.getArguments().getParcelable("uri").toString());
            }
        });
    }

    public void loadUrl(Activity activity, Uri uri) {
        if (uri == null) {
            return;
        }
        String uri2 = uri.toString();
        if (checkUrl(uri2)) {
            if (!uri2.startsWith("http://") && !uri2.startsWith("https://")) {
                try {
                    activity.startActivity(new Intent("android.intent.action.VIEW", uri));
                    return;
                } catch (Throwable th) {
                    Log.d("InnerBrowserDialog", "loadUrl: " + uri2, th);
                    return;
                }
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("uri", uri);
            setArguments(bundle);
            if (getDialog() == null || !getDialog().isShowing()) {
                show(activity.getFragmentManager(), "TapMomentInnerBrowserDialog");
                return;
            }
            return;
        }
        new SecurityJumpAlert().show(activity.getFragmentManager(), uri);
    }
}
