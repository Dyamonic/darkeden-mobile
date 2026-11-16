package rich;

import android.text.TextUtils;
import org.json.JSONObject;
import rich.k2;

/* loaded from: classes2.dex */
public class j0 {
    public static j0 e;
    public h0 a;
    public final h0 b;
    public volatile boolean c = false;
    public b d;

    /* loaded from: classes2.dex */
    public class a extends k2.a {
        public final /* synthetic */ l0 b;

        public a(l0 l0Var) {
            this.b = l0Var;
        }

        @Override // rich.k2.a
        public void a() {
            c2.b("UmcConfigHandle", "开始拉取配置..");
            j0 j0Var = j0.this;
            l0 l0Var = this.b;
            if (j0Var.c) {
                c2.a("UmcConfigHandle", "正在获取配置中...");
            } else {
                j0Var.c = true;
                m1.a().a(false, l0Var, (p1) new i0(j0Var));
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
    }

    public j0(boolean z) {
        h0 h0Var = new h0(null);
        this.b = h0Var;
        if (z) {
            this.a = h0Var;
        } else {
            this.a = c();
        }
    }

    public static j0 a(boolean z) {
        if (e == null) {
            synchronized (j0.class) {
                if (e == null) {
                    e = new j0(z);
                }
            }
        }
        return e;
    }

    public final String a(String str, String str2) {
        String str3;
        String[] split = str.split("&");
        int length = split.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str3 = "";
                break;
            }
            str3 = split[i];
            if (str3.contains(str2)) {
                break;
            }
            i++;
        }
        return !TextUtils.isEmpty(str3) ? str3.substring(str3.lastIndexOf("=") + 1) : str3;
    }

    public h0 a() {
        return this.b;
    }

    public void a(l0 l0Var) {
        if (System.currentTimeMillis() >= b0.a.getSharedPreferences("sso_config_xf", 0).getLong(b0.a("client_valid"), 0L)) {
            k2.a(new a(l0Var));
        }
    }

    public void b() {
        i2 b2 = b0.b("sso_config_xf");
        b2.a.clear();
        b2.a.commit();
    }

    public final h0 c() {
        h0 h0Var = new h0(null);
        String str = this.b.a;
        String a2 = b0.a("sso_config_xf", "https_get_phone_scrip_host", (String) null);
        if (!TextUtils.isEmpty(a2)) {
            str = a2;
        }
        h0Var.a = str;
        String str2 = this.b.c;
        String a3 = b0.a("sso_config_xf", "config_host", (String) null);
        if (!TextUtils.isEmpty(a3)) {
            str2 = a3;
        }
        h0Var.c = str2;
        String str3 = this.b.b;
        String a4 = b0.a("sso_config_xf", "https_get_phone_scrip_host", (String) null);
        if (!TextUtils.isEmpty(a4)) {
            str3 = a4;
        }
        h0Var.b = str3;
        String str4 = this.b.d;
        String a5 = b0.a("sso_config_xf", "logHost", "");
        if (!TextUtils.isEmpty(a5)) {
            str4 = a5;
        }
        h0Var.d = str4;
        h0Var.h = "1".equals(b0.a("sso_config_xf", "CLOSE_IPV4_LIST", !this.b.h ? "0" : "1"));
        h0Var.i = "1".equals(b0.a("sso_config_xf", "CLOSE_IPV6_LIST", !this.b.i ? "0" : "1"));
        h0Var.e = b0.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", this.b.e ? "CT" : "").contains("CT");
        h0Var.f = b0.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", this.b.f ? "CU" : "").contains("CU");
        String str5 = !this.b.g ? "0" : "1";
        h0Var.g = "1".equals(b0.a("sso_config_xf", "CLOSE_M008_APPID_LIST", str5)) || "1".equals(b0.a("sso_config_xf", "CLOSE_M008_SDKVERSION_LIST", str5));
        h0Var.j = "1".equals(b0.a("sso_config_xf", "CLOSE_LOGS_VERSION", this.b.j ? "1" : "0"));
        h0Var.k = b0.a.getSharedPreferences("sso_config_xf", 0).getInt(b0.a("maxFailedLogTimes"), this.b.k);
        h0Var.l = b0.a.getSharedPreferences("sso_config_xf", 0).getInt(b0.a("pauseTime"), this.b.l);
        return h0Var;
    }

    public final void a(JSONObject jSONObject) {
        i2 b2 = b0.b("sso_config_xf");
        try {
            if (jSONObject.has("client_valid")) {
                b2.a.putLong(b0.a("client_valid"), (Integer.parseInt(jSONObject.getString("client_valid")) * 60 * 60 * 1000) + System.currentTimeMillis());
            }
            if (jSONObject.has("Configlist")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("Configlist");
                if (jSONObject2.has("CHANGE_HOST")) {
                    String string = jSONObject2.getString("CHANGE_HOST");
                    if (string.contains("M007")) {
                        String a2 = a(string, "M007");
                        if (!TextUtils.isEmpty(a2)) {
                            b2.a.putString(b0.a("logHost"), a2);
                        }
                    }
                    if (string.contains("M008")) {
                        String a3 = a(string, "M008");
                        if (!TextUtils.isEmpty(a3)) {
                            b2.a.putString(b0.a("https_get_phone_scrip_host"), a3);
                        }
                    }
                    if (string.contains("M009")) {
                        String a4 = a(string, "M009");
                        if (!TextUtils.isEmpty(a4)) {
                            b2.a.putString(b0.a("config_host"), a4);
                        }
                    }
                } else {
                    b2.a.remove(b0.a("logHost"));
                    b2.a.remove(b0.a("https_get_phone_scrip_host"));
                    b2.a.remove(b0.a("config_host"));
                }
                a(jSONObject2, "CLOSE_FRIEND_WAPKS", "0", b2);
                a(jSONObject2, "CLOSE_LOGS_VERSION", "0", b2);
                a(jSONObject2, "CLOSE_IPV4_LIST", "0", b2);
                a(jSONObject2, "CLOSE_IPV6_LIST", "0", b2);
                a(jSONObject2, "CLOSE_M008_SDKVERSION_LIST", "0", b2);
                a(jSONObject2, "CLOSE_M008_APPID_LIST", "0", b2);
                if (jSONObject2.has("LOGS_CONTROL")) {
                    String[] split = jSONObject2.getString("LOGS_CONTROL").replace("h", "").split("&");
                    if (split.length == 2 && !TextUtils.isEmpty(split[0]) && !TextUtils.isEmpty(split[1])) {
                        try {
                            int parseInt = Integer.parseInt(split[0]);
                            int parseInt2 = Integer.parseInt(split[1]);
                            b2.a.putInt(b0.a("maxFailedLogTimes"), parseInt);
                            b2.a.putInt(b0.a("pauseTime"), parseInt2);
                        } catch (Exception unused) {
                            c2.a("UmcConfigHandle", "解析日志上报限制时间次数异常");
                        }
                    }
                } else {
                    b2.a.remove(b0.a("maxFailedLogTimes"));
                    b2.a.remove(b0.a("pauseTime"));
                }
            }
            b2.a.commit();
        } catch (Exception e2) {
            c2.a("UmcConfigHandle", "配置项异常，配置失效");
            e2.printStackTrace();
        }
    }

    public final void a(JSONObject jSONObject, String str, String str2, i2 i2Var) {
        if (jSONObject.has(str)) {
            String optString = jSONObject.optString(str, str2);
            if ("CLOSE_FRIEND_WAPKS".equals(str)) {
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                if (!optString.contains("CU") && !optString.contains("CT") && !optString.contains("CM")) {
                    return;
                }
            } else if (!"0".equals(optString) && !"1".equals(optString)) {
                return;
            }
            i2Var.a.putString(b0.a(str), jSONObject.optString(str, str2));
            return;
        }
        i2Var.a.remove(b0.a(str));
    }
}
