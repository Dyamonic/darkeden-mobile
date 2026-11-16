package com.rich.oauth.core;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.rich.oauth.callback.CertifiTokenCallback;
import com.rich.oauth.callback.CertificaioinCallback;
import com.rich.oauth.callback.InitCallback;
import com.rich.oauth.callback.InitResultCallback;
import com.rich.oauth.callback.LoginListener;
import com.rich.oauth.callback.PreLoginCallback;
import com.rich.oauth.callback.TokenCallback;
import com.rich.oauth.util.JsonBuildUtil;
import com.rich.oauth.util.LogToFile;
import com.rich.oauth.util.MD5Utils;
import com.rich.oauth.util.PackageUtil;
import com.rich.oauth.util.SharedPreferencesUtil;
import com.rich.oauth.util.TimeUtil;
import com.taptap.sdk.moment.constant.Constant;
import java.lang.ref.SoftReference;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Random;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
import rich.b0;
import rich.c2;
import rich.e;
import rich.e3;
import rich.f3;
import rich.g3;
import rich.h3;
import rich.i3;
import rich.m3;
import rich.n3;
import rich.o3;
import rich.p;
import rich.p0;
import rich.p3;
import rich.q3;
import rich.r3;
import rich.s3;
import rich.t3;
import rich.u3;

/* loaded from: classes.dex */
public class RichAuth implements LoginListener {
    public static volatile RichAuth s;
    public m3 b;
    public p c;
    public f3 d;
    public f3.a e;
    public String f;
    public Context g;
    public TokenCallback h;
    public PreLoginCallback i;
    public CertificaioinCallback j;
    public String k;
    public String l;
    public String n;
    public UIConfigBuild o;
    public int a = -2;
    public boolean m = false;
    public long p = 0;
    public long q = 0;
    public volatile boolean r = false;

    /* loaded from: classes.dex */
    public class a implements InitResultCallback {
        public final /* synthetic */ InitCallback a;

        public a(InitCallback initCallback) {
            this.a = initCallback;
        }

        @Override // com.rich.oauth.callback.InitResultCallback
        public void initFailure(String str) {
            RichAuth richAuth = RichAuth.this;
            richAuth.a = -1;
            richAuth.k = str;
            richAuth.r = false;
            this.a.onInitFailure(str);
            Log.e("RichAuth", "initFailure(String msg)" + str);
        }

        @Override // com.rich.oauth.callback.InitResultCallback
        public void initResultSuccess(f3 f3Var) {
            RichAuth richAuth = RichAuth.this;
            richAuth.d = f3Var;
            richAuth.a = 0;
            richAuth.r = false;
            RichAuth richAuth2 = RichAuth.this;
            List<f3.a> list = richAuth2.d.c;
            if (list != null) {
                for (f3.a aVar : list) {
                    if (aVar.c == 2) {
                        RichAuth.this.e = aVar;
                    }
                }
                this.a.onInitSuccess();
                return;
            }
            richAuth2.a = -1;
            this.a.onInitFailure("平台初始化失败，initbean为空");
            Log.e("RichAuth", "平台初始化失败，initbean为空");
        }
    }

    /* loaded from: classes.dex */
    public class b implements InitCallback {
        public b(RichAuth richAuth) {
        }

        @Override // com.rich.oauth.callback.InitCallback
        public void onInitFailure(String str) {
        }

        @Override // com.rich.oauth.callback.InitCallback
        public void onInitSuccess() {
        }
    }

    /* loaded from: classes.dex */
    public class c implements CertifiTokenCallback {
        public c() {
        }

        @Override // com.rich.oauth.callback.CertifiTokenCallback
        public void onGetCertifiTokenFailureResult(String str) {
            RichAuth.this.j.onPhoneNumberCertificationFailure(str);
        }

        @Override // com.rich.oauth.callback.CertifiTokenCallback
        public void onGetCertifiTokenSuccessResult(String str, String str2) {
            RichAuth richAuth = RichAuth.this;
            t3 t3Var = new t3(richAuth.g);
            String str3 = richAuth.f;
            String str4 = richAuth.l;
            i3 i3Var = new i3(richAuth);
            String time = TimeUtil.getTime();
            TreeMap treeMap = new TreeMap();
            treeMap.put("appId", str3);
            treeMap.put("mobile", str4);
            treeMap.put("timeStamp", time);
            treeMap.put("token", str);
            String digest = MD5Utils.getDigest(treeMap, "appSecret", "utf-8");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", str3);
                jSONObject.put("timeStamp", time);
                jSONObject.put("token", str);
                jSONObject.put("mobile", str4);
                jSONObject.put("sign", digest);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            e3 e3Var = new e3("https://oauth.baina.com/richinfo_oauth_interface/sdkInterface/v2/verifyMobile", jSONObject, new r3(t3Var, i3Var), new s3(t3Var, i3Var));
            e3Var.l = new e(Constant.CALLBACK_CODE_GET_NOTICE_SUCCESS, 1, 1.0f);
            RichAuth.getInstance().a().a(e3Var);
        }
    }

    public static RichAuth getInstance() {
        if (s == null) {
            synchronized (RichAuth.class) {
                if (s == null) {
                    s = new RichAuth();
                }
            }
        }
        return s;
    }

    public p a() {
        p pVar = this.c;
        return pVar == null ? b0.d(this.g.getApplicationContext()) : pVar;
    }

    public final void a(InitCallback initCallback) {
        char c2;
        if (this.r) {
            return;
        }
        this.r = true;
        q3 q3Var = new q3(this.g);
        String str = this.f;
        a aVar = new a(initCallback);
        Random random = new Random();
        String str2 = String.valueOf(random.nextInt(89999) + 10000) + String.valueOf(random.nextInt(89999) + 10000);
        String time = TimeUtil.getTime();
        String str3 = "";
        try {
            str3 = PackageUtil.getSignMd5(q3Var.a);
            if (str3 == null) {
                aVar.initFailure(JsonBuildUtil.getJsonString(50021, "context为空，初始化失败"));
                return;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
        String packageName = PackageUtil.getPackageName(q3Var.a);
        char[] charArray = str3.toUpperCase().toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < charArray.length; i++) {
            if (i == charArray.length - 1) {
                c2 = charArray[i];
            } else if ((i & 1) != 0) {
                sb.append(charArray[i]);
                sb.append(":");
            } else {
                c2 = charArray[i];
            }
            sb.append(c2);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(packageName);
        sb2.append("|");
        sb2.append((CharSequence) sb);
        TreeMap treeMap = new TreeMap();
        treeMap.put("appId", str);
        treeMap.put("expandparam", sb2.toString());
        treeMap.put("systemType", "2");
        treeMap.put("timeStamp", time);
        String digest = MD5Utils.getDigest(treeMap, str, "utf-8");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", str);
            jSONObject.put("systemType", 2);
            jSONObject.put("timeStamp", time);
            jSONObject.put("expandparam", sb2.toString());
            jSONObject.put("sign", digest);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        e3 e3Var = new e3("https://nvs.im.tencent.cn/v5/rapidauth/initialize?sdkappid=" + str + "&random=" + str2, jSONObject, new o3(q3Var, aVar), new p3(q3Var, aVar));
        e3Var.l = new e(15000, 0, 1.0f);
        getInstance().a().a(e3Var);
    }

    public final void a(String str, String str2, String str3, CertifiTokenCallback certifiTokenCallback) {
        new u3().a(str, str2, str3, this.n, new h3(this, certifiTokenCallback));
    }

    public final void b() {
        a(new b(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void certificationNumber(android.content.Context r7, java.lang.String r8, com.rich.oauth.callback.CertificaioinCallback r9) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rich.oauth.core.RichAuth.certificationNumber(android.content.Context, java.lang.String, com.rich.oauth.callback.CertificaioinCallback):void");
    }

    public void closeOauthPage() {
        n3 a2 = n3.a();
        p0 p0Var = a2.a;
        if (p0Var != null) {
            p0Var.d();
            a2.a.h = null;
        }
        a2.c = null;
        this.h = null;
        this.o = null;
    }

    public void delscrip(Context context) {
        p0.b(context).b();
    }

    public String getNetworkType(Context context) {
        JSONObject a2 = p0.b(context).a(context);
        a2.optString("operatorType");
        return a2.optString("networkType");
    }

    public String getOperatorType(Context context) {
        JSONObject a2 = p0.b(context).a(context);
        String optString = a2.optString("operatortype");
        a2.optString("networktype");
        return optString;
    }

    public void init(Context context, String str, InitCallback initCallback) {
        this.g = context;
        this.f = str;
        this.b = new m3(this);
        this.c = b0.d(this.g);
        a(initCallback);
        LogToFile.init(context);
    }

    public void login(Activity activity, UIConfigBuild uIConfigBuild, TokenCallback tokenCallback) {
        this.o = (UIConfigBuild) new SoftReference(uIConfigBuild).get();
        SharedPreferencesUtil.setlastRequestTime(activity, System.currentTimeMillis());
        this.h = tokenCallback;
        if (this.m) {
            m3 m3Var = this.b;
            m3Var.a.a(activity, this.e, this.o);
            return;
        }
        tokenCallback.onTokenFailureResult(JsonBuildUtil.getJsonString(60002, "未预登录，请先预登录"));
    }

    @Override // com.rich.oauth.callback.LoginListener
    public void onAccesscodeFailureListener(String str, int i) {
        this.j.onPhoneNumberCertificationFailure(str);
    }

    @Override // com.rich.oauth.callback.LoginListener
    public void onAccesscodeSuccessListener(String str, int i) {
        String str2;
        if (2 == i) {
            str2 = "{'token':'" + str + "'}";
        } else {
            str2 = null;
        }
        String str3 = this.f;
        a(str3, str2, MD5Utils.getTaskId(str3, this.n), new c());
    }

    @Override // com.rich.oauth.callback.LoginListener
    public void onLoginFailureListener(String str, int i) {
        TokenCallback tokenCallback = this.h;
        if (tokenCallback != null) {
            tokenCallback.onTokenFailureResult(str);
            UIConfigBuild uIConfigBuild = this.o;
            if (uIConfigBuild == null || !uIConfigBuild.isAutoClosAuthPage()) {
                return;
            }
            closeOauthPage();
        }
    }

    @Override // com.rich.oauth.callback.LoginListener
    public void onLoginSuccessListener(String str, int i) {
        this.m = true;
        if (2 == i) {
            try {
                String str2 = "{'token':'" + new JSONObject(str).optString("token") + "'}";
                String str3 = this.f;
                new u3().a(str3, str2, MD5Utils.getTaskId(str3, this.n), this.n, new g3(this));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.rich.oauth.callback.LoginListener
    public void onPreLoginFailureListener(String str, int i) {
        this.m = false;
        this.i.onPreLoginFailure(str);
    }

    @Override // com.rich.oauth.callback.LoginListener
    public void onPreLoginSuccessListener(String str, int i) {
        this.a = i;
        this.m = true;
        this.i.onPreLoginSuccess();
    }

    public void preLogin(Activity activity, PreLoginCallback preLoginCallback) {
        this.i = preLoginCallback;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.p < 1500) {
            this.i.onPreLoginFailure(JsonBuildUtil.getJsonString(500012, "预登陆频繁，请稍后再试"));
            return;
        }
        this.p = currentTimeMillis;
        int i = this.a;
        if (i == -2) {
            b();
            this.i.onPreLoginFailure(JsonBuildUtil.getJsonString(50001, "预登录，初始化未完成，请稍候"));
            return;
        }
        if (i == -1) {
            b();
            this.i.onPreLoginFailure(this.k);
            return;
        }
        f3 f3Var = this.d;
        if (f3Var == null) {
            b();
            this.i.onPreLoginFailure(JsonBuildUtil.getJsonString(50002, "初始化运营商参数为空"));
            return;
        }
        List list = f3Var.c;
        if (list == null || list.size() == 0) {
            b();
            this.i.onPreLoginFailure(JsonBuildUtil.getJsonString(50003, "初始化返回的参数为空"));
            return;
        }
        JSONObject a2 = p0.b((Context) activity).a(activity);
        String optString = a2.optString("operatortype");
        String optString2 = a2.optString("networktype");
        String str = "2";
        if (!optString.equals("1")) {
            str = "3";
            if (!optString.equals("2")) {
                if (optString.equals("3")) {
                    this.n = "1";
                }
                if ("0".equals(optString) && !optString2.equals("0")) {
                    m3 m3Var = this.b;
                    m3Var.a.b(activity, this.e);
                    return;
                }
                this.i.onPreLoginFailure(JsonBuildUtil.getJsonString(81010, "预登录失败，不能识别运营商，移动网络未开启"));
            }
        }
        this.n = str;
        if ("0".equals(optString)) {
        }
        this.i.onPreLoginFailure(JsonBuildUtil.getJsonString(81010, "预登录失败，不能识别运营商，移动网络未开启"));
    }

    public void setDebugMode(Boolean bool) {
        c2.a = bool.booleanValue();
    }

    public void setLoginBtn(String str) {
        this.b.a.a(str);
    }

    public void setOverTime(Integer num) {
        p0.b(this.g).c = num.intValue();
    }
}
