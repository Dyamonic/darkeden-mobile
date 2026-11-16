package com.bytedance.dr.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.aidl.d;

/* loaded from: classes.dex */
public final class a extends b<com.bytedance.dr.aidl.d> {

    /* renamed from: com.bytedance.dr.impl.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0014a implements u5.b<com.bytedance.dr.aidl.d, String> {
        public C0014a(a aVar) {
        }

        @Override // com.bytedance.bdtracker.u5.b
        public com.bytedance.dr.aidl.d a(IBinder iBinder) {
            return d.a.a(iBinder);
        }

        @Override // com.bytedance.bdtracker.u5.b
        public String a(com.bytedance.dr.aidl.d dVar) {
            com.bytedance.dr.aidl.d dVar2 = dVar;
            if (dVar2 == null) {
                return null;
            }
            d.a.C0009a c0009a = (d.a.C0009a) dVar2;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                c0009a.a.transact(3, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public a() {
        super("com.asus.msa.SupplementaryDID");
    }

    @Override // com.bytedance.dr.impl.b
    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.asus.msa.action.ACCESS_DID");
        intent.setComponent(new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService"));
        return intent;
    }

    @Override // com.bytedance.dr.impl.b
    public u5.b<com.bytedance.dr.aidl.d, String> a() {
        return new C0014a(this);
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "ASUS";
    }
}
