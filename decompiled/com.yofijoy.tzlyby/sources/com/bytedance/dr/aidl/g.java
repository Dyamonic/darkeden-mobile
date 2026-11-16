package com.bytedance.dr.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface g extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements g {

        /* renamed from: com.bytedance.dr.aidl.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0011a implements g {
            public IBinder a;

            public C0011a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public static g a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof g)) ? new C0011a(iBinder) : (g) queryLocalInterface;
        }
    }
}
