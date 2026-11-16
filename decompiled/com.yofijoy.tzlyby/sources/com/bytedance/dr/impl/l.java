package com.bytedance.dr.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.a5;
import com.bytedance.bdtracker.m5;
import com.bytedance.bdtracker.u5;
import com.bytedance.dr.OaidApi;
import com.bytedance.dr.aidl.g;

/* loaded from: classes.dex */
public final class l implements OaidApi {
    public final OaidApi a;
    public m5<Boolean> b = new a(this);

    /* loaded from: classes.dex */
    public class a extends m5<Boolean> {
        public a(l lVar) {
        }

        @Override // com.bytedance.bdtracker.m5
        public Boolean a(Object[] objArr) {
            try {
                PackageInfo a = a5.a((Context) objArr[0], "com.heytap.openid", 0);
                if (a == null) {
                    LoggerImpl.global().warn("Oaid#OnePlusOaidImpl pi == null ", new Object[0]);
                    return false;
                }
                long longVersionCode = Build.VERSION.SDK_INT >= 28 ? a.getLongVersionCode() : a.versionCode;
                LoggerImpl.global().debug("Oaid#OnePlusOaidImpl versionCode -> " + longVersionCode, new Object[0]);
                return Boolean.valueOf(longVersionCode >= 1);
            } catch (Throwable th) {
                LoggerImpl.global().error(1, "Oaid#Get package:{} info failed", th, "com.heytap.openid");
                return false;
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements u5.b<com.bytedance.dr.aidl.g, String> {
        public final /* synthetic */ Context a;
        public final /* synthetic */ long b;

        public b(Context context, long j) {
            this.a = context;
            this.b = j;
        }

        @Override // com.bytedance.bdtracker.u5.b
        public com.bytedance.dr.aidl.g a(IBinder iBinder) {
            return g.a.a(iBinder);
        }

        @Override // com.bytedance.bdtracker.u5.b
        public String a(com.bytedance.dr.aidl.g gVar) {
            com.bytedance.dr.aidl.g gVar2 = gVar;
            if (gVar2 != null) {
                String a = l.this.a(this.a);
                LoggerImpl.global().debug(com.bytedance.bdtracker.a.a("Oaid#OnePlusOaidImpl fetchResult sign -> ", a), new Object[0]);
                if (!TextUtils.isEmpty(a)) {
                    IAppLogLogger global = LoggerImpl.global();
                    StringBuilder a2 = com.bytedance.bdtracker.a.a("Oaid#OnePlusOaidImpl fetchResult finish -> ");
                    a2.append(System.currentTimeMillis() - this.b);
                    global.debug(a2.toString(), new Object[0]);
                    String packageName = this.a.getPackageName();
                    g.a.C0011a c0011a = (g.a.C0011a) gVar2;
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                        obtain.writeString(packageName);
                        obtain.writeString(a);
                        obtain.writeString("OUID");
                        c0011a.a.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        return obtain2.readString();
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }
            }
            return null;
        }
    }

    public l(OaidApi oaidApi) {
        this.a = oaidApi;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[Catch: all -> 0x0059, TryCatch #1 {all -> 0x0059, blocks: (B:11:0x002a, B:13:0x0032, B:15:0x003f, B:17:0x0054), top: B:10:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(android.content.Context r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = 1
            r2 = 0
            java.lang.String r3 = r9.getPackageName()     // Catch: java.lang.Throwable -> L12
            r4 = 64
            android.content.pm.PackageInfo r9 = com.bytedance.bdtracker.a5.a(r9, r3, r4)     // Catch: java.lang.Throwable -> L12
            if (r9 == 0) goto L1e
            android.content.pm.Signature[] r9 = r9.signatures     // Catch: java.lang.Throwable -> L12
            goto L1f
        L12:
            r9 = move-exception
            com.bytedance.applog.log.IAppLogLogger r3 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r5 = "getPackageInfo failed"
            r3.error(r1, r5, r9, r4)
        L1e:
            r9 = r0
        L1f:
            if (r9 == 0) goto L65
            int r3 = r9.length
            if (r3 <= 0) goto L65
            r9 = r9[r2]
            byte[] r9 = r9.toByteArray()
            java.lang.String r3 = "SHA1"
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r3)     // Catch: java.lang.Throwable -> L59
            if (r3 == 0) goto L65
            byte[] r9 = r3.digest(r9)     // Catch: java.lang.Throwable -> L59
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59
            r3.<init>()     // Catch: java.lang.Throwable -> L59
            int r4 = r9.length     // Catch: java.lang.Throwable -> L59
            r5 = r2
        L3d:
            if (r5 >= r4) goto L54
            r6 = r9[r5]     // Catch: java.lang.Throwable -> L59
            r6 = r6 & 255(0xff, float:3.57E-43)
            r6 = r6 | 256(0x100, float:3.59E-43)
            java.lang.String r6 = java.lang.Integer.toHexString(r6)     // Catch: java.lang.Throwable -> L59
            r7 = 3
            java.lang.String r6 = r6.substring(r1, r7)     // Catch: java.lang.Throwable -> L59
            r3.append(r6)     // Catch: java.lang.Throwable -> L59
            int r5 = r5 + 1
            goto L3d
        L54:
            java.lang.String r9 = r3.toString()     // Catch: java.lang.Throwable -> L59
            return r9
        L59:
            r9 = move-exception
            com.bytedance.applog.log.IAppLogLogger r3 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r4 = "Sign package info failed"
            r3.error(r1, r4, r9, r2)
        L65:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.dr.impl.l.a(android.content.Context):java.lang.String");
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return (this.a == null || this.b.b(new Object[0]).booleanValue()) ? "OnePlus/Oppo" : this.a.getName();
    }

    @Override // com.bytedance.dr.OaidApi
    public OaidApi.a getOaid(Context context) {
        if (this.a != null && !this.b.b(new Object[0]).booleanValue()) {
            return this.a.getOaid(context);
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        long currentTimeMillis = System.currentTimeMillis();
        LoggerImpl.global().debug("Oaid#OnePlusOaidImpl getOaid start -> ", new Object[0]);
        String str = (String) new u5(context, intent, new b(context, currentTimeMillis)).a();
        OaidApi.a aVar = new OaidApi.a();
        aVar.a = str;
        return aVar;
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        if (context == null) {
            return false;
        }
        Boolean b2 = this.b.b(context);
        LoggerImpl.global().debug("Oaid#OnePlusOaidImpl originSupport -> " + b2, new Object[0]);
        if (this.a == null || b2.booleanValue()) {
            return b2.booleanValue();
        }
        IAppLogLogger global = LoggerImpl.global();
        StringBuilder a2 = com.bytedance.bdtracker.a.a("Oaid#OnePlusOaidImpl mCallback.support(context) -> ");
        a2.append(this.a.support(context));
        global.debug(a2.toString(), new Object[0]);
        return this.a.support(context);
    }
}
