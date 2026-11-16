package com.bytedance.dr.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.OaidApi;
import com.bytedance.dr.aidl.h;

/* loaded from: classes.dex */
public final class c extends b<com.bytedance.dr.aidl.h> {

    /* loaded from: classes.dex */
    public class a implements u5.b<com.bytedance.dr.aidl.h, String> {
        public a(c cVar) {
        }

        @Override // com.bytedance.bdtracker.u5.b
        public com.bytedance.dr.aidl.h a(IBinder iBinder) {
            return h.a.a(iBinder);
        }

        @Override // com.bytedance.bdtracker.u5.b
        public String a(com.bytedance.dr.aidl.h hVar) {
            com.bytedance.dr.aidl.h hVar2 = hVar;
            if (hVar2 == null) {
                return null;
            }
            return ((h.a.C0012a) hVar2).a();
        }
    }

    public c() {
        super("com.mdid.msa");
    }

    @Override // com.bytedance.dr.impl.b
    public Intent a(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction("com.bun.msa.action.bindto.service");
        intent.putExtra("com.bun.msa.param.pkgname", context.getPackageName());
        return intent;
    }

    @Override // com.bytedance.dr.impl.b
    public u5.b<com.bytedance.dr.aidl.h, String> a() {
        return new a(this);
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Common";
    }

    @Override // com.bytedance.dr.impl.b, com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        String packageName = context.getPackageName();
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
        intent.setAction("com.bun.msa.action.start.service");
        intent.putExtra("com.bun.msa.param.pkgname", packageName);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            context.startService(intent);
        } catch (Exception e) {
            LoggerImpl.global().error(1, "startMsaklServer failed", e, new Object[0]);
        }
        return super.getOaid(context);
    }
}
