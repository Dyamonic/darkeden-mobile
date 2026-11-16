package rich;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public class i0 implements p1 {
    public final /* synthetic */ j0 a;

    public i0(j0 j0Var) {
        this.a = j0Var;
    }

    @Override // rich.p1
    public void a(String str, String str2, JSONObject jSONObject) {
        try {
            if ("103000".equals(str)) {
                this.a.a(jSONObject);
                b0.m1665a("sdk_config_version", "quick_login_android_5.9.7.1");
                j0 j0Var = this.a;
                j0Var.a = j0Var.c();
                if (this.a.d != null) {
                    ((k0) this.a.d).a = this.a.a;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.a.c = false;
    }
}
