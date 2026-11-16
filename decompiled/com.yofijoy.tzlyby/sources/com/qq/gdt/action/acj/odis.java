package com.qq.gdt.action.acj;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface odis extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements odis {

        /* renamed from: com.qq.gdt.action.acj.odis$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0033a implements odis {
            private IBinder a;

            C0033a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // com.qq.gdt.action.acj.odis
            public String a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // com.qq.gdt.action.acj.odis
            public boolean b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static odis a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof odis)) ? new C0033a(iBinder) : (odis) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            }
            if (i == 1598968902) {
                parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                return true;
            }
            if (i == 1) {
                String a = a();
                parcel2.writeNoException();
                parcel2.writeString(a);
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                boolean b = b();
                parcel2.writeNoException();
                parcel2.writeInt(b ? 1 : 0);
            }
            return true;
        }
    }

    String a() throws RemoteException;

    boolean b() throws RemoteException;
}
