package rich;

import android.R;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class o2 {
    public int A;
    public String A0;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public String G;
    public boolean H;
    public p2 I;
    public s2 J;
    public q2 K;
    public r2 L;
    public n2 M;
    public String N;
    public String O;
    public int P;
    public int Q;
    public boolean R;
    public String S;
    public String T;
    public String U;
    public String V;
    public String W;
    public String X;
    public String Y;
    public String Z;
    public final boolean a;
    public String a0;
    public int b;
    public int b0;
    public boolean c;
    public boolean c0;
    public View d;
    public int d0;
    public int e;
    public int e0;
    public int f;
    public boolean f0;
    public String g;
    public int g0;
    public int h;
    public int h0;
    public int i;
    public int i0;
    public int j;
    public int j0;
    public boolean k;
    public int k0;
    public int l;
    public boolean l0;
    public int m;
    public String m0;
    public int n;
    public String n0;
    public int o;
    public String o0;
    public boolean p;
    public String p0;
    public int q;
    public int q0;
    public int r;
    public int r0;
    public int s;
    public int s0;
    public int t;
    public int t0;
    public String u;
    public int u0;
    public boolean v;
    public int v0;
    public int w;
    public int w0;
    public boolean x;
    public int x0;
    public int y;
    public boolean y0;
    public String z;
    public boolean z0;

    /* loaded from: classes2.dex */
    public static class b {
        public String C0;
        public String I;
        public boolean J;
        public p2 K;
        public s2 L;
        public q2 M;
        public r2 N;
        public n2 O;
        public boolean a;
        public String g;
        public boolean k;
        public int n0;
        public String o0;
        public String p0;
        public String q0;
        public String r0;
        public int s0;
        public int t0;
        public int u0;
        public int v0;
        public int b = 0;
        public boolean c = false;
        public View d = null;
        public int e = -1;
        public int f = -1;
        public int h = 17;
        public int i = -1;
        public int j = -16742704;
        public int l = -16742704;
        public String m = "return_bg";
        public int n = -2;
        public int o = -2;
        public ImageView.ScaleType p = ImageView.ScaleType.CENTER;
        public int q = 18;
        public boolean r = false;
        public int s = -16742704;
        public int t = 0;
        public int u = 184;
        public int v = 0;
        public String w = "本机号码一键登录";
        public boolean x = true;
        public int y = 15;
        public boolean z = false;
        public int A = -1;
        public String B = "umcsdk_login_btn_bg";
        public int C = -1;
        public int D = 36;
        public int E = 46;
        public int F = 46;
        public int G = 254;
        public int H = 0;
        public String P = "umcsdk_check_image";
        public String Q = "umcsdk_uncheck_image";
        public int R = 9;
        public int S = 9;
        public boolean T = false;
        public String U = "登录即同意$$运营商条款$$并使用本机号码登录";
        public String V = null;
        public String W = null;
        public String X = null;
        public String Y = null;
        public String Z = null;
        public String a0 = null;
        public String b0 = null;
        public String c0 = null;
        public int d0 = 10;
        public boolean e0 = false;
        public int f0 = -10066330;
        public int g0 = -16007674;
        public boolean h0 = false;
        public int i0 = 52;
        public int j0 = 52;
        public int k0 = 0;
        public int l0 = 30;
        public boolean m0 = true;
        public int w0 = 0;
        public int x0 = -1;
        public int y0 = R.style.Theme.Translucent.NoTitleBar;
        public int z0 = 0;
        public boolean A0 = true;
        public boolean B0 = true;

        public b a(String str) {
            boolean z = TextUtils.isEmpty(str) || str.length() > 100;
            this.J = z;
            if (z) {
                str = "请勾选同意服务条款";
            }
            this.I = str;
            return this;
        }

        public b a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            if (str.contains("$$运营商条款$$")) {
                this.U = str;
                this.V = str2;
                this.W = str3;
                this.X = str4;
                this.Y = str5;
                this.Z = str6;
                this.a0 = str7;
                this.b0 = str8;
                this.c0 = str9;
            }
            return this;
        }

        public o2 a() {
            return new o2(this, null);
        }

        public b b(String str) {
            this.B = str;
            return this;
        }
    }

    public /* synthetic */ o2(b bVar, a aVar) {
        this.v = true;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.a0 = null;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
        String str = bVar.m;
        this.m = bVar.n;
        this.n = bVar.o;
        ImageView.ScaleType scaleType = bVar.p;
        this.o = bVar.q;
        this.p = bVar.r;
        this.q = bVar.s;
        this.r = bVar.t;
        this.s = bVar.u;
        this.t = bVar.v;
        this.u = bVar.w;
        this.v = bVar.x;
        this.w = bVar.y;
        this.x = bVar.z;
        this.y = bVar.A;
        this.z = bVar.B;
        this.A = bVar.C;
        this.B = bVar.D;
        this.C = bVar.E;
        this.D = bVar.F;
        this.E = bVar.G;
        this.F = bVar.H;
        this.G = bVar.I;
        this.H = bVar.J;
        this.I = bVar.K;
        this.J = bVar.L;
        this.K = bVar.M;
        this.L = bVar.N;
        this.N = bVar.P;
        this.O = bVar.Q;
        this.P = bVar.R;
        this.Q = bVar.S;
        this.R = bVar.T;
        this.S = bVar.U;
        this.T = bVar.V;
        this.U = bVar.W;
        this.V = bVar.X;
        this.W = bVar.Y;
        this.X = bVar.Z;
        this.Y = bVar.a0;
        this.Z = bVar.b0;
        this.a0 = bVar.c0;
        this.b0 = bVar.d0;
        this.c0 = bVar.e0;
        this.d0 = bVar.f0;
        this.e0 = bVar.g0;
        this.f0 = bVar.h0;
        this.h0 = bVar.i0;
        this.i0 = bVar.j0;
        this.j0 = bVar.k0;
        this.k0 = bVar.l0;
        this.l0 = bVar.m0;
        this.g0 = bVar.n0;
        this.m0 = bVar.o0;
        this.n0 = bVar.p0;
        this.o0 = bVar.q0;
        this.p0 = bVar.r0;
        this.q0 = bVar.s0;
        this.r0 = bVar.t0;
        this.s0 = bVar.u0;
        this.t0 = bVar.v0;
        this.u0 = bVar.w0;
        this.v0 = bVar.x0;
        this.w0 = bVar.y0;
        this.x0 = bVar.z0;
        this.y0 = bVar.A0;
        this.z0 = bVar.B0;
        this.A0 = bVar.C0;
        this.a = bVar.a;
        this.M = bVar.O;
    }

    public String a() {
        if (this.H) {
            int i = this.x0;
            this.G = i == 1 ? "請勾選同意服務條款" : i == 2 ? "Please check to agree to the terms of service" : "请勾选同意服务条款";
        }
        return this.G;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.k;
    }
}
