package com.tencent.turingfd.sdk.ams.ad;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Base64;
import com.taptap.sdk.update.download.DownloadTask;
import com.tencent.turingfd.sdk.ams.ad.Bootes;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Cumquat {
    public static final String a = Cfinally.a(Cfinally.G0);

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Cumquat$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements ServiceConnection {
        public final /* synthetic */ AtomicReference a;
        public final /* synthetic */ long b;
        public final /* synthetic */ Object c;

        /* renamed from: com.tencent.turingfd.sdk.ams.ad.Cumquat$do$do, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0053do extends Thread {
            public final /* synthetic */ IBinder a;

            public C0053do(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Bootes c0052do;
                int i;
                IBinder iBinder = this.a;
                String str = Bootes.Cdo.a;
                if (iBinder == null) {
                    c0052do = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface(Bootes.Cdo.a);
                    if (queryLocalInterface != null && (queryLocalInterface instanceof Bootes)) {
                        c0052do = (Bootes) queryLocalInterface;
                    } else {
                        c0052do = new Bootes.Cdo.C0052do(iBinder);
                    }
                }
                try {
                    if (c0052do.c(DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS)) {
                        i = 0;
                    } else {
                        c0052do.b(DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS);
                        i = 1;
                    }
                    Cif a = Cumquat.a(c0052do.d(DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS).b);
                    int i2 = a.a;
                    if (i2 != 0) {
                        Cdo.this.a.set(Coconut.a(i2, i));
                    } else {
                        Cranberry cranberry = a.b;
                        Cdo.this.a.set(new Coconut(0, 200, System.currentTimeMillis() - Cdo.this.b, cranberry.c, c0052do.a(), i));
                    }
                } catch (Throwable unused) {
                    Cdo.this.a.set(Coconut.a(-2003, -1));
                }
                synchronized (Cdo.this.c) {
                    Cdo.this.c.notify();
                }
                if (Kiwifruit.f.a("s_t_d_ask", false)) {
                    try {
                        c0052do.a(DownloadTask.Builder.DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        public Cdo(AtomicReference atomicReference, long j, Object obj) {
            this.a = atomicReference;
            this.b = j;
            this.c = obj;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            new C0053do(iBinder).start();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.a.set(Coconut.a(-2004, -3));
            synchronized (this.c) {
                this.c.notify();
            }
        }
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Cumquat$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cif {
        public int a;
        public Cranberry b;

        public Cif(int i, Cranberry cranberry) {
            this.a = i;
            this.b = cranberry;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0084, code lost:
    
        if (r6.getCertificate("dddd" + r7) != null) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tencent.turingfd.sdk.ams.ad.Coconut a() {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Cumquat.a():com.tencent.turingfd.sdk.ams.ad.Coconut");
    }

    public static Coconut a(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        Intent intent = new Intent();
        intent.setAction(Cfinally.a(Cfinally.L0));
        intent.setPackage(Cfinally.a(Cfinally.M0));
        Object obj = new Object();
        AtomicReference atomicReference = new AtomicReference();
        atomicReference.set(Coconut.a(-2001, -1));
        if (context.getApplicationContext().bindService(intent, new Cdo(atomicReference, currentTimeMillis, obj), 1)) {
            synchronized (obj) {
                try {
                    obj.wait(5000L);
                } catch (InterruptedException unused) {
                }
            }
        } else {
            atomicReference.set(Coconut.a(-2002, -1));
        }
        return (Coconut) atomicReference.get();
    }

    public static Cif a(byte[] bArr) {
        if (bArr == null) {
            return new Cif(-3001, null);
        }
        if (bArr.length < 4) {
            return new Cif(-3001, null);
        }
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i += (bArr2[i2] & 255) << (i2 * 8);
        }
        if (i > 1048576) {
            return new Cif(-3003, null);
        }
        byte[] bArr3 = new byte[i];
        int i3 = i + 4;
        if (bArr.length < i3) {
            return new Cif(-3004, null);
        }
        System.arraycopy(bArr, 4, bArr3, 0, i);
        Cranberry cranberry = new Cranberry(new String(bArr3), "");
        int length = bArr.length - i3;
        if (length != 0) {
            byte[] bArr4 = new byte[length];
            System.arraycopy(bArr, i3, bArr4, 0, length);
            Base64.encodeToString(bArr4, 2);
            return new Cif(0, cranberry);
        }
        return new Cif(-3005, null);
    }
}
