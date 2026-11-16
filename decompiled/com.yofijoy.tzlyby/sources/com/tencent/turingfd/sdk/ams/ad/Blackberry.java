package com.tencent.turingfd.sdk.ams.ad;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.juhe.juhesdk.sdk.SDKError;
import com.tencent.turingfd.sdk.ams.ad.Cthrow;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Blackberry {
    public static final String a = Cfinally.a(Cfinally.Z0);
    public static final String b = Cfinally.a(Cfinally.d1);
    public static final AtomicReference<Bryony> c = new AtomicReference<>(null);

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Blackberry$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cdo implements Callable<Bryony> {
        public static final HashMap<String, FutureTask<Bryony>> d = new HashMap<>();
        public final String a;
        public final Map<Integer, String> b;
        public final boolean c;

        /* renamed from: com.tencent.turingfd.sdk.ams.ad.Blackberry$do$do, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0051do implements Comparator<Integer> {
            public C0051do(Cdo cdo) {
            }

            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return num.intValue() - num2.intValue();
            }
        }

        public Cdo(Map<Integer, String> map, boolean z) {
            this.b = map;
            this.c = z;
            if (map != null && !map.isEmpty()) {
                TreeMap treeMap = new TreeMap(new C0051do(this));
                treeMap.putAll(map);
                Iterator it = treeMap.keySet().iterator();
                StringBuilder sb = new StringBuilder();
                while (it.hasNext()) {
                    sb.append((String) treeMap.get((Integer) it.next()));
                }
                this.a = sb.toString();
                return;
            }
            this.a = "";
        }

        public FutureTask<Bryony> a() {
            FutureTask<Bryony> futureTask;
            HashMap<String, FutureTask<Bryony>> hashMap = d;
            synchronized (hashMap) {
                Iterator<Map.Entry<String, FutureTask<Bryony>>> it = hashMap.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().isDone()) {
                        it.remove();
                    }
                }
                HashMap<String, FutureTask<Bryony>> hashMap2 = d;
                futureTask = hashMap2.get(this.a);
                if (futureTask == null || futureTask.isDone()) {
                    futureTask = new FutureTask<>(this);
                    Cpackage.a.submit(futureTask);
                    hashMap2.put(this.a, futureTask);
                }
            }
            return futureTask;
        }

        @Override // java.util.concurrent.Callable
        public Bryony call() throws Exception {
            Context context;
            synchronized (Ccase.class) {
                context = Ccase.a;
            }
            Betelnut betelnut = new Betelnut();
            try {
                Lemon.g.a(context);
                betelnut.b = 1;
                betelnut.e = System.currentTimeMillis();
                byte[] a = Blackberry.a(context, this.b, betelnut, this.c);
                betelnut.f = System.currentTimeMillis();
                betelnut.c = a.length;
                Bryony a2 = Blackberry.a(context, a, betelnut);
                Blackberry.a(context, a2);
                Blackberry.a(context, betelnut);
                return a2;
            } catch (Throwable unused) {
                return new Bryony(-10015);
            }
        }
    }

    public static void a() {
        Context context;
        Gemini<Cfinal> gemini = Berry.a;
        if (Kiwifruit.f.a("enable_risk_click", Carambola.b)) {
            if (Build.VERSION.SDK_INT >= 28 && !Cbreak.a()) {
                Apricot.a();
            }
            Log.i("TRCDM", "erc");
            Nectarine nectarine = Berry.e;
            synchronized (Cthrow.class) {
                WeakHashMap<Activity, Object> weakHashMap = Cthrow.a;
                if (nectarine != null) {
                    synchronized (Ccase.class) {
                        context = Ccase.a;
                    }
                    if (context instanceof Application) {
                        Application application = (Application) context;
                        AtomicReference<Cthrow.Cdo> atomicReference = Cthrow.b;
                        synchronized (atomicReference) {
                            if (atomicReference.get() == null) {
                                HandlerThread handlerThread = new HandlerThread("TuringDispatch");
                                handlerThread.start();
                                Cthrow.Cdo cdo = new Cthrow.Cdo(new Cconst(handlerThread.getLooper(), nectarine));
                                atomicReference.set(cdo);
                                application.registerActivityLifecycleCallbacks(cdo);
                            }
                        }
                    }
                }
            }
        }
    }

    public static Bryony a(Context context, byte[] bArr, Betelnut betelnut) {
        if (bArr.length == 0) {
            return new Bryony(-1000);
        }
        Mango a2 = Longan.b.a(5, bArr, 8123, 18123, null);
        int i = a2.a;
        if (i != 0) {
            return new Bryony(i);
        }
        byte[] bArr2 = a2.d;
        try {
            Cantaloupe cantaloupe = new Cantaloupe();
            cantaloupe.a = -999;
            if (betelnut.b == 1) {
                cantaloupe = (Cantaloupe) Peach.a(cantaloupe, bArr2);
            } else {
                Dorado dorado = new Dorado(bArr2);
                dorado.b = "UTF-8";
                cantaloupe.a(dorado);
            }
            if (cantaloupe == null) {
                return new Bryony(-1002);
            }
            int i2 = cantaloupe.a;
            if (i2 == 0) {
                if (TextUtils.isEmpty(cantaloupe.b)) {
                    return new Bryony(SDKError.ERR_CHANNEL_SDK_ERR);
                }
                Cascara.a(cantaloupe.f, cantaloupe.e);
                int seconds = (int) TimeUnit.MINUTES.toSeconds(10L);
                if (cantaloupe.c < 0) {
                    cantaloupe.c = seconds;
                }
                return new Bryony(0, cantaloupe.b, System.currentTimeMillis(), cantaloupe.c * 1000, cantaloupe.d, cantaloupe.e);
            }
            return new Bryony((-2000) - i2);
        } catch (Throwable unused) {
            return new Bryony(-999);
        }
    }

    public static Bryony a(Context context, Map<Integer, String> map, int i, long j) {
        Flat flat;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return new Bryony(-10008);
        }
        Bryony a2 = a(context);
        if (a2 != null && (a2.e & 1) != 0) {
            i |= 1;
        }
        if (map != null && !map.isEmpty()) {
            i = (i & (-2)) | 2;
        }
        boolean z = (i & 1) != 0;
        boolean z2 = (i & 2) == 0;
        if (z && a2 != null) {
            if (Sagittarius.c(context) && Math.abs(System.currentTimeMillis() - a2.c) >= a2.d) {
                new Cdo(null, true).a();
            }
            return a2;
        }
        if (!Sagittarius.c(context)) {
            return (!z2 || a2 == null) ? new Bryony(-10012) : a2;
        }
        FutureTask<Bryony> a3 = new Cdo(map, false).a();
        if (j <= 0) {
            try {
                synchronized (Flat.class) {
                    flat = Flat.D;
                }
                j = flat.x;
            } catch (TimeoutException unused) {
                return (!z2 || a2 == null) ? new Bryony(-10004) : a2;
            } catch (Exception unused2) {
                return (!z2 || a2 == null) ? new Bryony(-10015) : a2;
            }
        }
        return a3.get(j, TimeUnit.MILLISECONDS);
    }

    public static void a(Context context, Betelnut betelnut) {
        long j;
        StringBuilder a2 = Banana.a("5_");
        a2.append(betelnut.b);
        a2.append("_");
        a2.append(betelnut.d);
        a2.append("_");
        a2.append(System.currentTimeMillis() - betelnut.a);
        a2.append("_");
        a2.append(betelnut.c);
        a2.append("_");
        long j2 = betelnut.e;
        if (j2 >= 0) {
            long j3 = betelnut.f;
            if (j3 >= j2) {
                j = j3 - j2;
                a2.append(j);
                String sb = a2.toString();
                String str = Hickory.b;
                HashMap hashMap = new HashMap();
                hashMap.put("703", sb);
                Hickory.a(context, hashMap);
            }
        }
        j = -1;
        a2.append(j);
        String sb2 = a2.toString();
        String str2 = Hickory.b;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("703", sb2);
        Hickory.a(context, hashMap2);
    }

    public static String a(Context context, int i, Cabstract cabstract, boolean z, boolean z2) {
        Flat flat;
        HashMap hashMap = new HashMap();
        hashMap.put("3", "" + i);
        hashMap.put("3005", z ? "1" : "0");
        hashMap.put("3006", z2 ? "1" : "0");
        if (i == 17 || i == 40) {
            long currentTimeMillis = System.currentTimeMillis();
            synchronized (Flat.class) {
                flat = Flat.D;
            }
            List<String> a2 = UrsaMajor.a(flat.d);
            cabstract.a(-i, System.currentTimeMillis() - currentTimeMillis);
            HashSet hashSet = new HashSet();
            if (!Cimport.a(a2)) {
                hashSet.addAll(a2);
            }
            if (z) {
                Set<String> c2 = Kiwifruit.f.c();
                if (c2 != null) {
                    hashSet.addAll(c2);
                }
                hashSet.add(context.getPackageName());
            }
            if (!hashSet.isEmpty()) {
                hashMap.put("277", UrsaMajor.a(hashSet));
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        try {
            SparseArray<Object> h90_9F87DFDD2CC93068 = TNative$aa.h90_9F87DFDD2CC93068(new SparseArray(), context, hashMap, 0);
            if (Pyxis.b(h90_9F87DFDD2CC93068) != 0) {
                return "";
            }
            String str = (String) Pyxis.a(h90_9F87DFDD2CC93068, HttpStatus.SC_RESET_CONTENT, String.class);
            int i2 = Damson.a;
            if (str == null) {
                str = "";
            }
            cabstract.a.put(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis() - currentTimeMillis2));
            return str;
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0848  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x084b  */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30, types: [int] */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32, types: [int] */
    /* JADX WARN: Type inference failed for: r9v52 */
    /* JADX WARN: Type inference failed for: r9v53 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(android.content.Context r20, java.util.Map r21, com.tencent.turingfd.sdk.ams.ad.Betelnut r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 2339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Blackberry.a(android.content.Context, java.util.Map, com.tencent.turingfd.sdk.ams.ad.Betelnut, boolean):byte[]");
    }

    public static Bryony a(Context context) {
        long j;
        int i;
        Context context2;
        AtomicReference<Bryony> atomicReference = c;
        synchronized (atomicReference) {
            Bryony bryony = atomicReference.get();
            if (bryony == null) {
                String b2 = Hickory.b(context, "1001");
                if (TextUtils.isEmpty(b2)) {
                    return null;
                }
                long j2 = 0;
                try {
                    j = Long.parseLong(Hickory.b(context, "1002"));
                } catch (Throwable unused) {
                    j = 0;
                }
                try {
                    j2 = Long.parseLong(Hickory.b(context, "1003"));
                } catch (Throwable unused2) {
                }
                long j3 = j2;
                try {
                    i = Integer.parseInt(Hickory.b(context, "1004"));
                } catch (Throwable unused3) {
                    i = 0;
                }
                int i2 = i;
                synchronized (Ccase.class) {
                    context2 = Ccase.a;
                }
                bryony = new Bryony(0, b2, j, j3, i2, Hickory.b(context2, "1005"));
                c.set(bryony);
            }
            return bryony;
        }
    }

    public static void a(Context context, Bryony bryony) {
        AtomicReference<Bryony> atomicReference = c;
        synchronized (atomicReference) {
            if (bryony.a != 0) {
                return;
            }
            atomicReference.set(bryony);
            String str = Hickory.b;
            if (TextUtils.isEmpty(bryony.b)) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("1001", bryony.b);
            hashMap.put("1002", String.valueOf(bryony.c));
            hashMap.put("1003", String.valueOf(bryony.d));
            hashMap.put("1004", String.valueOf(bryony.e));
            String str2 = bryony.f;
            int i = Damson.a;
            if (str2 == null) {
                str2 = "";
            }
            hashMap.put("1005", str2);
            Hickory.a(context, hashMap);
        }
    }
}
