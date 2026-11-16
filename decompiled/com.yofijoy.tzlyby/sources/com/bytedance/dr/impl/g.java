package com.bytedance.dr.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.OaidApi;
import com.bytedance.dr.aidl.f;

/* loaded from: classes.dex */
public class g extends b<com.bytedance.dr.aidl.f> {
    public final com.bytedance.dr.honor.a c;
    public final com.bytedance.dr.honor.b d;

    /* loaded from: classes.dex */
    public class a implements u5.b<com.bytedance.dr.aidl.f, String> {
        public a() {
        }

        @Override // com.bytedance.bdtracker.u5.b
        public com.bytedance.dr.aidl.f a(IBinder iBinder) {
            return f.a.a(iBinder);
        }

        @Override // com.bytedance.bdtracker.u5.b
        public String a(com.bytedance.dr.aidl.f fVar) {
            com.bytedance.dr.aidl.f fVar2 = fVar;
            if (fVar2 == null) {
                LoggerImpl.global().error("honor# service is null", new Object[0]);
                return null;
            }
            com.bytedance.dr.honor.a aVar = g.this.c;
            f.a.C0010a c0010a = (f.a.C0010a) fVar2;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                c0010a.a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                obtain2.recycle();
                obtain.recycle();
                com.bytedance.dr.honor.b bVar = g.this.d;
                obtain = Parcel.obtain();
                obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    c0010a.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    obtain2.recycle();
                    obtain.recycle();
                    return "";
                } finally {
                }
            } finally {
            }
        }
    }

    public g() {
        super("com.hihonor.id");
        this.c = new com.bytedance.dr.honor.a();
        this.d = new com.bytedance.dr.honor.b();
    }

    @Override // com.bytedance.dr.impl.b
    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.hihonor.id.HnOaIdService");
        intent.setPackage("com.hihonor.id");
        return intent;
    }

    @Override // com.bytedance.dr.impl.b
    public u5.b<com.bytedance.dr.aidl.f, String> a() {
        return new a();
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "HONOR";
    }

    @Override // com.bytedance.dr.impl.b, com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        new u5(context, a(context), a()).a();
        OaidApi.a aVar = new OaidApi.a();
        aVar.a = this.c.a;
        aVar.b = this.d.a;
        IAppLogLogger global = LoggerImpl.global();
        StringBuilder a2 = com.bytedance.bdtracker.a.a("getOaid ");
        a2.append(aVar.a);
        global.debug("honor# ", a2.toString());
        return aVar;
    }
}
