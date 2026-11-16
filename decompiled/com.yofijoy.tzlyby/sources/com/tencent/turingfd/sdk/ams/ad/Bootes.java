package com.tencent.turingfd.sdk.ams.ad;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public interface Bootes extends IInterface {
    int a() throws RemoteException;

    int a(int i) throws RemoteException;

    int b(int i) throws RemoteException;

    boolean c(int i) throws RemoteException;

    Codlin d(int i) throws RemoteException;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Bootes$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static abstract class Cdo extends Binder implements Bootes {
        public static final String a = Cfinally.a(Cfinally.L0);

        /* renamed from: com.tencent.turingfd.sdk.ams.ad.Bootes$do$do, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0052do implements Bootes {
            public IBinder a;

            public C0052do(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.tencent.turingfd.sdk.ams.ad.Bootes
            public int a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Cdo.a);
                    obtain.writeInt(i);
                    if (!this.a.transact(7, obtain, obtain2, 0)) {
                        String str = Cdo.a;
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.tencent.turingfd.sdk.ams.ad.Bootes
            public int b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Cdo.a);
                    obtain.writeInt(i);
                    if (!this.a.transact(1, obtain, obtain2, 0)) {
                        String str = Cdo.a;
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.turingfd.sdk.ams.ad.Bootes
            public boolean c(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Cdo.a);
                    obtain.writeInt(i);
                    if (!this.a.transact(3, obtain, obtain2, 0)) {
                        String str = Cdo.a;
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.turingfd.sdk.ams.ad.Bootes
            public Codlin d(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Cdo.a);
                    obtain.writeInt(i);
                    if (!this.a.transact(2, obtain, obtain2, 0)) {
                        String str = Cdo.a;
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? new Codlin(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.turingfd.sdk.ams.ad.Bootes
            public int a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Cdo.a);
                    if (!this.a.transact(12, obtain, obtain2, 0)) {
                        String str = Cdo.a;
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
