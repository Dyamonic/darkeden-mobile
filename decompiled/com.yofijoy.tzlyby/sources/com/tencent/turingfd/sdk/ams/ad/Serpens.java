package com.tencent.turingfd.sdk.ams.ad;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class Serpens implements Aquila {
    public Phoenix a;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Serpens$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements ServiceConnection {
        public final /* synthetic */ AtomicReference a;
        public final /* synthetic */ AtomicReference b;
        public final /* synthetic */ Object c;

        public Cdo(Serpens serpens, AtomicReference atomicReference, AtomicReference atomicReference2, Object obj) {
            this.a = atomicReference;
            this.b = atomicReference2;
            this.c = obj;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.a.set(iBinder);
            this.b.set(this);
            synchronized (this.c) {
                try {
                    this.c.notifyAll();
                } catch (Throwable unused) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    @Override // com.tencent.turingfd.sdk.ams.ad.Aquila
    public Phoenix a(Context context) {
        Phoenix phoenix = this.a;
        if (phoenix == null || phoenix.b != 0) {
            this.a = c(context);
        }
        return this.a;
    }

    public abstract String a(IBinder iBinder) throws Exception;

    @Override // com.tencent.turingfd.sdk.ams.ad.Aquila
    public void b(Context context) {
        this.a = c(context);
    }

    public final Phoenix c(Context context) {
        int i;
        AtomicReference<String> atomicReference = new AtomicReference<>();
        atomicReference.set("");
        try {
            AtomicReference<IBinder> atomicReference2 = new AtomicReference<>();
            AtomicReference<ServiceConnection> atomicReference3 = new AtomicReference<>();
            i = a(context, atomicReference2, atomicReference3);
            if (i == 0) {
                try {
                    i = a(context, atomicReference2, atomicReference3, atomicReference);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            i = -1;
        }
        return new Phoenix(atomicReference.get(), i);
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Serpens$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cif extends Thread {
        public final /* synthetic */ AtomicReference a;
        public final /* synthetic */ AtomicReference b;
        public final /* synthetic */ AtomicReference c;
        public final /* synthetic */ Context d;
        public final /* synthetic */ AtomicReference e;
        public final /* synthetic */ Object f;

        public Cif(AtomicReference atomicReference, AtomicReference atomicReference2, AtomicReference atomicReference3, Context context, AtomicReference atomicReference4, Object obj) {
            this.a = atomicReference;
            this.b = atomicReference2;
            this.c = atomicReference3;
            this.d = context;
            this.e = atomicReference4;
            this.f = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String str = "";
            try {
                str = Serpens.this.a((IBinder) this.a.get());
            } catch (Throwable unused) {
                this.b.set(-102);
            }
            this.c.set(str);
            try {
                this.d.unbindService((ServiceConnection) this.e.get());
            } catch (Throwable unused2) {
                this.b.set(-103);
            }
            synchronized (this.f) {
                try {
                    this.f.notifyAll();
                } catch (Throwable unused3) {
                }
            }
        }
    }

    public final int a(Context context, AtomicReference<IBinder> atomicReference, AtomicReference<ServiceConnection> atomicReference2) {
        Object obj = new Object();
        Intent intent = new Intent(Cfinally.a(Cfinally.k));
        intent.setComponent(new ComponentName(Cfinally.a(Cfinally.g), Cfinally.a(Cfinally.h)));
        if (!context.bindService(intent, new Cdo(this, atomicReference, atomicReference2, obj), 1)) {
            return -100;
        }
        if (atomicReference.get() == null) {
            synchronized (obj) {
                try {
                    obj.wait(1000L);
                } catch (Throwable unused) {
                }
            }
        }
        return atomicReference.get() == null ? -105 : 0;
    }

    public final int a(Context context, AtomicReference<IBinder> atomicReference, AtomicReference<ServiceConnection> atomicReference2, AtomicReference<String> atomicReference3) {
        Object obj = new Object();
        AtomicReference atomicReference4 = new AtomicReference(0);
        new Cif(atomicReference, atomicReference4, atomicReference3, context, atomicReference2, obj).start();
        synchronized (obj) {
            try {
                obj.wait(1000L);
            } catch (Throwable unused) {
            }
        }
        return ((Integer) atomicReference4.get()).intValue();
    }
}
