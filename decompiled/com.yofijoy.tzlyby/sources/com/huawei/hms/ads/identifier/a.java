package com.huawei.hms.ads.identifier;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class a implements ServiceConnection {
    public static final ThreadPoolExecutor a = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());
    public boolean b = false;
    private final LinkedBlockingQueue<IBinder> c = new LinkedBlockingQueue<>(1);

    /* renamed from: com.huawei.hms.ads.identifier.a$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ IBinder a;

        public AnonymousClass1(IBinder iBinder) {
            this.a = iBinder;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    public native IBinder a();

    @Override // android.content.ServiceConnection
    public native void onServiceConnected(ComponentName componentName, IBinder iBinder);

    @Override // android.content.ServiceConnection
    public native void onServiceDisconnected(ComponentName componentName);
}
