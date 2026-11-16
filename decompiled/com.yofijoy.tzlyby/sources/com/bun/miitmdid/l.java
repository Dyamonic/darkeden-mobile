package com.bun.miitmdid;

import android.content.Context;
import com.android.msasdk.FreemeIdsSupplier;
import com.android.msasdk.IConnect;

/* loaded from: classes.dex */
public class l extends m implements IConnect {
    public Context n;
    public String o;
    public FreemeIdsSupplier p;

    public l(Context context) {
        this.n = context;
    }

    @Override // com.android.msasdk.IConnect
    public native void connectSuccess(boolean z);

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void doStart();

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void shutDown();
}
