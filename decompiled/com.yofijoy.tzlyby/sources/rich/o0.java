package rich;

import android.content.Context;
import rich.k2;

/* loaded from: classes2.dex */
public class o0 extends k2.a {
    public final /* synthetic */ l0 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ q0 e;
    public final /* synthetic */ p0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(p0 p0Var, Context context, l0 l0Var, l0 l0Var2, String str, String str2, q0 q0Var) {
        super(context, l0Var);
        this.f = p0Var;
        this.b = l0Var2;
        this.c = str;
        this.d = str2;
        this.e = q0Var;
    }

    @Override // rich.k2.a
    public void a() {
        if (this.f.a(this.b, this.c, this.d, "mobileAuth", 0, this.e)) {
            super/*rich.t0*/.a(this.b);
        }
    }
}
