package rich;

import android.text.TextUtils;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class x1 extends j1 {
    public JSONArray n;
    public String w;
    public String x;
    public String y;
    public String z;
    public String a = null;
    public String b = null;
    public String c = null;
    public String d = null;
    public String e = null;
    public String f = null;
    public String g = null;
    public String h = null;
    public String i = null;
    public String j = "";
    public String k = null;
    public String l = null;
    public String m = null;
    public String o = null;
    public String p = null;
    public String q = null;
    public String r = null;
    public String s = null;
    public String t = null;
    public String u = null;
    public String v = null;
    public CopyOnWriteArrayList A = new CopyOnWriteArrayList();

    @Override // rich.j1
    public String a() {
        return null;
    }

    @Override // rich.j1
    public String a(String str) {
        return null;
    }

    public void a(JSONArray jSONArray) {
        this.n = jSONArray;
    }

    @Override // rich.j1
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", this.a);
            jSONObject.put("traceId", this.b);
            jSONObject.put("appName", this.c);
            jSONObject.put("appVersion", this.d);
            jSONObject.put("sdkVersion", "quick_login_android_5.9.7.1");
            jSONObject.put("clientType", "android");
            jSONObject.put("timeOut", this.e);
            jSONObject.put("requestTime", this.f);
            jSONObject.put("responseTime", this.g);
            jSONObject.put("elapsedTime", this.h);
            jSONObject.put("requestType", this.i);
            jSONObject.put("interfaceType", this.j);
            jSONObject.put("interfaceCode", this.k);
            jSONObject.put("interfaceElasped", this.l);
            jSONObject.put("loginType", this.m);
            jSONObject.put("exceptionStackTrace", this.n);
            jSONObject.put("operatorType", this.o);
            jSONObject.put("networkType", this.p);
            jSONObject.put("brand", this.q);
            jSONObject.put("reqDevice", this.r);
            jSONObject.put("reqSystem", this.s);
            jSONObject.put("simCardNum", this.t);
            jSONObject.put("imsiState", this.u);
            jSONObject.put("resultCode", this.v);
            jSONObject.put("AID", this.w);
            jSONObject.put("sysOperType", this.x);
            jSONObject.put("scripType", this.y);
            if (!TextUtils.isEmpty(this.z)) {
                jSONObject.put("networkTypeByAPI", this.z);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
