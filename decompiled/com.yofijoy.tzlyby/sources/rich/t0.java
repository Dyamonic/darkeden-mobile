package rich;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import org.json.JSONException;
import org.json.JSONObject;
import rich.k2;

/* loaded from: classes2.dex */
public class t0 {
    public static t0 g;
    public final r0 a;
    public final Context b;
    public final Handler d;
    public String e;
    public long c = 8000;
    public final Object f = new Object();

    /* loaded from: classes2.dex */
    public class a extends k2.a {
        public a() {
        }

        @Override // rich.k2.a
        public void a() {
            String b = b0.b("AID", "");
            c2.b("AuthnHelperCore", "aid = " + b);
            if (TextUtils.isEmpty(b)) {
                t0.this.a();
            }
            c2.b("AuthnHelperCore", b2.a(t0.this.b, true) ? "生成androidkeystore成功" : "生成androidkeystore失败");
        }
    }

    /* loaded from: classes2.dex */
    public class b implements s0 {
        public final /* synthetic */ d a;

        public b(d dVar) {
            this.a = dVar;
        }

        @Override // rich.s0
        public void a(String str, String str2, l0 l0Var, JSONObject jSONObject) {
            t0.this.d.removeCallbacks(this.a);
            t0.this.a(str, str2, l0Var, jSONObject);
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {
        public final /* synthetic */ q0 a;
        public final /* synthetic */ int b;
        public final /* synthetic */ JSONObject c;

        public c(t0 t0Var, q0 q0Var, int i, JSONObject jSONObject) {
            this.a = q0Var;
            this.b = i;
            this.c = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(this.b, this.c);
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {
        public final l0 a;

        public d(l0 l0Var) {
            this.a = l0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject a = b0.a("200023", "登录超时");
            t0.this.a(a.optString("resultCode", "200023"), a.optString(SocialConstants.PARAM_APP_DESC, "登录超时"), this.a, a);
        }
    }

    public t0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.d = new Handler(applicationContext.getMainLooper());
        this.a = r0.a(applicationContext);
        m2.a(applicationContext);
        b0.a = applicationContext.getApplicationContext();
        h2.d = new h2(applicationContext);
        k2.a(new a());
    }

    public static t0 b(Context context) {
        if (g == null) {
            synchronized (t0.class) {
                if (g == null) {
                    g = new t0(context);
                }
            }
        }
        return g;
    }

    public l0 a(q0 q0Var) {
        l0 l0Var = new l0(64);
        String c2 = l2.c();
        l0Var.a.put("logBean", new x1());
        l0Var.a("traceId", c2);
        c2.a("traceId", c2);
        if (q0Var != null) {
            d2.a.put(c2, q0Var);
        }
        return l0Var;
    }

    public final void a() {
        StringBuilder a2 = rich.a.a("%");
        a2.append(l2.b());
        String sb = a2.toString();
        c2.b("AuthnHelperCore", "generate aid = " + sb);
        b0.m1665a("AID", sb);
    }

    public void a(l0 l0Var) {
        d dVar = new d(l0Var);
        this.d.postDelayed(dVar, this.c);
        this.a.a(l0Var, new b(dVar));
    }

    public void b() {
        try {
            f2.a(true, true);
            c2.b("AuthnHelperCore", "删除scrip");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean a(l0 l0Var, String str, String str2, String str3, int i, q0 q0Var) {
        String str4;
        String str5;
        boolean a2;
        h0 a3 = k0.a(this.b).a();
        l0Var.a(a3);
        l0Var.a("use2048PublicKey", "rsa2048".equals(this.e));
        l0Var.a("systemStartTime", SystemClock.elapsedRealtime());
        l0Var.a("starttime", b0.a());
        l0Var.a("loginMethod", str3);
        l0Var.a("appkey", str2);
        l0Var.a("appid", str);
        l0Var.a("timeOut", String.valueOf(this.c));
        boolean a4 = j2.a(this.b);
        v0.a().a(this.b, a4);
        String a5 = h2.d.a();
        String a6 = h2.d.a(a4);
        String a7 = h2.d.a(a6, a4);
        l0Var.a("operator", a6);
        l0Var.a("operatortype", a7);
        l0Var.a("logintype", i);
        c2.b("AuthnHelperCore", "subId = " + a5);
        if (!TextUtils.isEmpty(a5)) {
            c2.a("AuthnHelperCore", "使用subId作为缓存key = " + a5);
            l0Var.a("scripType", "subid");
            l0Var.a("scripKey", a5);
        } else if (!TextUtils.isEmpty(a6)) {
            c2.a("AuthnHelperCore", "使用operator作为缓存key = " + a6);
            l0Var.a("scripType", "operator");
            l0Var.a("scripKey", a6);
        }
        int a8 = j2.a(this.b, a4, l0Var);
        l0Var.a("networktype", a8);
        if (!a4) {
            l0Var.a("authType", String.valueOf(0));
            str4 = "200010";
            str5 = "无法识别sim卡或没有sim卡";
        } else if (q0Var == null) {
            str4 = "102203";
            str5 = "listener不能为空";
        } else {
            if (!a3.g) {
                if (TextUtils.isEmpty(str == null ? "" : str.trim())) {
                    str4 = "102203";
                    str5 = "appId 不能为空";
                } else {
                    if (TextUtils.isEmpty(str2 == null ? "" : str2.trim())) {
                        str4 = "102203";
                        str5 = "appkey不能为空";
                    } else if (a8 == 0) {
                        str4 = "102101";
                        str5 = "未检测到网络";
                    } else if ((!"2".equals(a7) || !a3.f) && (!"3".equals(a7) || !a3.e)) {
                        synchronized (this.f) {
                            a2 = f2.a(l0Var);
                            if (a2) {
                                l0Var.a("securityphone", b0.b("securityphone", ""));
                                if (3 != i) {
                                    String a9 = f2.a(this.b);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("解密phoneScript ");
                                    sb.append(!TextUtils.isEmpty(a9));
                                    c2.b("AuthnHelperCore", sb.toString());
                                    if (TextUtils.isEmpty(a9)) {
                                        a2 = false;
                                    } else {
                                        l0Var.a("phonescrip", a9);
                                    }
                                    f2.a(true, false);
                                }
                            }
                            l0Var.a("isCacheScrip", a2);
                            c2.b("AuthnHelperCore", "isCachePhoneScrip = " + a2);
                        }
                        if (a8 != 2 || a2) {
                            return true;
                        }
                        str4 = "102103";
                        str5 = "无数据网络";
                    }
                }
            }
            str4 = "200082";
            str5 = "服务器繁忙，请稍后重试";
        }
        a(str4, str5, l0Var, null);
        return false;
    }

    public void a(String str, String str2, l0 l0Var, JSONObject jSONObject) {
        try {
            String b2 = l0Var.b("traceId", "");
            int b3 = l0Var.b("SDKRequestCode", -1);
            if (d2.a(b2)) {
                return;
            }
            synchronized (this) {
                q0 b4 = d2.b(b2);
                if (jSONObject == null || !jSONObject.optBoolean("keepListener", false)) {
                    d2.a.remove(b2);
                }
                if (b4 == null) {
                    return;
                }
                l0Var.a("systemEndTime", SystemClock.elapsedRealtime());
                l0Var.a("endtime", b0.a());
                int b5 = l0Var.b("logintype", 0);
                if (jSONObject == null) {
                    jSONObject = b0.a(str, str2);
                }
                JSONObject a2 = b5 == 3 ? b0.a(str, l0Var, jSONObject) : b0.a(str, str2, l0Var, jSONObject);
                a2.put("traceId", b2);
                a2.put("scripExpiresIn", String.valueOf(f2.a()));
                this.d.post(new c(this, b4, b3, a2));
                k0.a(this.b).c.a(l0Var);
                if (l0Var.b().j || l2.a(l0Var.b())) {
                    return;
                }
                k2.a(new u0(this, str, this.b, l0Var));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                boolean a2 = j2.a(this.b);
                v0.a().a(context, a2);
                String a3 = h2.d.a(null, a2);
                int a4 = j2.a(context, a2, new l0(1));
                jSONObject.put("operatortype", a3);
                jSONObject.put("networktype", a4 + "");
                c2.b("AuthnHelperCore", "网络类型: " + a4);
                c2.b("AuthnHelperCore", "运营商类型: " + a3);
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return jSONObject;
            }
        } catch (Exception unused) {
            jSONObject.put("errorDes", "发生未知错误");
            return jSONObject;
        }
    }
}
