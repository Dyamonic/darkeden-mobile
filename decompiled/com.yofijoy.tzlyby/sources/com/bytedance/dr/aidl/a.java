package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: com.bytedance.dr.aidl.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0005a extends Binder implements a {

        /* renamed from: com.bytedance.dr.aidl.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0006a implements a {
            public static a b;
            public IBinder a;

            public C0006a(IBinder iBinder) {
                this.a = iBinder;
            }

            public String a(String str) {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    obtain.writeString(str);
                    if (this.a.transact(2, obtain, obtain2, 0) || AbstractBinderC0005a.a() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = ((C0006a) AbstractBinderC0005a.a()).a(str);
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public static a a() {
            return C0006a.b;
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0006a(iBinder) : (a) queryLocalInterface;
        }
    }
}
