package rich;

/* loaded from: classes2.dex */
public class n1 extends o1 {
    public final h1 l;
    public boolean m;

    public n1(String str, h1 h1Var, String str2, String str3) {
        super(str, h1Var, str2, str3);
        this.m = false;
        this.l = h1Var;
    }

    public void a(l0 l0Var) {
        d1 d1Var = this.l.a;
        d1Var.x = l0Var.b("socketip", "");
        StringBuilder a = a.a("socket socketip = ");
        a.append(l0Var.b("socketip", ""));
        c2.b("GetPrePhonescripParam", a.toString());
        if (!this.m) {
            String[] strArr = null;
            if (!l0Var.b("isCloseIpv4", false)) {
                strArr = b0.a(true);
                String str = strArr[0];
                if (str == null) {
                    str = "";
                }
                d1Var.s = str;
            }
            if (!l0Var.b("isCloseIpv6", false)) {
                if (strArr == null) {
                    strArr = b0.a(true);
                }
                String str2 = strArr[1];
                if (str2 == null) {
                    str2 = "";
                }
                d1Var.t = str2;
            }
            this.m = true;
        }
        String b = d1Var.b(l0Var.b("appkey", ""));
        d1Var.p = b != null ? b : "";
        h1 h1Var = this.l;
        h1Var.a = d1Var;
        h1Var.f = true;
        this.c = h1Var.b().toString();
    }
}
