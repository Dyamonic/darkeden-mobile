package rich;

import android.util.Base64;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class h1 extends j1 {
    public d1 a;
    public byte[] b;
    public String c;
    public byte[] d;
    public String e;
    public boolean f = false;

    @Override // rich.j1
    public String a() {
        return this.a.c;
    }

    @Override // rich.j1
    public String a(String str) {
        return null;
    }

    @Override // rich.j1
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        if (this.f) {
            try {
                jSONObject.put("encrypted", this.c);
                jSONObject.put("encryptedIV", Base64.encodeToString(this.d, 0));
                jSONObject.put("reqdata", b0.a(this.b, this.a.toString(), this.d));
                jSONObject.put("securityreinforce", this.e);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject;
    }
}
