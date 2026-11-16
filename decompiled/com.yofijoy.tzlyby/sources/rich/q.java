package rich;

import rich.c;

/* loaded from: classes2.dex */
public class q {
    public final Object a;
    public final c.a b;
    public final u c;
    public boolean d;

    /* loaded from: classes2.dex */
    public interface a {
        void a(u uVar);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(Object obj);
    }

    public q(Object obj, c.a aVar) {
        this.d = false;
        this.a = obj;
        this.b = aVar;
        this.c = null;
    }

    public q(u uVar) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = uVar;
    }
}
