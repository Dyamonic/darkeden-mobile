package rich;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.rich.oauth.callback.ModelCallback;
import com.rich.oauth.core.UIConfigBuild;
import com.rich.oauth.util.AuthConstants;
import com.rich.oauth.util.JsonBuildUtil;
import com.tencent.open.SocialConstants;
import java.lang.ref.SoftReference;
import java.util.regex.Pattern;
import org.json.JSONObject;
import rich.f3;
import rich.o2;

/* loaded from: classes2.dex */
public class n3 {
    public static volatile n3 d;
    public p0 a;
    public o2.b b = null;
    public UIConfigBuild c = null;

    /* loaded from: classes2.dex */
    public class a implements q0 {
        public final /* synthetic */ ModelCallback a;

        public a(ModelCallback modelCallback) {
            this.a = modelCallback;
        }

        @Override // rich.q0
        public void a(int i, JSONObject jSONObject) {
            if (jSONObject == null) {
                this.a.onFailureResult(JsonBuildUtil.getJsonString(55551, "移动登陆接口数据返回异常"), 2);
                return;
            }
            int optInt = jSONObject.optInt("resultCode");
            if (optInt == 103000) {
                this.a.onSuccessResult(jSONObject.toString(), 2);
            } else if (optInt == 200020) {
                n3.this.b = null;
            } else {
                this.a.onFailureResult(JsonBuildUtil.getJsonString(optInt, jSONObject.optString(SocialConstants.PARAM_APP_DESC)), 2);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b implements q0 {
        public final /* synthetic */ ModelCallback a;

        public b(n3 n3Var, ModelCallback modelCallback) {
            this.a = modelCallback;
        }

        @Override // rich.q0
        public void a(int i, JSONObject jSONObject) {
            int optInt = jSONObject.optInt("resultCode");
            String optString = jSONObject.optString("token");
            if (optInt == 103000) {
                this.a.onGetAccessCodeSuccessResult(optString, 2);
            } else {
                this.a.onGetAccessCodeFailureResult(JsonBuildUtil.getJsonString(optInt, jSONObject.optString(SocialConstants.PARAM_APP_DESC)), 2);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class c implements q0 {
        public final /* synthetic */ ModelCallback a;

        public c(n3 n3Var, ModelCallback modelCallback) {
            this.a = modelCallback;
        }

        @Override // rich.q0
        public void a(int i, JSONObject jSONObject) {
            ModelCallback modelCallback;
            int i2;
            String str;
            int i3 = 0;
            if (jSONObject != null) {
                i2 = jSONObject.optInt("resultCode");
                String optString = jSONObject.optString("operatorType");
                if (optString.equalsIgnoreCase("移动")) {
                    i3 = 2;
                } else if (optString.equalsIgnoreCase("联通")) {
                    i3 = 3;
                } else if (optString.equalsIgnoreCase("电信")) {
                    i3 = 1;
                }
                if (i2 == 103000) {
                    this.a.onPreLoginSuccessResult(jSONObject.toString(), i3);
                    return;
                }
                if (i2 == 200005) {
                    modelCallback = this.a;
                    str = "用户未授权（READ_PHONE_STATE）";
                } else if (i2 != 200022) {
                    this.a.onPreLoginFailuresResult(JsonBuildUtil.getJsonString(i2, jSONObject.optString(SocialConstants.PARAM_APP_DESC)), i3);
                    return;
                } else {
                    modelCallback = this.a;
                    str = "无网络";
                }
            } else {
                modelCallback = this.a;
                i2 = 55552;
                str = "移动预登陆接口json为空";
            }
            modelCallback.onPreLoginFailuresResult(JsonBuildUtil.getJsonString(i2, str), i3);
        }
    }

    /* loaded from: classes2.dex */
    public class d implements t2 {
        public d() {
        }

        public void a(String str, JSONObject jSONObject) {
            if (str.equals("200087")) {
                if (n3.this.c.getmAuthPageInListener() != null) {
                    n3.this.c.getmAuthPageInListener().onAuthPageInSuccess(jSONObject);
                }
            } else if (n3.this.c.getmAuthPageInListener() != null) {
                n3.this.c.getmAuthPageInListener().onAuthPageInFailure(jSONObject);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class e implements r2 {
        public e() {
        }

        @Override // rich.r2
        public void a(boolean z) {
            n3.this.c.getCheckedChangeListener();
        }
    }

    /* loaded from: classes2.dex */
    public class f implements r2 {
        public f() {
        }

        @Override // rich.r2
        public void a(boolean z) {
            if (n3.this.c.getCheckboxCheckedChangeListener() != null) {
                n3.this.c.getCheckboxCheckedChangeListener().onCheckboxCheckedChange(z);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class g implements p2 {
        public g() {
        }
    }

    /* loaded from: classes2.dex */
    public class h implements s2 {
        public h() {
        }
    }

    /* loaded from: classes2.dex */
    public class i implements q2 {
        public i() {
        }

        @Override // rich.q2
        public void a(Context context, JSONObject jSONObject) {
            if (n3.this.c.getCheckboxUnCheckedClickListener() != null) {
                n3.this.c.getCheckboxUnCheckedClickListener().onCheckboxChecked(context, jSONObject);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class j implements q2 {
        public j() {
        }

        @Override // rich.q2
        public void a(Context context, JSONObject jSONObject) {
            if (n3.this.c.getCheckboxUnCheckedClickListener() != null) {
                n3.this.c.getCheckboxUnCheckedClickListener().onCheckboxChecked(context, jSONObject);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class k implements n2 {
        public k() {
        }
    }

    public static n3 a() {
        if (d == null) {
            synchronized (n3.class) {
                if (d == null) {
                    d = new n3();
                }
            }
        }
        return d;
    }

    public void a(Context context, ModelCallback modelCallback, f3.a aVar, UIConfigBuild uIConfigBuild) {
        UIConfigBuild uIConfigBuild2 = uIConfigBuild;
        if (modelCallback == null) {
            modelCallback.onFailureResult(JsonBuildUtil.getJsonString(20099, "callback为null"), 2);
            return;
        }
        this.c = uIConfigBuild2;
        if (uIConfigBuild2 == null) {
            uIConfigBuild2 = new UIConfigBuild.Builder().build();
        }
        p0 b2 = p0.b(context.getApplicationContext());
        this.a = b2;
        b2.i = new d();
        SoftReference softReference = new SoftReference(uIConfigBuild2.getContentView());
        o2.b bVar = new o2.b();
        bVar.d = (View) softReference.get();
        bVar.e = -1;
        int statusBarBgColor = uIConfigBuild2.getStatusBarBgColor();
        boolean statusBarTextColor = uIConfigBuild2.getStatusBarTextColor();
        bVar.b = statusBarBgColor;
        bVar.c = statusBarTextColor;
        bVar.A0 = uIConfigBuild2.getFitsSystemWindows();
        int numberSize = uIConfigBuild2.getNumberSize();
        boolean numberBold = uIConfigBuild2.getNumberBold();
        if (numberSize > 8) {
            bVar.q = numberSize;
            bVar.r = numberBold;
        }
        bVar.s = uIConfigBuild2.getNumberColor();
        bVar.t = uIConfigBuild2.getNumberOffsetX();
        this.b = bVar;
        if (uIConfigBuild2.getNumFieldOffsetY() != -1) {
            o2.b bVar2 = this.b;
            bVar2.u = uIConfigBuild2.getNumFieldOffsetY();
            bVar2.v = 0;
        }
        if (uIConfigBuild2.getNumFieldOffsetY_B() != -1) {
            o2.b bVar3 = this.b;
            bVar3.v = uIConfigBuild2.getNumFieldOffsetY_B();
            bVar3.u = 0;
        }
        String resourceEntryName = context.getResources().getResourceEntryName(uIConfigBuild2.getLoginBtnBg());
        o2.b bVar4 = this.b;
        bVar4.i = uIConfigBuild2.getPrivacyNavTextColor();
        bVar4.j = uIConfigBuild2.getPrivacyNavBgColor();
        bVar4.h = uIConfigBuild2.getPrivacyNavTextSize();
        bVar4.f = uIConfigBuild2.getPrivacyNavClauseLayoutResID();
        bVar4.g = "returnId";
        bVar4.l = uIConfigBuild2.getClauseStatusColor();
        String loginBtnText = uIConfigBuild2.getLoginBtnText();
        if (!TextUtils.isEmpty(loginBtnText) && !Pattern.compile("^\\s*\\n*$").matcher(loginBtnText).matches()) {
            bVar4.w = loginBtnText;
            bVar4.x = false;
        }
        bVar4.A = uIConfigBuild2.getLoginBtnTextColor();
        bVar4.B = resourceEntryName;
        String loginBtnText2 = uIConfigBuild2.getLoginBtnText();
        int loginBtnTextColor = uIConfigBuild2.getLoginBtnTextColor();
        int loginBtnTextSize = uIConfigBuild2.getLoginBtnTextSize();
        boolean isLoginbtnTextBold = uIConfigBuild2.isLoginbtnTextBold();
        if (!TextUtils.isEmpty(loginBtnText2) && !Pattern.compile("^\\s*\\n*$").matcher(loginBtnText2).matches()) {
            bVar4.w = loginBtnText2;
            bVar4.x = false;
        }
        bVar4.A = loginBtnTextColor;
        bVar4.y = loginBtnTextSize;
        bVar4.z = isLoginbtnTextBold;
        if (uIConfigBuild2.getPrivacyTheme() > 0) {
            this.b.y0 = uIConfigBuild2.getPrivacyTheme();
        }
        if (uIConfigBuild2.getLogBtnOffsetY_B() != -1) {
            o2.b bVar5 = this.b;
            bVar5.H = uIConfigBuild2.getLogBtnOffsetY_B();
            bVar5.G = 0;
        }
        if (uIConfigBuild2.getLogBtnOffsetY() != -1) {
            o2.b bVar6 = this.b;
            bVar6.G = uIConfigBuild2.getLogBtnOffsetY();
            bVar6.H = 0;
        }
        o2.b bVar7 = this.b;
        bVar7.a = true;
        bVar7.N = new e();
        o2.b bVar8 = this.b;
        int loginButtonWidth = uIConfigBuild2.getLoginButtonWidth();
        int loginButtonHight = uIConfigBuild2.getLoginButtonHight();
        bVar8.C = loginButtonWidth;
        bVar8.D = loginButtonHight;
        int logBtnMarginLeft = uIConfigBuild2.getLogBtnMarginLeft();
        int logBtnMarginRight = uIConfigBuild2.getLogBtnMarginRight();
        bVar8.E = logBtnMarginLeft;
        bVar8.F = logBtnMarginRight;
        bVar8.L = new h();
        bVar8.K = new g();
        int checkBoxImageWidth = uIConfigBuild2.getCheckBoxImageWidth();
        int checkBoxImageHeight = uIConfigBuild2.getCheckBoxImageHeight();
        bVar8.P = "umcsdk_check_image";
        bVar8.Q = "umcsdk_uncheck_image";
        bVar8.R = checkBoxImageWidth;
        bVar8.S = checkBoxImageHeight;
        bVar8.T = uIConfigBuild2.isProtocolSeleted();
        bVar8.k = uIConfigBuild2.getBottomNavigationHidden();
        bVar8.n0 = uIConfigBuild2.getCheckBoxLocation();
        bVar8.N = new f();
        if (uIConfigBuild2.getUnCheckedWay().equalsIgnoreCase(AuthConstants.AUTHUNCHECKWAY_TOAST)) {
            this.b.a(uIConfigBuild2.getCheckTipText());
        } else if (uIConfigBuild2.getUnCheckedWay().equalsIgnoreCase(AuthConstants.AUTHUNCHECKWAY_SHAKE)) {
            o2.b bVar9 = this.b;
            bVar9.C0 = "umcsdk_anim_shake";
            bVar9.M = new i();
        } else if (uIConfigBuild2.getUnCheckedWay().equalsIgnoreCase(AuthConstants.AUTHUNCHECKWAY_SECONDAUTHDIALOG)) {
            o2.b bVar10 = this.b;
            bVar10.O = new k();
            bVar10.M = new j();
        }
        o2.b a2 = this.b.a(uIConfigBuild2.getPrivacyContentText(), uIConfigBuild2.getProtocolName(), uIConfigBuild2.getProtocolUrl(), uIConfigBuild2.getSecondProtocolName(), uIConfigBuild2.getSecondProtocolUrl(), uIConfigBuild2.getThirdProtocolName(), uIConfigBuild2.getThirdProtocolUrl(), uIConfigBuild2.getFourthProtocolName(), uIConfigBuild2.getFourthProtocolUrl());
        int privacyTextSize = uIConfigBuild2.getPrivacyTextSize();
        int clauseBaseColor = uIConfigBuild2.getClauseBaseColor();
        int clauseColor = uIConfigBuild2.getClauseColor();
        boolean isGravityCenter = uIConfigBuild2.isGravityCenter();
        a2.d0 = privacyTextSize;
        a2.f0 = clauseBaseColor;
        a2.g0 = clauseColor;
        a2.h0 = isGravityCenter;
        a2.e0 = false;
        int privacyOtherTextColor = uIConfigBuild2.getPrivacyOtherTextColor();
        int privacyColor = uIConfigBuild2.getPrivacyColor();
        a2.f0 = privacyOtherTextColor;
        a2.g0 = privacyColor;
        int privacyMarginLeft = uIConfigBuild2.getPrivacyMarginLeft();
        int privacyMarginRight = uIConfigBuild2.getPrivacyMarginRight();
        a2.i0 = privacyMarginLeft;
        a2.j0 = privacyMarginRight;
        a2.m0 = uIConfigBuild2.getPrivacyBookSymbol();
        if (uIConfigBuild2.getPrivacyOffsetY() != -1) {
            o2.b bVar11 = this.b;
            bVar11.k0 = uIConfigBuild2.getPrivacyOffsetY();
            bVar11.l0 = 0;
        }
        if (uIConfigBuild2.getPrivacyOffsetY_B() != -1) {
            o2.b bVar12 = this.b;
            bVar12.l0 = uIConfigBuild2.getPrivacyOffsetY_B();
            bVar12.k0 = 0;
        }
        if (!TextUtils.isEmpty(uIConfigBuild2.getAuthPageActIn_authPagein()) && !TextUtils.isEmpty(uIConfigBuild2.getAuthPageActIn_lastPageOut())) {
            o2.b bVar13 = this.b;
            String authPageActIn_authPagein = uIConfigBuild2.getAuthPageActIn_authPagein();
            String authPageActIn_lastPageOut = uIConfigBuild2.getAuthPageActIn_lastPageOut();
            bVar13.o0 = authPageActIn_authPagein;
            bVar13.p0 = authPageActIn_lastPageOut;
        }
        if (!TextUtils.isEmpty(uIConfigBuild2.getAuthPageActOut_authPageOut()) && !TextUtils.isEmpty(uIConfigBuild2.getAuthPageActOut_nextPagein())) {
            o2.b bVar14 = this.b;
            String authPageActOut_nextPagein = uIConfigBuild2.getAuthPageActOut_nextPagein();
            bVar14.q0 = uIConfigBuild2.getAuthPageActOut_authPageOut();
            bVar14.r0 = authPageActOut_nextPagein;
        }
        o2.b bVar15 = this.b;
        bVar15.s0 = 0;
        bVar15.t0 = 0;
        bVar15.x0 = uIConfigBuild2.getAuthPageWindowThemeId();
        if (uIConfigBuild2.getAuthPageWindowMode()) {
            o2.b bVar16 = this.b;
            int authPageWindowWith = uIConfigBuild2.getAuthPageWindowWith();
            int authPageWindowHight = uIConfigBuild2.getAuthPageWindowHight();
            bVar16.s0 = authPageWindowWith;
            bVar16.t0 = authPageWindowHight;
            int authPageWindowOffsetX = uIConfigBuild2.getAuthPageWindowOffsetX();
            int authPageWindowOffsetY = uIConfigBuild2.getAuthPageWindowOffsetY();
            bVar16.u0 = authPageWindowOffsetX;
            bVar16.v0 = authPageWindowOffsetY;
            bVar16.x0 = uIConfigBuild2.getAuthPageWindowThemeId();
            bVar16.w0 = uIConfigBuild2.getAuthPageWindowBottom();
            bVar16.B0 = uIConfigBuild2.getBackButton();
        }
        this.b.z0 = uIConfigBuild2.getAppLanguageType();
        o2 a3 = this.b.a();
        this.b = null;
        o2[] o2VarArr = {(o2) new SoftReference(a3).get()};
        p0 p0Var = this.a;
        p0Var.h = o2VarArr[0];
        String str = aVar.a;
        String str2 = aVar.b;
        a aVar2 = new a(modelCallback);
        l0 a4 = p0Var.a(aVar2);
        a4.a("SDKRequestCode", -1);
        k2.a(new n0(p0Var, p0Var.b, a4, a4, str, str2, aVar2));
    }

    public void b(Context context, ModelCallback modelCallback, f3.a aVar) {
        p0 b2 = p0.b(context.getApplicationContext());
        String str = aVar.a;
        String str2 = aVar.b;
        b bVar = new b(this, modelCallback);
        l0 a2 = b2.a(bVar);
        a2.a("SDKRequestCode", -1);
        k2.a(new o0(b2, b2.b, a2, a2, str, str2, bVar));
    }

    public void a(Context context, ModelCallback modelCallback, f3.a aVar) {
        if (modelCallback == null) {
            return;
        }
        p0 b2 = p0.b(context);
        this.a = b2;
        String str = aVar.a;
        String str2 = aVar.b;
        c cVar = new c(this, modelCallback);
        l0 a2 = b2.a(cVar);
        a2.a("SDKRequestCode", 8000);
        k2.a(new m0(b2, b2.b, a2, a2, str, str2, cVar));
    }
}
