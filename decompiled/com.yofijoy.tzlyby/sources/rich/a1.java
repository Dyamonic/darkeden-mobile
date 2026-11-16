package rich;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;
import rich.k2;
import rich.m2;

/* loaded from: classes2.dex */
public class a1 implements y0 {
    public y0 a;

    /* loaded from: classes2.dex */
    public class a implements m2.b {
        public final AtomicBoolean a = new AtomicBoolean(false);
        public final /* synthetic */ l0 b;
        public final /* synthetic */ o1 c;
        public final /* synthetic */ t1 d;
        public final /* synthetic */ m2 e;

        /* renamed from: rich.a1$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0070a extends k2.a {
            public final /* synthetic */ Network b;
            public final /* synthetic */ ConnectivityManager.NetworkCallback c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0070a(Context context, l0 l0Var, Network network, ConnectivityManager.NetworkCallback networkCallback) {
                super(context, l0Var);
                this.b = network;
                this.c = networkCallback;
            }

            @Override // rich.k2.a
            public void a() {
                if (this.b != null) {
                    c2.b("WifiChangeInterceptor", "onAvailable");
                    a aVar = a.this;
                    o1 o1Var = aVar.c;
                    o1Var.g = this.b;
                    a1 a1Var = a1.this;
                    t1 t1Var = aVar.d;
                    l0 l0Var = aVar.b;
                    y0 y0Var = a1Var.a;
                    if (y0Var != null) {
                        y0Var.a(o1Var, new b1(a1Var, t1Var), l0Var);
                    }
                } else {
                    a.this.d.a(r1.a(102508));
                }
                m2 m2Var = a.this.e;
                ConnectivityManager.NetworkCallback networkCallback = this.c;
                if (m2Var.a == null) {
                    return;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 21 && networkCallback != null) {
                        c2.b("WifiNetworkUtils", "unregisterNetworkCallback");
                        m2Var.a.unregisterNetworkCallback(networkCallback);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public a(l0 l0Var, o1 o1Var, t1 t1Var, m2 m2Var) {
            this.b = l0Var;
            this.c = o1Var;
            this.d = t1Var;
            this.e = m2Var;
        }

        public void a(Network network, ConnectivityManager.NetworkCallback networkCallback) {
            if (this.a.getAndSet(true)) {
                return;
            }
            k2.a(new C0070a(null, this.b, network, networkCallback));
        }
    }

    @Override // rich.y0
    public void a(o1 o1Var, t1 t1Var, l0 l0Var) {
        if (!o1Var.e) {
            y0 y0Var = this.a;
            if (y0Var != null) {
                y0Var.a(o1Var, new b1(this, t1Var), l0Var);
                return;
            }
            return;
        }
        m2 a2 = m2.a((Context) null);
        if (Build.VERSION.SDK_INT >= 21) {
            a2.a(new a(l0Var, o1Var, t1Var, a2));
        } else {
            c2.a("WifiChangeInterceptor", "低版本不在支持wifi切换");
            t1Var.a(r1.a(102508));
        }
    }
}
