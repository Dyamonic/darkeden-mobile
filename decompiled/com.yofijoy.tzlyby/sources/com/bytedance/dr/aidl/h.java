package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface h extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements h {

        /* renamed from: com.bytedance.dr.aidl.h$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0012a implements h {
            public static h b;
            public IBinder a;

            public C0012a(IBinder iBinder) {
                this.a = iBinder;
            }

            public String a() {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.a.transact(1, obtain, obtain2, 0) || a.a() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = ((C0012a) a.a()).a();
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

        public static h a() {
            return C0012a.b;
        }

        public static h a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof h)) ? new C0012a(iBinder) : (h) queryLocalInterface;
        }
    }
}
