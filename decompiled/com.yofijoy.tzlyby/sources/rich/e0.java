package rich;

import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
import rich.q;

/* loaded from: classes2.dex */
public class e0 extends f0 {
    public e0(String str, JSONObject jSONObject, q.b bVar, q.a aVar) {
        super(jSONObject == null ? 0 : 1, str, jSONObject == null ? null : jSONObject.toString(), bVar, aVar);
    }

    @Override // rich.o
    public q a(k kVar) {
        try {
            return new q(new JSONObject(new String(kVar.b, b0.a(kVar.c, "utf-8"))), b0.a(kVar));
        } catch (UnsupportedEncodingException e) {
            return new q(new m(e));
        } catch (JSONException e2) {
            return new q(new m(e2));
        }
    }
}
