package com.bun.miitmdid;

/* loaded from: classes.dex */
public abstract class m extends o {
    public volatile long k;
    public volatile boolean m;
    public volatile String f = "";
    public volatile String g = "";
    public volatile String h = "";
    public volatile boolean i = false;
    public volatile boolean j = false;
    public volatile long l = 5000;

    public native void d();

    public native void e();

    public native void f();

    public native boolean g();

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public native String getAAID();

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public native String getOAID();

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public native String getVAID();

    public native void h();

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public native boolean isLimited();

    @Override // com.bun.miitmdid.interfaces.IdSupplier
    public native boolean isSupported();

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native boolean isSync();
}
