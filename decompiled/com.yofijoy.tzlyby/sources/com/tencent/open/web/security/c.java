package com.tencent.open.web.security;

import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
import com.tencent.open.a;
import com.tencent.open.log.SLog;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
/* loaded from: classes2.dex */
public class c extends a.C0046a {
    private String d;

    public c(WebView webView, long j, String str, String str2) {
        super(webView, j, str);
        this.d = str2;
    }

    @Override // com.tencent.open.a.C0046a
    public void a(Object obj) {
        SLog.v("openSDK_LOG.SecureJsListener", "-->onComplete, result: " + obj);
    }

    @Override // com.tencent.open.a.C0046a
    public void a() {
        SLog.d("openSDK_LOG.SecureJsListener", "-->onNoMatchMethod...");
    }

    @Override // com.tencent.open.a.C0046a
    public void a(String str) {
        SLog.v("openSDK_LOG.SecureJsListener", "-->onCustomCallback, js: " + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", !com.tencent.open.b.c.a ? -4 : 0);
            jSONObject.put("sn", this.b);
            jSONObject.put("data", str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        b(jSONObject.toString());
    }

    private void b(String str) {
        WebView webView = this.a.get();
        if (webView != null) {
            StringBuffer stringBuffer = new StringBuffer(WebViewJsUtil.JS_URL_PREFIX);
            stringBuffer.append("if(!!");
            stringBuffer.append(this.d);
            stringBuffer.append("){");
            stringBuffer.append(this.d);
            stringBuffer.append("(");
            stringBuffer.append(str);
            stringBuffer.append(")}");
            String stringBuffer2 = stringBuffer.toString();
            SLog.v("openSDK_LOG.SecureJsListener", "-->callback, callback: " + stringBuffer2);
            webView.loadUrl(stringBuffer2);
        }
    }
}
