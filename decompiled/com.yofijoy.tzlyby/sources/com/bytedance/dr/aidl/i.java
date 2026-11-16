package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface i extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements i {

        /* renamed from: com.bytedance.dr.aidl.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0013a implements i {
            public IBinder a;

            public C0013a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public static i a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof i)) ? new C0013a(iBinder) : (i) queryLocalInterface;
        }
    }
}
