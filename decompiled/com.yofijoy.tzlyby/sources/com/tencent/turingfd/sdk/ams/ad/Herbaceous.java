package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.media.MediaDrm;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.taptap.sdk.moment.constant.Constant;
import com.tencent.turingfd.sdk.ams.ad.Cprotected;
import com.tencent.turingfd.sdk.ams.ad.Ginkgo;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Herbaceous {
    public static final String i = Cfinally.a(Cfinally.b1);
    public static final String j = Cfinally.a(Cfinally.c1);
    public static final String k = Cfinally.a(Cfinally.d1);
    public static final Herbaceous l = new Herbaceous();
    public static final long m = TimeUnit.MINUTES.toMillis(30);
    public static final int[] n = {0, 15, 30, 90, 240, 360, Constant.CALLBACK_CODE_ON_RESUME, 1200, 2400, 3200, 4800, 7200};
    public Flat a;
    public Handler b;
    public Hickory d;
    public boolean c = false;
    public final Object e = new Object();
    public final AtomicReference<Ginkgo> f = new AtomicReference<>(null);
    public final AtomicReference<Boolean> g = new AtomicReference<>(Boolean.FALSE);
    public final AtomicReference<FutureTask<Cprotected.Cdo>> h = new AtomicReference<>(null);

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Herbaceous$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo extends Handler {
        public Context a;

        public Cdo(Looper looper, Context context) {
            super(looper);
            this.a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            System.currentTimeMillis();
            int i = message.what;
            if (i == 1) {
                Herbaceous.this.a(this.a, true, 3);
                return;
            }
            if (i != 2) {
                return;
            }
            Herbaceous.this.a(Herbaceous.this.a(this.a, true, false, ((Integer) message.obj).intValue()), false);
            synchronized (Herbaceous.this.g) {
                Herbaceous.this.g.set(Boolean.FALSE);
                Herbaceous.this.g.notifyAll();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.tencent.turingfd.sdk.ams.ad.Herbaceous r14) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Herbaceous.a(com.tencent.turingfd.sdk.ams.ad.Herbaceous):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:295:0x099a, code lost:
    
        if (android.net.Proxy.getHost(r27) != null) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x09b5, code lost:
    
        if (r13 != 0) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0251, code lost:
    
        if (r27.getPackageManager().getApplicationInfo(r27.getPackageName(), 128).metaData.containsKey(com.tencent.turingfd.sdk.ams.ad.Herbaceous.j) != false) goto L71;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0604  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0633  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0727  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0746  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x07a4  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x08a8  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x08c4 A[LOOP:1: B:259:0x08be->B:261:0x08c4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0924  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x094b  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0950  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0a12  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0a1e  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0929  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0261  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.tencent.turingfd.sdk.ams.ad.Ginkgo b(android.content.Context r27, boolean r28, int r29) {
        /*
            Method dump skipped, instructions count: 2602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Herbaceous.b(android.content.Context, boolean, int):com.tencent.turingfd.sdk.ams.ad.Ginkgo");
    }

    public Ginkgo a(Context context) {
        Ginkgo ginkgo;
        Ginkgo a;
        synchronized (this.f) {
            ginkgo = this.f.get();
            if (ginkgo == null) {
                Hickory hickory = this.d;
                if (hickory != null) {
                    a = hickory.a(context);
                } else {
                    a = Ginkgo.a(1);
                }
                ginkgo = a;
                this.f.set(ginkgo);
            }
        }
        return ginkgo;
    }

    public final void a(Ginkgo ginkgo, boolean z) {
        synchronized (this.f) {
            try {
                if (ginkgo == null) {
                    return;
                }
                if (z || ginkgo.c == 0) {
                    this.f.set(ginkgo);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        synchronized (this.g) {
            if (this.g.get().booleanValue()) {
                return;
            }
            this.g.set(Boolean.TRUE);
            this.b.sendMessageDelayed(Message.obtain(this.b, 2, 3), 0L);
        }
    }

    public final Ginkgo a(Context context, boolean z, int i2) {
        Ginkgo a;
        Ginkgo a2 = a(context);
        if (this.a == null) {
            return Ginkgo.a(-10002);
        }
        int a3 = a(a2);
        if (a3 == 1) {
            return a2;
        }
        if (a3 != 2) {
            if (a3 == 3) {
                a();
            }
            return a2;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            a();
            return Ginkgo.a(-10008);
        }
        synchronized (this.e) {
            a = a(context);
            if (a == a2 || a(a) != 1) {
                synchronized (this.g) {
                    if (!this.g.get().booleanValue()) {
                        this.g.set(Boolean.TRUE);
                        this.b.post(new Grapefruit(this, context, true, i2));
                    }
                    try {
                        this.g.wait(z ? this.a.w : 10000L);
                    } catch (InterruptedException unused) {
                    }
                }
                a = a(context);
                if (a == a2) {
                    a = Ginkgo.a(-10004);
                }
            }
        }
        return a;
    }

    public final int a(Ginkgo ginkgo) {
        Context context;
        long j2;
        Context context2;
        if (this.a.s || ginkgo.c != 0 || TextUtils.isEmpty(ginkgo.a)) {
            return 2;
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (currentTimeMillis >= ginkgo.b) {
            this.a.getClass();
            return 3;
        }
        Hickory hickory = this.d;
        synchronized (Ccase.class) {
            context = Ccase.a;
        }
        hickory.getClass();
        try {
            j2 = Long.valueOf(Hickory.b(context, "107")).longValue();
        } catch (Throwable unused) {
            j2 = 0;
        }
        Hickory hickory2 = this.d;
        synchronized (Ccase.class) {
            context2 = Ccase.a;
        }
        if (Math.abs(currentTimeMillis - hickory2.a(context2, "108")) < j2) {
            return 1;
        }
        this.a.getClass();
        return 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c8, code lost:
    
        if (r19 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f3, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ef, code lost:
    
        if (java.lang.Math.abs(java.lang.System.currentTimeMillis() - r9.longValue()) >= com.tencent.turingfd.sdk.ams.ad.Herbaceous.m) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.tencent.turingfd.sdk.ams.ad.Ginkgo a(android.content.Context r17, boolean r18, boolean r19, int r20) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Herbaceous.a(android.content.Context, boolean, boolean, int):com.tencent.turingfd.sdk.ams.ad.Ginkgo");
    }

    public final Ginkgo a(Context context, byte[] bArr, int i2) {
        try {
            HashMap hashMap = new HashMap();
            if (Kiwifruit.f.a("e_w_t", false)) {
                hashMap.put("2007", "1");
            }
            SparseArray<Object> b90_9F87DFDD2CC93068 = TNative$aa.b90_9F87DFDD2CC93068(new SparseArray(), bArr, hashMap, i2);
            int b = Pyxis.b(b90_9F87DFDD2CC93068);
            if (b != 0) {
                return Ginkgo.a(b);
            }
            Integer num = (Integer) Pyxis.a(b90_9F87DFDD2CC93068, 102, Integer.class);
            if (num == null) {
                return Ginkgo.a(-30000);
            }
            if (num.intValue() < 0) {
                return Ginkgo.a(num.intValue() - 30000);
            }
            String str = (String) Pyxis.a(b90_9F87DFDD2CC93068, 101, String.class);
            int i3 = Damson.a;
            if (str == null) {
                str = "";
            }
            if (TextUtils.isEmpty(str)) {
                return Ginkgo.a(num.intValue() - 10010);
            }
            String str2 = (String) Pyxis.a(b90_9F87DFDD2CC93068, 104, String.class);
            if (str2 == null) {
                str2 = "";
            }
            String str3 = (String) Pyxis.a(b90_9F87DFDD2CC93068, 105, String.class);
            if (str3 == null) {
                str3 = "";
            }
            String str4 = (String) Pyxis.a(b90_9F87DFDD2CC93068, 106, String.class);
            if (str4 == null) {
                str4 = "";
            }
            Integer num2 = (Integer) Pyxis.a(b90_9F87DFDD2CC93068, 107, Integer.class);
            String str5 = (String) Pyxis.a(b90_9F87DFDD2CC93068, 108, String.class);
            if (str5 == null) {
                str5 = "";
            }
            if (num2 == null || num2.intValue() < 3600) {
                num2 = 3600;
            }
            long currentTimeMillis = (System.currentTimeMillis() / 1000) + num2.intValue();
            Ginkgo.Cdo cdo = new Ginkgo.Cdo(0);
            cdo.b = currentTimeMillis;
            cdo.a = str;
            cdo.d = str2;
            cdo.e = str3;
            cdo.f = str4;
            cdo.g = str5;
            Ginkgo ginkgo = new Ginkgo(cdo);
            Hickory hickory = this.d;
            hickory.getClass();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("101", ginkgo.a);
            hashMap2.put("102", "" + ginkgo.b);
            if (!TextUtils.isEmpty(ginkgo.d)) {
                hashMap2.put("104", ginkgo.d);
            }
            if (!TextUtils.isEmpty(ginkgo.e)) {
                hashMap2.put("105", ginkgo.e);
            }
            if (!TextUtils.isEmpty(ginkgo.f)) {
                hashMap2.put("106", ginkgo.f);
            }
            if (!TextUtils.isEmpty(ginkgo.g)) {
                hashMap2.put("110", ginkgo.g);
            }
            hickory.a(context, (Map<String, String>) hashMap2, true);
            Hickory hickory2 = this.d;
            long intValue = num2.intValue();
            hickory2.getClass();
            hickory2.a(context, "107", "" + intValue, true);
            hickory2.a(context, "108", "" + (System.currentTimeMillis() / 1000), true);
            return ginkgo;
        } catch (Throwable unused) {
            return Ginkgo.a(-10007);
        }
    }

    public static String a(long j2, long j3) {
        MediaDrm mediaDrm;
        UUID uuid;
        try {
            uuid = new UUID(j2, j3);
            mediaDrm = new MediaDrm(uuid);
        } catch (Throwable unused) {
            mediaDrm = null;
        }
        try {
            byte[] propertyByteArray = mediaDrm.getPropertyByteArray("deviceUniqueId");
            if (propertyByteArray.length == 0) {
                try {
                    if (Build.VERSION.SDK_INT >= 28) {
                        mediaDrm.close();
                    } else {
                        mediaDrm.release();
                    }
                } catch (Throwable unused2) {
                }
                return null;
            }
            String str = uuid + ":" + Damson.a(propertyByteArray);
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    mediaDrm.close();
                } else {
                    mediaDrm.release();
                }
            } catch (Throwable unused3) {
            }
            return str;
        } catch (Throwable unused4) {
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    if (mediaDrm != null) {
                        mediaDrm.close();
                    }
                } else if (mediaDrm != null) {
                    mediaDrm.release();
                }
            } catch (Throwable unused5) {
            }
            return null;
        }
    }
}
