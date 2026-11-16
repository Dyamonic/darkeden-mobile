package com.bun.miitmdid;

import android.content.Context;
import com.bun.miitmdid.interfaces.IIdProvider;
import com.bun.miitmdid.interfaces.IIdentifierListener;

/* loaded from: classes.dex */
public abstract class o implements IIdProvider {
    public static final char[] a = {'0', '-'};
    public IIdentifierListener b;
    public boolean c;
    public boolean d;
    public boolean e;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    public native Context a(Context context);

    public native void a(String str, String str2, String str3, boolean z, boolean z2);

    public native boolean a();

    public native boolean b();

    public native boolean c();

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void doStartInThreadPool(IIdentifierListener iIdentifierListener);

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void doStartSync(IIdentifierListener iIdentifierListener);

    @Override // com.bun.miitmdid.interfaces.IIdProvider
    public native void setGetIdFlag(boolean z, boolean z2, boolean z3);
}
