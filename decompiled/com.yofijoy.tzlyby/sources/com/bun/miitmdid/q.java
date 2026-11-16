package com.bun.miitmdid;

import android.content.Context;
import com.zui.opendeviceidlibrary.OpenDeviceId;

/* loaded from: classes.dex */
public class q extends m implements OpenDeviceId.CallBack<String> {
    public Context n;
    public OpenDeviceId o;

    public q(Context context) {
        this.n = context;
    }

    @Override // com.zui.opendeviceidlibrary.OpenDeviceId.CallBack
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public native void serviceConnected(String str, OpenDeviceId openDeviceId);

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void doStart();

    @Override // com.bun.miitmdid.m, com.bun.miitmdid.interfaces.IIdProvider
    public native boolean isSync();

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void shutDown();
}
