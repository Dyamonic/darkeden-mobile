package com.tencent.turingfd.sdk.ams.ad;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import java.util.concurrent.LinkedBlockingQueue;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.protected, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cprotected {

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.protected$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class Cdo {
        public final String a;
        public final boolean b;

        public Cdo(String str, boolean z) {
            this.a = str;
            this.b = z;
        }
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.protected$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class Cif implements ServiceConnection {
        public boolean a = false;
        public final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue<>(1);

        public IBinder a() throws InterruptedException {
            if (!this.a) {
                this.a = true;
                return this.b.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static Cdo a() {
        Context context;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return null;
        }
        synchronized (Ccase.class) {
            context = Ccase.a;
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            Cif cif = new Cif();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (context.bindService(intent, cif, 1)) {
                try {
                    IBinder a = cif.a();
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                        a.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        String readString = obtain2.readString();
                        obtain2.recycle();
                        obtain.recycle();
                        obtain = Parcel.obtain();
                        obtain2 = Parcel.obtain();
                        try {
                            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                            obtain.writeInt(1);
                            a.transact(2, obtain, obtain2, 0);
                            obtain2.readException();
                            boolean z = obtain2.readInt() != 0;
                            obtain2.recycle();
                            obtain.recycle();
                            return new Cdo(readString, z);
                        } finally {
                        }
                    } finally {
                    }
                } catch (Exception unused) {
                } finally {
                    context.unbindService(cif);
                }
            }
        } catch (Exception unused2) {
        }
        return null;
    }
}
