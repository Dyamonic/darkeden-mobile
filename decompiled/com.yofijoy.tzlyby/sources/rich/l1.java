package rich;

import android.text.TextUtils;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.client.utils.URLEncodedUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class l1 {
    public String a;
    public String b;

    public o1 a(o1 o1Var, s1 s1Var, l0 l0Var) {
        List list;
        Map map = s1Var.b;
        if (map == null) {
            map = new HashMap();
        }
        if (TextUtils.isEmpty(this.a) && (list = (List) map.get("pplocation")) != null && list.size() > 0) {
            this.a = (String) list.get(0);
        }
        l2.b(l0Var, String.valueOf(s1Var.a));
        List list2 = (List) map.get(HttpHeaders.LOCATION);
        if (list2 == null || list2.isEmpty()) {
            list2 = (List) map.get(HttpHeaders.LOCATION.toLowerCase());
        }
        if (list2 != null && list2.size() > 0) {
            String str = (String) list2.get(0);
            this.b = str;
            if (!TextUtils.isEmpty(str)) {
                String b = l0Var.b("operatortype", "0");
                l2.a(l0Var, "2".equals(b) ? "getUnicomMobile" : "3".equals(b) ? "getTelecomMobile" : "NONE");
            }
        }
        c2.b(HttpHeaders.LOCATION, this.b);
        o1 a = a(this.b, o1Var.f, "GET", new f1(o1Var.k.a()));
        a.g = o1Var.g;
        return a;
    }

    public o1 b(o1 o1Var, s1 s1Var, l0 l0Var) {
        String b = l0Var.b("operatortype", "0");
        l2.a(l0Var, "2".equals(b) ? "getNewUnicomPhoneNumberNotify" : "3".equals(b) ? "getNewTelecomPhoneNumberNotify" : "NONE");
        l2.b(l0Var, String.valueOf(s1Var.a));
        String a = o1Var.k.a();
        String str = s1Var.c;
        if (str == null) {
            str = "";
        }
        g1 g1Var = new g1(a, "1.0", str);
        g1Var.e = l0Var.b("userCapaid", "");
        g1Var.d = (l0Var.b("logintype", 0) == 3 || l0Var.b("isRisk", false)) ? "pre" : "authz";
        o1 a2 = a(this.a, o1Var.f, "POST", g1Var);
        a2.g = o1Var.g;
        this.a = null;
        return a2;
    }

    public final o1 a(String str, String str2, String str3, j1 j1Var) {
        o1 o1Var = new o1(str, j1Var, str3, str2);
        if (str3.equals("GET")) {
            o1Var.b.put("Content-Type", URLEncodedUtils.CONTENT_TYPE);
        }
        return o1Var;
    }
}
