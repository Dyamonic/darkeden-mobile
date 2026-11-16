package rich;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;

/* loaded from: classes2.dex */
public class x2 extends Dialog {
    public WebView a;
    public String b;
    public String c;
    public LinearLayout d;

    public x2(Context context, int i, String str, String str2) {
        super(context, i);
        try {
            this.c = str;
            this.b = str2;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a() {
        if (this.a.canGoBack()) {
            this.a.goBack();
        } else {
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        WebView webView = this.a;
        if (webView != null) {
            webView.stopLoading();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        RelativeLayout a;
        if (this.d == null) {
            requestWindowFeature(1);
            getWindow().setFeatureDrawableAlpha(0, 0);
            o2 c = p0.b(getContext()).c();
            if (Build.VERSION.SDK_INT >= 21 && c.b != 0) {
                getWindow().addFlags(Integer.MIN_VALUE);
                getWindow().clearFlags(67108864);
                getWindow().setStatusBarColor(c.l);
                getWindow().setNavigationBarColor(c.b);
            }
            int i = (Build.VERSION.SDK_INT < 23 || !c.b()) ? 0 : 8192;
            if (c.c()) {
                i |= InputDeviceCompat.SOURCE_TOUCHSCREEN;
            }
            getWindow().getDecorView().setSystemUiVisibility(i);
            try {
                LinearLayout linearLayout = new LinearLayout(getContext());
                this.d = linearLayout;
                linearLayout.setOrientation(1);
                this.d.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                o2 c2 = p0.b(getContext()).c();
                int i2 = c2.f;
                String str = TextUtils.isEmpty(this.c) ? v1.d[c2.x0] : this.c;
                if (i2 != -1) {
                    a = d3.a(getContext(), getLayoutInflater().inflate(i2, (ViewGroup) this.d, false), 1118481, 0, str, null);
                    String str2 = c2.g;
                    if (!TextUtils.isEmpty(str2)) {
                        Context context = getContext();
                        int identifier = context.getResources().getIdentifier(str2, BreakpointSQLiteKey.ID, context.getPackageName());
                        if (identifier != 0) {
                            View findViewById = a.findViewById(identifier);
                            if (findViewById != null) {
                                findViewById.setOnClickListener(new v2(this));
                            }
                        } else {
                            throw new Resources.NotFoundException(str2);
                        }
                    }
                } else {
                    a = d3.a(getContext(), null, 1118481, 2236962, str, new w2(this));
                }
                this.d.addView(a);
            } catch (Exception e) {
                e.printStackTrace();
            }
            setContentView(this.d);
        }
        if (this.a == null) {
            o2 c3 = p0.b(getContext()).c();
            WebView webView = new WebView(getContext());
            this.a = webView;
            WebSettings settings = webView.getSettings();
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setSavePassword(false);
            settings.setDomStorageEnabled(c3.a);
            settings.setJavaScriptEnabled(true);
            this.d.addView(this.a, new LinearLayout.LayoutParams(-1, -1));
            if (Build.VERSION.SDK_INT < 17) {
                this.a.removeJavascriptInterface("searchBoxJavaBridge_");
                this.a.removeJavascriptInterface("accessibility");
                this.a.removeJavascriptInterface("accessibilityTraversal");
            }
            this.a.setWebViewClient(new WebViewClient());
            this.a.loadUrl(this.b);
        }
        super.show();
    }
}
