package com.bun.miitmdid;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class v extends n {
    public static int l = 2;
    public static int m = 4;
    public static int n = 5;
    public static int o = 6;
    public static int p = 7;
    public IBinder q = null;
    public Context r;

    public v(Context context) {
        h0.a("QikuIdmanager", "QikuProvider");
        this.r = context;
        e();
    }

    @Override // com.bun.miitmdid.n
    public g d() {
        return null;
    }

    public void e() {
        try {
            Method declaredMethod = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class);
            if (declaredMethod != null) {
                h0.a("QikuIdmanager", "getService success");
                this.q = (IBinder) declaredMethod.invoke(null, "qikuid");
            }
        } catch (Exception e) {
            Log.e("QikuIdmanager", "Failure get qikuid service", e);
        }
    }

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IdSupplier
    public String getAAID() {
        h0.a("QikuIdmanager", "getAAID start");
        if (this.q == null) {
            return null;
        }
        h0.a("QikuIdmanager", "mIBinder != null");
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            this.q.transact(o, obtain, obtain2, 0);
            this.i = obtain2.readString();
            h0.a("QikuIdmanager", "getAAID : " + this.i);
            return this.i;
        } catch (RemoteException e) {
            h0.a("QikuIdmanager", "getAAID RemoteException");
            e.printStackTrace();
            return null;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IdSupplier
    public String getOAID() {
        h0.a("QikuIdmanager", "getOAID start");
        if (this.q == null) {
            return null;
        }
        h0.a("QikuIdmanager", "mIBinder != null");
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            this.q.transact(m, obtain, obtain2, 0);
            this.g = obtain2.readString();
            h0.a("QikuIdmanager", "getOAID : " + this.g);
            return this.g;
        } catch (RemoteException e) {
            h0.a("QikuIdmanager", "getOAID RemoteException");
            e.printStackTrace();
            return null;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IdSupplier
    public String getVAID() {
        h0.a("QikuIdmanager", "getVAID start");
        if (this.q == null) {
            return null;
        }
        h0.a("QikuIdmanager", "mIBinder != null");
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            this.q.transact(n, obtain, obtain2, 0);
            this.h = obtain2.readString();
            h0.a("QikuIdmanager", "getVAID : " + this.h);
            return this.h;
        } catch (RemoteException e) {
            h0.a("QikuIdmanager", "getVAID RemoteException");
            e.printStackTrace();
            return null;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IdSupplier
    public boolean isLimited() {
        h0.a("QikuIdmanager", "isLimited start");
        if (this.q != null) {
            h0.a("QikuIdmanager", "mIBinder != null");
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                this.q.transact(9, obtain, obtain2, 0);
                this.k = obtain2.readInt() != 0;
                h0.a("QikuIdmanager", "islimited : " + this.k);
                return this.k;
            } catch (RemoteException e) {
                h0.a("QikuIdmanager", "isLimited RemoteException");
                e.printStackTrace();
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
        return false;
    }

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IdSupplier
    public boolean isSupported() {
        h0.a("QikuIdmanager", "isSupported start");
        if (this.q != null) {
            h0.a("QikuIdmanager", "mIBinder != null");
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                this.q.transact(l, obtain, obtain2, 0);
                int readInt = obtain2.readInt();
                h0.a("QikuIdmanager", "isSupported : " + readInt);
                boolean z = true;
                if (readInt != 1) {
                    z = false;
                }
                this.j = z;
                return z;
            } catch (RemoteException e) {
                h0.a("QikuIdmanager", "isSupported RemoteException");
                e.printStackTrace();
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
        return false;
    }

    @Override // com.bun.miitmdid.n, com.bun.miitmdid.interfaces.IIdProvider
    public void shutDown() {
        if (this.q != null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    h0.a("QikuIdmanager", "shutDown");
                    this.q.transact(p, obtain, obtain2, 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
    }
}
