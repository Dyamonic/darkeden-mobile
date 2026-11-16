package rich;

import android.content.Context;
import android.text.TextUtils;
import rich.j0;

/* loaded from: classes2.dex */
public class k0 implements j0.b {
    public static k0 d;
    public h0 a;
    public h0 b;
    public j0 c;

    public k0(Context context) {
        String b = b0.b("sdk_config_version", "");
        if (TextUtils.isEmpty(b) || !"quick_login_android_5.9.7.1".equals(b)) {
            j0 a = j0.a(true);
            this.c = a;
            this.a = a.a();
            if (!TextUtils.isEmpty(b)) {
                c2.b("UmcConfigManager", "delete localConfig");
                this.c.b();
            }
        } else {
            j0 a2 = j0.a(false);
            this.c = a2;
            this.a = a2.a;
        }
        j0 j0Var = this.c;
        j0Var.d = this;
        this.b = j0Var.a();
    }

    public static k0 a(Context context) {
        if (d == null) {
            synchronized (k0.class) {
                if (d == null) {
                    d = new k0(context);
                }
            }
        }
        return d;
    }

    public h0 a() {
        try {
            return this.a.clone();
        } catch (CloneNotSupportedException unused) {
            return this.b;
        }
    }
}
