package rich;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class r0 {
    public static r0 c;
    public final m1 a = m1.a();
    public final Context b;

    /* loaded from: classes2.dex */
    public class a implements p1 {
        public final /* synthetic */ l0 a;
        public final /* synthetic */ s0 b;

        public a(l0 l0Var, s0 s0Var) {
            this.a = l0Var;
            this.b = s0Var;
        }

        @Override // rich.p1
        public void a(String str, String str2, JSONObject jSONObject) {
            r0.this.a(this.a, this.b, str, str2, jSONObject);
        }
    }

    public r0(Context context) {
        this.b = context.getApplicationContext();
    }

    public static r0 a(Context context) {
        if (c == null) {
            synchronized (r0.class) {
                if (c == null) {
                    c = new r0(context);
                }
            }
        }
        return c;
    }

    public void a(l0 l0Var, s0 s0Var) {
        c2.b("AuthnBusiness", "LoginCheck method start");
        int b = l0Var.b("logintype", 0);
        if (!l0Var.b("isCacheScrip", false)) {
            b(l0Var, s0Var);
            return;
        }
        l0Var.b("securityphone", "");
        if (b == 3) {
            s0Var.a("103000", "true", l0Var, b0.m1663a());
        } else {
            b(l0Var, s0Var);
        }
    }

    public void b(l0 l0Var, s0 s0Var) {
        c2.b("AuthnBusiness", "getScripAndToken start");
        boolean b = l0Var.b("isGotScrip", false);
        c2.b("AuthnBusiness", "isGotScrip = " + b);
        if (!b) {
            String packageName = this.b.getPackageName();
            Context context = this.b;
            PackageManager packageManager = context.getPackageManager();
            byte[] bArr = null;
            if (context.getPackageName().equalsIgnoreCase(packageName)) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64);
                    if (packageInfo.packageName.equals(packageName)) {
                        bArr = packageInfo.signatures[0].toByteArray();
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
            }
            String a2 = b0.a(bArr);
            l0Var.a("apppackage", packageName);
            l0Var.a("appsign", a2);
            if (!l0Var.b("isCacheScrip", false)) {
                byte[] bArr2 = new byte[0];
                if (l0Var.b("use2048PublicKey", false)) {
                    c2.a("AuthnBusiness", "使用2048公钥对应的对称秘钥生成方式");
                    bArr2 = b0.m1666a();
                } else {
                    c2.a("AuthnBusiness", "使用1024公钥对应的对称秘钥生成方式");
                    try {
                        bArr2 = UUID.randomUUID().toString().substring(0, 16).getBytes("utf-8");
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                byte[] m1666a = b0.m1666a();
                l0Var.a("aes_key", bArr2);
                l0Var.a("aes_iv", m1666a);
                l0Var.a("authType", "3");
                if (l0Var.b("networktype", 0) == 3 && !"loginAuth".equals(l0Var.b("loginMethod", "")) && l0Var.b("logintype", 0) != 3) {
                    l0Var.a("isRisk", true);
                }
            }
            if (l0Var.b("logintype", 0) == 1) {
                l0Var.a("userCapaid", "200");
            } else if (l0Var.b("logintype", 0) == 0) {
                l0Var.a("userCapaid", "50");
            }
        }
        this.a.a(l0Var, new a(l0Var, s0Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0168  */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(rich.l0 r25, rich.s0 r26, java.lang.String r27, java.lang.String r28, org.json.JSONObject r29) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rich.r0.a(rich.l0, rich.s0, java.lang.String, java.lang.String, org.json.JSONObject):void");
    }
}
