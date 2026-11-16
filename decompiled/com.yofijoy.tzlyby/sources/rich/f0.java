package rich;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import rich.q;

/* loaded from: classes2.dex */
public abstract class f0 extends o {
    public static final String q = String.format("application/json; charset=%s", "utf-8");
    public q.b o;
    public final String p;

    public f0(int i, String str, String str2, q.b bVar, q.a aVar) {
        super(i, str, aVar);
        this.o = bVar;
        this.p = str2;
    }

    @Override // rich.o
    public byte[] a() {
        try {
            String str = this.p;
            if (str == null) {
                return null;
            }
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            Log.wtf("Volley", v.a("Unsupported Encoding while trying to get the bytes of %s using %s", this.p, "utf-8"));
            return null;
        }
    }

    @Override // rich.o
    public byte[] d() {
        return a();
    }

    @Override // rich.o
    public String e() {
        return q;
    }

    @Override // rich.o
    public void i() {
        super.i();
        this.o = null;
    }
}
