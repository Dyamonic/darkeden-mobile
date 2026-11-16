package com.bytedance.dr.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.aidl.c;

/* loaded from: classes.dex */
public final class h extends b<com.bytedance.dr.aidl.c> {

    /* loaded from: classes.dex */
    public class a implements u5.b<com.bytedance.dr.aidl.c, String> {
        public a(h hVar) {
        }

        @Override // com.bytedance.bdtracker.u5.b
        public com.bytedance.dr.aidl.c a(IBinder iBinder) {
            return c.a.a(iBinder);
        }

        @Override // com.bytedance.bdtracker.u5.b
        public String a(com.bytedance.dr.aidl.c cVar) {
            com.bytedance.dr.aidl.c cVar2 = cVar;
            if (cVar2 == null) {
                return null;
            }
            c.a.C0008a c0008a = (c.a.C0008a) cVar2;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                c0008a.a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public h() {
        super("com.zui.deviceidservice");
    }

    @Override // com.bytedance.dr.impl.b
    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        return intent;
    }

    @Override // com.bytedance.dr.impl.b
    public u5.b<com.bytedance.dr.aidl.c, String> a() {
        return new a(this);
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Lenovo";
    }
}
