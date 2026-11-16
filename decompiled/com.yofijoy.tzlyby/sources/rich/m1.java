package rich;

import android.os.SystemClock;
import android.util.Base64;
import com.tencent.open.SocialConstants;
import java.net.URLEncoder;
import javax.crypto.Cipher;
import org.json.JSONObject;
import rich.i1;

/* loaded from: classes2.dex */
public class m1 {
    public static m1 a;

    public static m1 a() {
        if (a == null) {
            synchronized (m1.class) {
                if (a == null) {
                    a = new m1();
                }
            }
        }
        return a;
    }

    public void a(l0 l0Var, p1 p1Var) {
        String str;
        o1 o1Var;
        String a2;
        int b = l0Var.b("networktype", 0);
        k1 k1Var = new k1();
        k1Var.a = "1.0";
        k1Var.b = "quick_login_android_5.9.7.1";
        String b2 = l0Var.b("appid", "");
        if (b2 == null) {
            b2 = "";
        }
        k1Var.c = b2;
        String b3 = l0Var.b("operatortype", "");
        if (b3 == null) {
            b3 = "";
        }
        k1Var.e = b3;
        String str2 = b + "";
        if (str2 == null) {
            str2 = "";
        }
        k1Var.f = str2;
        String str3 = j2.a;
        if (str3 == null) {
            str3 = "";
        }
        k1Var.g = URLEncoder.encode(str3);
        String str4 = j2.b;
        if (str4 == null) {
            str4 = "";
        }
        k1Var.h = URLEncoder.encode(str4);
        String str5 = j2.c;
        if (str5 == null) {
            str5 = "";
        }
        k1Var.i = URLEncoder.encode(str5);
        k1Var.j = "0";
        k1Var.k = "3.0";
        String b4 = l2.b();
        if (b4 == null) {
            b4 = "";
        }
        k1Var.m = b4;
        String a3 = b0.a();
        if (a3 == null) {
            a3 = "";
        }
        k1Var.n = a3;
        String b5 = l0Var.b("apppackage", "");
        if (b5 == null) {
            b5 = "";
        }
        k1Var.q = b5;
        String b6 = l0Var.b("appsign", "");
        if (b6 == null) {
            b6 = "";
        }
        k1Var.r = b6;
        String b7 = b0.b("AID", "");
        if (b7 == null) {
            b7 = "";
        }
        k1Var.v = b7;
        if (l0Var.b("logintype", 0) == 3 || l0Var.b("isRisk", false)) {
            str = "pre";
        } else {
            k1Var.c(l0Var.b("userCapaid", ""));
            k1Var.z = l0Var.b("logintype", 0) == 1 ? "200" : "50";
            str = "authz";
        }
        k1Var.w = str;
        l2.a(l0Var, "scripAndTokenForHttps");
        h0 b8 = l0Var.b();
        if (!l0Var.b("isCacheScrip", false) && l0Var.b("logintype", 0) != 1 && !l0Var.b("isGotScrip", false)) {
            h1 h1Var = new h1();
            h1Var.b = l0Var.a("aes_key");
            h1Var.d = l0Var.a("aes_iv");
            h1Var.a = k1Var;
            h1Var.f = false;
            l0Var.a("isCloseIpv4", b8.h);
            l0Var.a("isCloseIpv6", b8.i);
            String str6 = "https://" + b8.b + "/unisdk/rs/scripAndTokenForHttps";
            if (l0Var.b("use2048PublicKey", false)) {
                c2.a("BaseRequest", "使用2对应的编码");
                h1Var.e = "2";
                if (g2.c == null) {
                    g2.c = new g2();
                }
                g2 g2Var = g2.c;
                byte[] a4 = l0Var.a("aes_key");
                if (g2Var.a == null) {
                    c2.a("rich.g2", "mServerPublicKey == null");
                    a2 = null;
                } else {
                    try {
                        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA256AndMGF1Padding");
                        cipher.init(1, g2Var.b);
                        a2 = Base64.encodeToString(cipher.doFinal(a4), 0);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                if (g2.c == null) {
                    g2.c = new g2();
                }
                g2 g2Var2 = g2.c;
                byte[] a5 = l0Var.a("aes_key");
                if (g2Var2.a == null) {
                    c2.a("rich.g2", "mServerPublicKey == null");
                } else {
                    try {
                        Cipher cipher2 = Cipher.getInstance("RSA/ECB/OAEPWithSHA256AndMGF1Padding");
                        cipher2.init(1, g2Var2.a);
                        a2 = l2.a(cipher2.doFinal(a5));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                a2 = "";
            }
            h1Var.c = a2;
            o1Var = new n1(str6, h1Var, "POST", l0Var.b("traceId", ""));
            o1Var.b.put("defendEOF", "1");
            if (b == 3) {
                o1Var.e = true;
                l0Var.a("doNetworkSwitch", true);
            } else {
                o1Var.e = false;
                l0Var.a("doNetworkSwitch", false);
            }
        } else {
            String b9 = l0Var.b("phonescrip", "");
            if (b9 == null) {
                b9 = "";
            }
            k1Var.y = b9;
            String b10 = k1Var.b(l0Var.b("appkey", ""));
            if (b10 == null) {
                b10 = "";
            }
            k1Var.p = b10;
            o1 o1Var2 = new o1("https://" + b8.a + "/unisdk/rs/scripAndTokenForHttps", k1Var, "POST", l0Var.b("traceId", ""));
            o1Var2.b.put("defendEOF", "0");
            o1Var = o1Var2;
        }
        o1Var.b.put("interfaceVersion", "3.0");
        a(o1Var, p1Var, l0Var);
    }

    /* loaded from: classes2.dex */
    public class a implements t1 {
        public final /* synthetic */ o1 a;
        public final /* synthetic */ l0 b;
        public final /* synthetic */ p1 c;

        public a(m1 m1Var, o1 o1Var, l0 l0Var, p1 p1Var) {
            this.a = o1Var;
            this.b = l0Var;
            this.c = p1Var;
        }

        public final void a() {
            if (this.a.a.contains("uniConfig")) {
                return;
            }
            l2.c(this.b, String.valueOf(SystemClock.elapsedRealtime() - this.a.h));
        }

        @Override // rich.t1
        public void a(r1 r1Var) {
            if (this.a.a()) {
                a();
                l2.b(this.b, String.valueOf(r1Var.a));
                this.c.a(String.valueOf(r1Var.a), r1Var.b, b0.a(String.valueOf(r1Var.a), r1Var.b));
            }
        }

        @Override // rich.t1
        public void a(s1 s1Var) {
            if (this.a.a()) {
                try {
                    a();
                    String str = s1Var.c;
                    if (str == null) {
                        str = "";
                    }
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.has("resultcode") ? jSONObject.getString("resultcode") : jSONObject.getString("resultCode");
                    l2.b(this.b, string);
                    this.c.a(string, jSONObject.optString(SocialConstants.PARAM_APP_DESC), jSONObject);
                } catch (Exception e) {
                    e.printStackTrace();
                    a(r1.a(102223));
                }
            }
        }
    }

    public final void a(o1 o1Var, p1 p1Var, l0 l0Var) {
        a1 a1Var = new a1();
        z0 z0Var = new z0();
        x0 x0Var = new x0();
        a1Var.a = z0Var;
        z0Var.a = x0Var;
        o1Var.h = SystemClock.elapsedRealtime();
        a1Var.a(o1Var, new a(this, o1Var, l0Var, p1Var), l0Var);
    }

    public void a(JSONObject jSONObject, l0 l0Var, p1 p1Var) {
        i1 i1Var = new i1();
        i1.a aVar = new i1.a();
        i1.b bVar = new i1.b();
        bVar.b = l2.b();
        bVar.c = b0.a();
        bVar.e = "2.0";
        bVar.d = l0Var.b("appid", "");
        bVar.a = b0.a(bVar.a("")).toLowerCase();
        aVar.a = jSONObject;
        i1Var.b = aVar;
        i1Var.a = bVar;
        h0 b = l0Var.b();
        StringBuilder a2 = rich.a.a("https://");
        a2.append(b.d);
        a2.append("/log/logReport");
        a(new o1(a2.toString(), i1Var, "POST", l0Var.b("traceId", "")), p1Var, l0Var);
    }

    public void a(boolean z, l0 l0Var, p1 p1Var) {
        e1 e1Var = new e1();
        e1Var.a = "1.0";
        e1Var.b = "Android";
        e1Var.c = b0.b("AID", "");
        e1Var.d = z ? "1" : "0";
        e1Var.e = "quick_login_android_5.9.7.1";
        e1Var.f = l0Var.b("appid", "");
        e1Var.g = b0.a(e1Var.a("iYm0HAnkxQtpvN44")).toLowerCase();
        h0 b = l0Var.b();
        StringBuilder a2 = rich.a.a("https://");
        a2.append(b.c);
        a2.append("/client/uniConfig");
        a(new o1(a2.toString(), e1Var, "POST", l0Var.b("traceId", "")), p1Var, l0Var);
    }
}
