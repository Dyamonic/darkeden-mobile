package com.bun.miitmdid;

import android.content.Context;
import com.bun.lib.MsaIdInterface;

/* loaded from: classes.dex */
public class f0 extends m {
    public Context n;
    public String o;
    public c0 p;

    /* loaded from: classes.dex */
    public class a implements d0 {
        public a() {
        }

        @Override // com.bun.miitmdid.d0
        public native void a(MsaIdInterface msaIdInterface);
    }

    public f0(Context context) {
        h0.c("ZteProvider", "ZteProvider(Context)");
        this.n = context;
        this.o = context.getPackageName();
        try {
        } catch (Exception unused) {
            h0.d("ZteProvider", "Constructor: MsaService not found");
        }
        if (context.getPackageManager().getPackageInfo("com.mdid.msa", 0) == null) {
            h0.d("ZteProvider", "Constructor: getPackageInfo is null");
            throw new NullPointerException("Constructor: getPackageInfo is null");
        }
        try {
            c0.a(this.n, this.o);
            h0.c("ZteProvider", "Constructor: MsaService start success");
        } catch (Exception e) {
            h0.b("ZteProvider", "Constructor: MsaService start Exception: " + e.getMessage());
        }
    }

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public void doStart() {
        h0.c("ZteProvider", "doStart()");
        try {
            this.n = a(this.n);
            f();
            c0 c0Var = new c0(this.n, new a());
            this.p = c0Var;
            c0Var.a(this.o);
            h0.c("ZteProvider", "doStart: BindService success");
            e();
        } catch (Exception e) {
            h0.d("ZteProvider", "doStart: Exception: " + e.getMessage());
            d();
            h();
        }
    }

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public void shutDown() {
        c0 c0Var = this.p;
        if (c0Var != null) {
            c0Var.e();
        }
    }
}
