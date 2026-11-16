package com.qq.gdt.action.e;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.qq.gdt.action.j.o;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.tencent.turingfd.sdk.ams.ad.ITuringDID;
import com.tencent.turingfd.sdk.ams.ad.ITuringDeviceInfoProvider;
import com.tencent.turingfd.sdk.ams.ad.ITuringPrivacyPolicy;
import com.tencent.turingfd.sdk.ams.ad.TuringIDService;
import com.tencent.turingfd.sdk.ams.ad.TuringSDK;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d {
    private static Handler a;
    private static Handler b;

    /* loaded from: classes.dex */
    public static final class a {
        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
    }

    /* loaded from: classes.dex */
    public static final class b {
        public String a;
        public String b;
        public String c;
        public int d;
    }

    public static a a(Context context, boolean z) {
        a aVar = new a();
        if (context == null) {
            return aVar;
        }
        com.qq.gdt.action.e.a();
        boolean w = com.qq.gdt.action.e.w();
        aVar.a = c.a(com.qq.gdt.action.e.b.a(context, w));
        aVar.b = c.a(com.qq.gdt.action.e.b.a(context, 0, w));
        aVar.c = c.a(com.qq.gdt.action.e.b.a(context, 1, w));
        aVar.d = c.a(com.qq.gdt.action.e.b.b(context, w));
        aVar.e = c.a(com.qq.gdt.action.e.b.b(context, 0, w));
        aVar.f = c.a(com.qq.gdt.action.e.b.b(context, 1, w));
        aVar.g = c.a(com.qq.gdt.action.e.b.c(context, w));
        aVar.h = c.a(com.qq.gdt.action.e.b.c(context, 0, w));
        aVar.i = c.a(com.qq.gdt.action.e.b.c(context, 1, w));
        aVar.j = com.qq.gdt.action.e.a.a(com.qq.gdt.action.e.b.a(context));
        aVar.k = i.a(context, z, w);
        return aVar;
    }

    public static void a(Context context) {
        new HandlerThread("appwaid").start();
        c(context);
        HandlerThread handlerThread = new HandlerThread(TapEventParamConstants.PARAM_SUB_OAID);
        handlerThread.start();
        a = new Handler(handlerThread.getLooper());
        b(context, 0L);
        HandlerThread handlerThread2 = new HandlerThread("openDeviceIdentifier");
        handlerThread2.start();
        b = new Handler(handlerThread2.getLooper());
        a(context, 0L);
        d(context);
    }

    public static void a(final Context context, long j) {
        if (context == null) {
            return;
        }
        b.postDelayed(new Runnable() { // from class: com.qq.gdt.action.e.d.1
            @Override // java.lang.Runnable
            public void run() {
                o.a(String.format("updateForOpenDeviceIdentifier", new Object[0]), new Object[0]);
                if (!com.qq.gdt.action.a.c.a(context).isEmpty()) {
                    com.qq.gdt.action.a.a.a(context);
                }
                d.b.postDelayed(this, com.qq.gdt.action.b.a(context).w());
            }
        }, j);
    }

    public static b b(Context context) {
        b bVar = new b();
        if (context == null) {
            return bVar;
        }
        ITuringDID turingDIDCached = TuringIDService.getTuringDIDCached(context.getApplicationContext());
        if (turingDIDCached == null) {
            o.a("fillAidTicketAndTaid TuringDIDService.getTuringDIDCached return null", new Object[0]);
            return bVar;
        }
        o.a(String.format("fillAidTicketAndTaid errorCode:%d aidTicket:%s, taidTicket:%s, expiredTimestamp:%d", Integer.valueOf(turingDIDCached.getErrorCode()), turingDIDCached.getAIDTicket(), "", Long.valueOf(turingDIDCached.getExpiredTimestamp())), new Object[0]);
        bVar.a = turingDIDCached.getAIDTicket();
        bVar.b = "";
        bVar.c = turingDIDCached.getTAIDTicket();
        bVar.d = turingDIDCached.getErrorCode();
        if (turingDIDCached.getErrorCode() != 0) {
            JSONObject d = d();
            try {
                d.put("errorCode", turingDIDCached.getErrorCode());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            com.qq.gdt.action.h.a.a(3503, d);
        }
        return bVar;
    }

    private static void b(final Context context, long j) {
        if (context == null) {
            return;
        }
        final WeakReference weakReference = new WeakReference(context.getApplicationContext());
        a.postDelayed(new Runnable() { // from class: com.qq.gdt.action.e.d.4
            /* JADX WARN: Removed duplicated region for block: B:14:0x00ac  */
            /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r6 = this;
                    r0 = 0
                    java.lang.Object[] r1 = new java.lang.Object[r0]
                    java.lang.String r2 = "updateForAidTicketAndTaidTicket"
                    java.lang.String r1 = java.lang.String.format(r2, r1)
                    java.lang.Object[] r2 = new java.lang.Object[r0]
                    com.qq.gdt.action.j.o.a(r1, r2)
                    java.lang.ref.WeakReference r1 = r1
                    java.lang.Object r1 = r1.get()
                    android.content.Context r1 = (android.content.Context) r1
                    com.tencent.turingfd.sdk.ams.ad.ITuringDID r1 = com.tencent.turingfd.sdk.ams.ad.TuringIDService.getTuringDID(r1)
                    if (r1 != 0) goto L24
                    java.lang.Object[] r0 = new java.lang.Object[r0]
                    java.lang.String r1 = "updateForAidTicketAndTaidTicket TuringDIDService.getTuringDID return null"
                    com.qq.gdt.action.j.o.a(r1, r0)
                    return
                L24:
                    r2 = 4
                    java.lang.Object[] r2 = new java.lang.Object[r2]
                    int r3 = r1.getErrorCode()
                    java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                    r2[r0] = r3
                    r3 = 1
                    java.lang.String r4 = r1.getAIDTicket()
                    r2[r3] = r4
                    r3 = 2
                    java.lang.String r4 = ""
                    r2[r3] = r4
                    r3 = 3
                    long r4 = r1.getExpiredTimestamp()
                    java.lang.Long r4 = java.lang.Long.valueOf(r4)
                    r2[r3] = r4
                    java.lang.String r3 = "updateForAidTicketAndTaidTicket errorCode:%d, aidTicket:%s, taid:%s, expiredTimestamp:%d"
                    java.lang.String r2 = java.lang.String.format(r3, r2)
                    java.lang.Object[] r0 = new java.lang.Object[r0]
                    com.qq.gdt.action.j.o.a(r2, r0)
                    int r0 = r1.getErrorCode()
                    if (r0 != 0) goto L74
                    android.content.Context r0 = r2
                    com.qq.gdt.action.b r0 = com.qq.gdt.action.b.a(r0)
                    int r0 = r0.f()
                    if (r0 <= 0) goto La6
                    android.os.Handler r0 = com.qq.gdt.action.e.d.b()
                    android.content.Context r2 = r2
                    com.qq.gdt.action.b r2 = com.qq.gdt.action.b.a(r2)
                    int r2 = r2.f()
                    goto La2
                L74:
                    int r0 = r1.getErrorCode()
                    r2 = -10004(0xffffffffffffd8ec, float:NaN)
                    if (r0 == r2) goto L94
                    int r0 = r1.getErrorCode()
                    r2 = -10012(0xffffffffffffd8e4, float:NaN)
                    if (r0 == r2) goto L94
                    int r0 = r1.getErrorCode()
                    r2 = -21052(0xffffffffffffadc4, float:NaN)
                    if (r0 == r2) goto L94
                    int r0 = r1.getErrorCode()
                    r2 = -22056(0xffffffffffffa9d8, float:NaN)
                    if (r0 != r2) goto La6
                L94:
                    android.os.Handler r0 = com.qq.gdt.action.e.d.b()
                    android.content.Context r2 = r2
                    com.qq.gdt.action.b r2 = com.qq.gdt.action.b.a(r2)
                    int r2 = r2.x()
                La2:
                    long r2 = (long) r2
                    r0.postDelayed(r6, r2)
                La6:
                    int r0 = r1.getErrorCode()
                    if (r0 == 0) goto Lc3
                    org.json.JSONObject r0 = com.qq.gdt.action.e.d.c()
                    java.lang.String r2 = "errorCode"
                    int r1 = r1.getErrorCode()     // Catch: org.json.JSONException -> Lba
                    r0.put(r2, r1)     // Catch: org.json.JSONException -> Lba
                    goto Lbe
                Lba:
                    r1 = move-exception
                    r1.printStackTrace()
                Lbe:
                    r1 = 3504(0xdb0, float:4.91E-42)
                    com.qq.gdt.action.h.a.a(r1, r0)
                Lc3:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.e.d.AnonymousClass4.run():void");
            }
        }, j);
    }

    static /* synthetic */ JSONObject c() {
        return d();
    }

    private static void c(final Context context) {
        try {
            o.a(String.format("initTAIDSDK versionInfo:%s", TuringSDK.getVersionInfo()), new Object[0]);
            if (context == null) {
                o.c("init aid context is null");
            }
            int init = TuringSDK.createConf(context, new ITuringPrivacyPolicy() { // from class: com.qq.gdt.action.e.d.3
                @Override // com.tencent.turingfd.sdk.ams.ad.ITuringPrivacyPolicy, com.tencent.turingfd.sdk.ams.ad.Cassiopeia
                public boolean userAgreement() {
                    return true;
                }
            }).turingDeviceInfoProvider(new ITuringDeviceInfoProvider() { // from class: com.qq.gdt.action.e.d.2
                @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDeviceInfoProvider
                public String getAndroidId() {
                    return com.qq.gdt.action.e.b.a(context);
                }

                @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDeviceInfoProvider
                public String getImei() {
                    return com.qq.gdt.action.j.h.b();
                }

                @Override // com.tencent.turingfd.sdk.ams.ad.ITuringDeviceInfoProvider
                public String getImsi() {
                    return g.a();
                }
            }).channel(105548).build().init();
            if (init != 0) {
                JSONObject d = d();
                d.put("errorCode", init);
                com.qq.gdt.action.h.a.a(3502, d);
            }
        } catch (Throwable unused) {
            o.c("GDTAction初始化失败，ErrorCode:02，请联系广点通运营");
            com.qq.gdt.action.h.a.a(3502, d());
        }
    }

    private static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("actionSetId", com.qq.gdt.action.e.a().h());
            jSONObject.put("deviceId", com.qq.gdt.action.e.a().q());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static void d(Context context) {
        if (context == null) {
            o.a("create error", new Object[0]);
        } else {
            a(context, true);
            b(context);
        }
    }
}
