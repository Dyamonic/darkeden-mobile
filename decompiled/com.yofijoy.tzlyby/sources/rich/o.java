package rich;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
import rich.c;
import rich.q;
import rich.v;

/* loaded from: classes2.dex */
public abstract class o implements Comparable {
    public static long n;
    public final v.a a;
    public final int b;
    public final String c;
    public String d;
    public final int e;
    public q.a f;
    public Integer g;
    public p h;
    public boolean i;
    public boolean j;
    public boolean k;
    public e l;
    public c.a m;

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public final /* synthetic */ String a;
        public final /* synthetic */ long b;

        public a(String str, long j) {
            this.a = str;
            this.b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.a.a(this.a, this.b);
            o.this.a.a(toString());
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public o(int i, String str, q.a aVar) {
        Uri parse;
        String host;
        this.a = v.a.c ? new v.a() : null;
        this.i = true;
        int i2 = 0;
        this.j = false;
        this.k = false;
        this.m = null;
        this.b = i;
        this.c = str;
        StringBuilder sb = new StringBuilder();
        sb.append("Request:");
        sb.append(i);
        sb.append(":");
        sb.append(str);
        sb.append(":");
        sb.append(System.currentTimeMillis());
        sb.append(":");
        long j = n;
        n = 1 + j;
        sb.append(j);
        g.a(sb.toString());
        this.f = aVar;
        this.l = new e(2500, 0, 1.0f);
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.e = i2;
    }

    public abstract q a(k kVar);

    public u a(u uVar) {
        return uVar;
    }

    public void a(String str) {
        if (v.a.c) {
            this.a.a(str, Thread.currentThread().getId());
        }
    }

    public byte[] a() {
        return null;
    }

    public String b() {
        return this.b + ":" + this.c;
    }

    public void b(String str) {
        p pVar = this.h;
        if (pVar != null) {
            pVar.b(this);
            i();
        }
        if (v.a.c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new a(str, id));
            } else {
                this.a.a(str, id);
                this.a.a(toString());
            }
        }
    }

    public Map c() {
        return Collections.emptyMap();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        o oVar = (o) obj;
        b bVar = b.NORMAL;
        b f = oVar.f();
        return bVar == f ? this.g.intValue() - oVar.g.intValue() : f.ordinal() - bVar.ordinal();
    }

    @Deprecated
    public byte[] d() {
        return null;
    }

    @Deprecated
    public String e() {
        return f0.q;
    }

    public b f() {
        return b.NORMAL;
    }

    public final int g() {
        return this.l.a;
    }

    public String h() {
        String str = this.d;
        return str != null ? str : this.c;
    }

    public void i() {
        this.f = null;
    }

    public String toString() {
        StringBuilder a2 = rich.a.a("0x");
        a2.append(Integer.toHexString(this.e));
        String sb = a2.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.j ? "[X] " : "[ ] ");
        sb2.append(h());
        sb2.append(" ");
        sb2.append(sb);
        sb2.append(" ");
        sb2.append(b.NORMAL);
        sb2.append(" ");
        sb2.append(this.g);
        return sb2.toString();
    }
}
