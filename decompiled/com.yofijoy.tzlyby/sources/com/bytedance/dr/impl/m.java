package com.bytedance.dr.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.aidl.b;

/* loaded from: classes.dex */
public final class m extends b<com.bytedance.dr.aidl.b> {

    /* loaded from: classes.dex */
    public class a implements u5.b<com.bytedance.dr.aidl.b, String> {
        public a(m mVar) {
        }

        @Override // com.bytedance.bdtracker.u5.b
        public com.bytedance.dr.aidl.b a(IBinder iBinder) {
            return b.a.a(iBinder);
        }

        @Override // com.bytedance.bdtracker.u5.b
        public String a(com.bytedance.dr.aidl.b bVar) {
            return ((b.a.C0007a) bVar).a();
        }
    }

    public m() {
        super("com.samsung.android.deviceidservice");
    }

    @Override // com.bytedance.dr.impl.b
    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        return intent;
    }

    @Override // com.bytedance.dr.impl.b
    public u5.b<com.bytedance.dr.aidl.b, String> a() {
        return new a(this);
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Samsung";
    }
}
