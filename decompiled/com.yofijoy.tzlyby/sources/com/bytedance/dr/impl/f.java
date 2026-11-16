package com.bytedance.dr.impl;

import android.os.IBinder;
import android.os.Parcel;
import android.util.Pair;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.aidl.i;

/* loaded from: classes.dex */
public class f implements u5.b<com.bytedance.dr.aidl.i, Pair<String, Boolean>> {
    public f(e eVar) {
    }

    @Override // com.bytedance.bdtracker.u5.b
    public com.bytedance.dr.aidl.i a(IBinder iBinder) {
        return i.a.a(iBinder);
    }

    @Override // com.bytedance.bdtracker.u5.b
    public Pair<String, Boolean> a(com.bytedance.dr.aidl.i iVar) {
        com.bytedance.dr.aidl.i iVar2 = iVar;
        if (iVar2 == null) {
            return null;
        }
        i.a.C0013a c0013a = (i.a.C0013a) iVar2;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            c0013a.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            obtain2.recycle();
            obtain.recycle();
            obtain = Parcel.obtain();
            obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                c0013a.a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                boolean z = obtain2.readInt() != 0;
                obtain2.recycle();
                obtain.recycle();
                return new Pair<>(readString, Boolean.valueOf(z));
            } finally {
            }
        } finally {
        }
    }
}
