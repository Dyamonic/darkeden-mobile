package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface f extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements f {

        /* renamed from: com.bytedance.dr.aidl.f$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0010a implements f {
            public IBinder a;

            public C0010a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public static f a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof f)) ? new C0010a(iBinder) : (f) queryLocalInterface;
        }
    }
}
