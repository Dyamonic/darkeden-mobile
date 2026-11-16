package com.bun.miitmdid;

import android.content.Context;
import android.os.IBinder;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import com.asus.msa.sdid.IDIDBinderStatusListener;
import com.asus.msa.sdid.SupplementaryDIDManager;

/* loaded from: classes.dex */
public class i extends m implements IDIDBinderStatusListener {
    public Context n;
    public final SupplementaryDIDManager o;

    public i(Context context) {
        this.n = context;
        this.o = new SupplementaryDIDManager(context);
    }

    @Override // android.os.IInterface
    public native IBinder asBinder();

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void doStart();

    @Override // com.bun.miitmdid.m, com.bun.miitmdid.interfaces.IIdProvider
    public native boolean isSync();

    @Override // com.asus.msa.sdid.IDIDBinderStatusListener
    public native void onError();

    @Override // com.asus.msa.sdid.IDIDBinderStatusListener
    public native void onSuccess(IDidAidlInterface iDidAidlInterface);

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void shutDown();
}
