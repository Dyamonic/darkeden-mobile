package rich;

import cz.msebera.android.httpclient.cookie.ClientCookie;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class e1 extends j1 {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;

    @Override // rich.j1
    public String a() {
        return this.f;
    }

    @Override // rich.j1
    public String a(String str) {
        return this.a + this.e + this.f + "iYm0HAnkxQtpvN44";
    }

    @Override // rich.j1
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ClientCookie.VERSION_ATTR, this.a);
            jSONObject.put("apptype", this.b);
            jSONObject.put("phone_ID", this.c);
            jSONObject.put("certflag", this.d);
            jSONObject.put("sdkversion", this.e);
            jSONObject.put("appid", this.f);
            jSONObject.put("expandparams", "");
            jSONObject.put("sign", this.g);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
