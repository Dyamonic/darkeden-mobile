package com.bun.miitmdid;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.samsung.android.deviceidservice.IDeviceIdService;

/* loaded from: classes.dex */
public class x extends m implements ServiceConnection {
    public Context n;
    public String o;
    public ServiceConnection p;
    public IDeviceIdService q;

    public x(Context context) {
        this.n = context;
        Context a = a(context);
        this.n = a;
        this.o = a != null ? a.getPackageName() : "";
    }

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void doStart();

    @Override // com.bun.miitmdid.m, com.bun.miitmdid.interfaces.IIdProvider
    public native boolean isSync();

    @Override // android.content.ServiceConnection
    public native void onServiceConnected(ComponentName componentName, IBinder iBinder);

    @Override // android.content.ServiceConnection
    public native void onServiceDisconnected(ComponentName componentName);

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void shutDown();
}
