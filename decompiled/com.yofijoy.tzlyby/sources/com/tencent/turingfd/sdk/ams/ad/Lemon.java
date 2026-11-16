package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class Lemon {
    public static final Lemon g = new Lemon();
    public static final Set<Integer> h;
    public Flat d;
    public Hickory e;
    public final Set<Integer> a = new HashSet();
    public final Set<Integer> b = new HashSet();
    public final Object c = new Object();
    public final CanisMajor f = new Cdo(this);

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Lemon$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements CanisMajor {
        public Cdo(Lemon lemon) {
        }
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(2);
        hashSet.add(6);
        hashSet.add(3);
        hashSet.add(32);
        hashSet.add(5);
        hashSet.add(4);
        hashSet.add(40);
        hashSet.add(43);
        hashSet.add(19);
        hashSet.add(36);
        hashSet.add(45);
        hashSet.add(136);
        hashSet.add(143);
        hashSet.add(144);
        hashSet.add(10002);
        hashSet.add(10003);
        int i = Carambola.a;
        if (i == 105668) {
            hashSet.add(18);
        } else if (i == 105928) {
            hashSet.add(18);
        } else if (i == 108168) {
            hashSet.add(18);
        }
        h = Collections.unmodifiableSet(hashSet);
    }

    public long a(Context context) {
        long j = 0;
        if (Kiwifruit.f.d()) {
            return 0L;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            b(context);
            j = System.currentTimeMillis() - currentTimeMillis;
            b();
            return j;
        } catch (Throwable unused) {
            return j;
        }
    }

    public final void b() {
        Map<Integer, Integer> emptyMap;
        try {
            Cprivate b = Kiwifruit.f.b();
            if (b == null || (emptyMap = b.e) == null) {
                emptyMap = Collections.emptyMap();
            }
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (Map.Entry<Integer, Integer> entry : emptyMap.entrySet()) {
                if (entry.getValue().intValue() == 0) {
                    hashSet.add(entry.getKey());
                } else {
                    hashSet2.add(entry.getKey());
                }
            }
            synchronized (this.b) {
                this.b.clear();
                this.b.addAll(h);
                this.b.addAll(hashSet);
                this.b.removeAll(hashSet2);
                synchronized (this.a) {
                    this.b.addAll(this.a);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final byte[] a(Context context, boolean z) {
        byte[] bArr = new byte[0];
        HashMap hashMap = new HashMap();
        StringBuilder a = Banana.a("");
        a.append(Carambola.a);
        hashMap.put("1", a.toString());
        Flat flat = this.d;
        hashMap.put("101", TextUtils.isEmpty(flat.q) ? "" : flat.q);
        Cprivate b = Kiwifruit.f.b();
        if (b != null) {
            hashMap.put("2026", String.valueOf(b.a));
            hashMap.put("2027", String.valueOf(b.c));
        }
        hashMap.put("207", Herbaceous.l.a(context).a);
        if (z) {
            hashMap.put("264", Cdefault.a());
        } else {
            hashMap.put("264", "PPNA");
        }
        try {
            SparseArray<Object> e90_9F87DFDD2CC93068 = TNative$aa.e90_9F87DFDD2CC93068(new SparseArray(), context, hashMap, Foxnut.g);
            return Pyxis.b(e90_9F87DFDD2CC93068) != 0 ? bArr : Pyxis.a(e90_9F87DFDD2CC93068);
        } catch (Throwable unused) {
            return bArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r4 <= 0) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.content.Context r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.c     // Catch: java.lang.Throwable -> L8a
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L8a
            com.tencent.turingfd.sdk.ams.ad.Kiwifruit r1 = com.tencent.turingfd.sdk.ams.ad.Kiwifruit.f     // Catch: java.lang.Throwable -> L87
            boolean r2 = r1.d()     // Catch: java.lang.Throwable -> L87
            if (r2 == 0) goto L36
            com.tencent.turingfd.sdk.ams.ad.Hickory r2 = r9.e     // Catch: java.lang.Throwable -> L87
            java.lang.String r3 = "501"
            long r2 = r2.a(r10, r3)     // Catch: java.lang.Throwable -> L87
            com.tencent.turingfd.sdk.ams.ad.private r4 = r1.b()     // Catch: java.lang.Throwable -> L87
            if (r4 == 0) goto L21
            long r4 = r4.f     // Catch: java.lang.Throwable -> L87
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 > 0) goto L24
        L21:
            r4 = 57600(0xe100, double:2.8458E-319)
        L24:
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L87
            long r6 = r6 - r2
            long r2 = java.lang.Math.abs(r6)     // Catch: java.lang.Throwable -> L87
            r6 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 * r6
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L36
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return
        L36:
            com.tencent.turingfd.sdk.ams.ad.Flat r2 = r9.d     // Catch: java.lang.Throwable -> L87
            com.tencent.turingfd.sdk.ams.ad.Cassiopeia r2 = r2.c()     // Catch: java.lang.Throwable -> L87
            boolean r2 = r2.userAgreement()     // Catch: java.lang.Throwable -> L87
            byte[] r5 = r9.a(r10, r2)     // Catch: java.lang.Throwable -> L87
            int r3 = r5.length     // Catch: java.lang.Throwable -> L87
            if (r3 != 0) goto L49
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return
        L49:
            com.tencent.turingfd.sdk.ams.ad.Longan r3 = com.tencent.turingfd.sdk.ams.ad.Longan.b     // Catch: java.lang.Throwable -> L87
            r4 = 4
            r6 = 8119(0x1fb7, float:1.1377E-41)
            r7 = 18119(0x46c7, float:2.539E-41)
            com.tencent.turingfd.sdk.ams.ad.CanisMajor r8 = r9.f     // Catch: java.lang.Throwable -> L87
            com.tencent.turingfd.sdk.ams.ad.Mango r3 = r3.a(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L87
            byte[] r3 = r3.d     // Catch: java.lang.Throwable -> L87
            com.tencent.turingfd.sdk.ams.ad.private r3 = r9.a(r3)     // Catch: java.lang.Throwable -> L87
            if (r3 != 0) goto L60
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return
        L60:
            r1.a(r3, r2)     // Catch: java.lang.Throwable -> L87
            if (r2 == 0) goto L85
            com.tencent.turingfd.sdk.ams.ad.Hickory r1 = r9.e     // Catch: java.lang.Throwable -> L87
            r1.getClass()     // Catch: java.lang.Throwable -> L87
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L87
            r2.<init>()     // Catch: java.lang.Throwable -> L87
            java.lang.String r3 = ""
            r2.append(r3)     // Catch: java.lang.Throwable -> L87
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L87
            r2.append(r3)     // Catch: java.lang.Throwable -> L87
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L87
            java.lang.String r3 = "501"
            r4 = 1
            r1.a(r10, r3, r2, r4)     // Catch: java.lang.Throwable -> L87
        L85:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            goto L8a
        L87:
            r10 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            throw r10     // Catch: java.lang.Throwable -> L8a
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.turingfd.sdk.ams.ad.Lemon.b(android.content.Context):void");
    }

    public final Cprivate a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        int i = Foxnut.g;
        if (i == 1) {
            try {
                bArr = Pyxis.a(TNative$aa.f90_9F87DFDD2CC93068(new SparseArray(), bArr, i));
            } catch (Throwable unused) {
                return null;
            }
        } else if (i != 0) {
            bArr = bArr2;
        }
        try {
            Bullace bullace = new Bullace();
            bullace.a(new Dorado(bArr));
            int i2 = bullace.a;
            if (i2 < 0) {
                return null;
            }
            if (i2 == 1) {
                return new Cprivate();
            }
            Cprivate cprivate = bullace.b;
            if (cprivate == null) {
                return new Cprivate();
            }
            Log.e("D" + Carambola.a, "s:" + cprivate.a + ",v:" + cprivate.c);
            for (Map.Entry<Integer, Integer> entry : cprivate.e.entrySet()) {
            }
            Map<String, String> map = cprivate.g;
            if (map != null) {
                for (String str : map.keySet()) {
                }
            }
            return cprivate;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public boolean a(int i) {
        boolean z;
        synchronized (this.b) {
            z = !this.b.contains(Integer.valueOf(i));
        }
        return z;
    }

    public String a() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.b) {
            for (Integer num : this.b) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(num);
            }
        }
        return sb.toString();
    }
}
