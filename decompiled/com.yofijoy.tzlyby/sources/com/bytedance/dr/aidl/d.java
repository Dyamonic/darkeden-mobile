package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes.dex */
public interface d extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements d {

        /* renamed from: com.bytedance.dr.aidl.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0009a implements d {
            public IBinder a;

            public C0009a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new C0009a(iBinder) : (d) queryLocalInterface;
        }
    }
}
