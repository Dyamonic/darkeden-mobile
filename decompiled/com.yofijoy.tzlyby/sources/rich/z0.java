package rich;

import android.text.TextUtils;
import com.rich.oauth.util.CmccReturnCodeUtil;

/* loaded from: classes2.dex */
public class z0 implements y0 {
    public y0 a;
    public t1 b;
    public final l1 c = new l1();

    @Override // rich.y0
    public void a(o1 o1Var, t1 t1Var, l0 l0Var) {
        b(o1Var, t1Var, l0Var);
    }

    public void b(o1 o1Var, t1 t1Var, l0 l0Var) {
        if (this.a != null) {
            this.b = new a(o1Var, l0Var, t1Var);
            if (o1Var.a()) {
                this.a.a(o1Var, this.b, l0Var);
            } else {
                t1Var.a(r1.a(CmccReturnCodeUtil.CODE_200025));
            }
        }
    }

    /* loaded from: classes2.dex */
    public class a implements t1 {
        public final /* synthetic */ o1 a;
        public final /* synthetic */ l0 b;
        public final /* synthetic */ t1 c;

        public a(o1 o1Var, l0 l0Var, t1 t1Var) {
            this.a = o1Var;
            this.b = l0Var;
            this.c = t1Var;
        }

        @Override // rich.t1
        public void a(r1 r1Var) {
            o1 o1Var = this.a;
            int i = o1Var.j;
            o1Var.j = i + 1;
            if (!(i < 2)) {
                this.c.a(r1Var);
                return;
            }
            StringBuilder a = rich.a.a("retry: ");
            a.append(this.a.a);
            c2.a("RetryAndRedirectInterceptor", a.toString());
            z0.this.b(this.a, this.c, this.b);
        }

        @Override // rich.t1
        public void a(s1 s1Var) {
            int i = s1Var.a;
            if (i == 302 || i == 301) {
                z0.this.b(z0.this.c.a(this.a, s1Var, this.b), this.c, this.b);
            } else if (TextUtils.isEmpty(z0.this.c.a)) {
                this.c.a(s1Var);
            } else {
                z0.this.b(z0.this.c.b(this.a, s1Var, this.b), this.c, this.b);
            }
        }
    }
}
