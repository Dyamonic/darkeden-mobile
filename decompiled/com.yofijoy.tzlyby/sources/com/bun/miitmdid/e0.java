package com.bun.miitmdid;

import android.content.Context;

/* loaded from: classes.dex */
public class e0 extends n {
    public Context l;

    public e0(Context context) {
        this.l = context;
    }

    @Override // com.bun.miitmdid.n
    public native g d();

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IIdProvider
    public native void doStart();

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IIdProvider
    public native boolean isSync();
}
