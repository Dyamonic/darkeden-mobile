package com.tencent.turingfd.sdk.ams.ad;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class Ara extends Binder implements IInterface {
    public Ara() {
        attachInterface(this, "com.hihonor.cloudservice.oaid.IOAIDCallBack");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        try {
            if (i == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                return true;
            }
            parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
            int readInt = parcel.readInt();
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            Sculptor sculptor = (Sculptor) this;
            if (!sculptor.b) {
                String str = "";
                if (readInt == 0 && bundle != null) {
                    str = bundle.getString("oa_id_flag");
                }
                synchronized (sculptor.a) {
                    sculptor.a.set(str);
                    sculptor.a.notifyAll();
                }
            }
            parcel2.writeNoException();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }
}
