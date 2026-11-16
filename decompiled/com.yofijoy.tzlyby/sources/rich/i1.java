package rich;

import cz.msebera.android.httpclient.cookie.ClientCookie;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class i1 extends j1 {
    public b a;
    public a b;

    /* loaded from: classes2.dex */
    public static class a {
        public JSONObject a;
    }

    /* loaded from: classes2.dex */
    public static class b extends j1 {
        public String a;
        public String b;
        public String c;
        public String d;
        public String e;

        @Override // rich.j1
        public String a() {
            return this.d;
        }

        @Override // rich.j1
        public String a(String str) {
            return this.e + this.d + this.c + this.b + "@Fdiwmxy7CBDDQNUI";
        }

        @Override // rich.j1
        public JSONObject b() {
            return null;
        }
    }

    @Override // rich.j1
    public String a() {
        return this.a.d;
    }

    @Override // rich.j1
    public String a(String str) {
        return null;
    }

    @Override // rich.j1
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put("sign", this.a.a);
            jSONObject2.put("msgid", this.a.b);
            jSONObject2.put("systemtime", this.a.c);
            jSONObject2.put("appid", this.a.d);
            jSONObject2.put(ClientCookie.VERSION_ATTR, this.a.e);
            jSONObject.put("header", jSONObject2);
            jSONObject3.put("log", this.b.a);
            jSONObject.put("body", jSONObject3);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
