package com.huawei.hms.ads.identifier;

import android.content.Context;
import android.net.Uri;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import com.huawei.hms.ads.identifier.d;

/* loaded from: classes.dex */
public class b {
    private static final Uri a = new Uri.Builder().scheme("content").authority("com.huawei.hwid.pps.apiprovider").path("/oaid_scp/get").build();
    private static final Uri b = new Uri.Builder().scheme("content").authority("com.huawei.hwid.pps.apiprovider").path("/oaid/query").build();

    /* renamed from: com.huawei.hms.ads.identifier.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Runnable {
        public final /* synthetic */ d.a a;
        public final /* synthetic */ Context b;

        public AnonymousClass1(d.a aVar, Context context) {
            this.a = aVar;
            this.b = context;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    /* renamed from: com.huawei.hms.ads.identifier.b$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass2 implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ d.a b;

        public AnonymousClass2(Context context, d.a aVar) {
            this.a = context;
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    public static native AdvertisingIdClient.Info a(Context context);

    private static native boolean a(Context context, Uri uri);

    public static native AdvertisingIdClient.Info b(Context context);

    public static native boolean c(Context context);

    /* JADX INFO: Access modifiers changed from: private */
    public static native String e(Context context);
}
