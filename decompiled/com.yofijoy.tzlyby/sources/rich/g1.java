package rich;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class g1 extends j1 {
    public final String a;
    public final String b;
    public final String c;
    public String d = "authz";
    public String e;

    public g1(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    @Override // rich.j1
    public String a() {
        return this.a;
    }

    @Override // rich.j1
    public String a(String str) {
        return null;
    }

    @Override // rich.j1
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ver", this.b);
            jSONObject.put("data", this.c);
            jSONObject.put("userCapaid", this.e);
            jSONObject.put("funcType", this.d);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
