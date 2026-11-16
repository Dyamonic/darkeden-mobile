package rich;

/* loaded from: classes2.dex */
public class a2 {
    public l0 a;

    public static void a(x1 x1Var, l0 l0Var) {
        if (x1Var == null || l0Var == null) {
            return;
        }
        x1Var.a = l0Var.b("appid", "");
        x1Var.q = j2.a;
        x1Var.j = l0Var.b("interfaceType", "");
        x1Var.k = l0Var.b("interfaceCode", "");
        x1Var.l = l0Var.b("interfaceElasped", "");
        x1Var.e = l0Var.b("timeOut", "");
        x1Var.b = l0Var.b("traceId", "");
        x1Var.t = l0Var.b("simCardNum", "");
        x1Var.o = l0Var.b("operatortype", "");
        x1Var.r = j2.b;
        x1Var.s = j2.c;
        x1Var.p = String.valueOf(l0Var.b("networktype", 0));
        x1Var.f = l0Var.b("starttime", "");
        x1Var.g = l0Var.b("endtime", "");
        x1Var.h = String.valueOf(l0Var.b("systemEndTime", 0L) - l0Var.b("systemStartTime", 0L));
        x1Var.u = l0Var.b("imsiState", "");
        x1Var.w = b0.b("AID", "");
        x1Var.x = l0Var.b("operatortype", "");
        x1Var.y = l0Var.b("scripType", "");
        x1Var.z = l0Var.b("networkTypeByAPI", "");
        StringBuilder a = a.a("traceId");
        a.append(l0Var.b("traceId", ""));
        c2.a("SendLog", a.toString());
    }
}
