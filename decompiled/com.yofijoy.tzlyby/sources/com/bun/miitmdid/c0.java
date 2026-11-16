package com.bun.miitmdid;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.bun.lib.MsaIdInterface;
import java.util.Objects;

/* loaded from: classes.dex */
public class c0 {
    public static String a = "MsaClient";
    public ServiceConnection b;
    public Context c;
    public MsaIdInterface d;

    /* loaded from: classes.dex */
    public class a implements ServiceConnection {
        public final /* synthetic */ d0 a;

        public a(d0 d0Var) {
            this.a = d0Var;
        }

        @Override // android.content.ServiceConnection
        public native synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder);

        @Override // android.content.ServiceConnection
        public native void onServiceDisconnected(ComponentName componentName);
    }

    public c0(Context context, d0 d0Var) {
        Objects.requireNonNull(context, "Context can not be null.");
        this.c = context;
        this.b = new a(d0Var);
    }

    public static native void a(Context context, String str);

    public native String a();

    public native void a(String str);

    public native String b();

    public native String c();

    public native boolean d();

    public native void e();
}
