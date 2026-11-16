package rich;

import android.content.Context;
import android.content.Intent;
import com.cmic.gen.sdk.view.GenLoginAuthActivity;
import org.json.JSONObject;
import rich.o2;
import rich.t0;

/* loaded from: classes2.dex */
public class p0 extends t0 {
    public static p0 j;
    public o2 h;
    public t2 i;

    /* loaded from: classes2.dex */
    public class a implements s0 {
        public final /* synthetic */ t0.d a;

        public a(t0.d dVar) {
            this.a = dVar;
        }

        @Override // rich.s0
        public void a(String str, String str2, l0 l0Var, JSONObject jSONObject) {
            c2.b("onBusinessComplete", "onBusinessComplete");
            p0.this.d.removeCallbacks(this.a);
            if ("103000".equals(str) && !d2.a(l0Var.b("traceId", ""))) {
                Context context = p0.this.b;
                String b = l0Var.b("traceId", "");
                Intent intent = new Intent();
                intent.putExtra("traceId", b);
                d2.a(l0Var.b("traceId", ""), l0Var);
                intent.setClassName(context, "com.cmic.gen.sdk.view.GenLoginAuthActivity");
                intent.setFlags(268435456);
                context.startActivity(intent);
                return;
            }
            p0.this.a(str, str2, l0Var, jSONObject);
        }
    }

    public p0(Context context) {
        super(context);
        this.i = null;
    }

    public static p0 b(Context context) {
        if (j == null) {
            synchronized (p0.class) {
                if (j == null) {
                    j = new p0(context);
                }
            }
        }
        return j;
    }

    @Override // rich.t0
    public void a(l0 l0Var) {
        t0.d dVar = new t0.d(l0Var);
        this.d.postDelayed(dVar, this.c);
        this.a.a(l0Var, new a(dVar));
    }

    public o2 c() {
        if (this.h == null) {
            this.h = new o2.b().a();
        }
        return this.h;
    }

    public void d() {
        try {
            if (u2.a().a != null) {
                u2.a().b = 0;
                ((GenLoginAuthActivity.j) u2.a().a).a();
            }
        } catch (Exception e) {
            e.printStackTrace();
            c2.a("AuthnHelper", "关闭授权页失败");
        }
    }
}
