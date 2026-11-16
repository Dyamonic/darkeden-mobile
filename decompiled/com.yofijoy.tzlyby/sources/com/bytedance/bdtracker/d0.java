package com.bytedance.bdtracker;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import com.bytedance.applog.IPullAbTestConfigCallback;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.UriConfig;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.store.kv.IKVStore;
import com.bytedance.applog.util.UriConstants;
import com.bytedance.bdtracker.i0;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d0 implements Handler.Callback, Comparator<x3> {
    public final n3 A;
    public final j B;
    public final o1 C;
    public long D;
    public final k3 G;
    public a0 b;
    public boolean c;
    public final com.bytedance.bdtracker.d d;
    public final v1 e;
    public c0 f;
    public volatile d4 h;
    public final x1 i;
    public volatile Handler j;
    public g0 k;
    public h0 l;
    public volatile z m;
    public UriConfig o;
    public final Handler p;
    public m2 q;
    public volatile boolean r;
    public b0 s;
    public volatile f0 t;
    public volatile boolean v;
    public volatile long w;
    public volatile f1 y;
    public volatile InitConfig.IpcDataChecker z;
    public long a = 10000;
    public final ArrayList<x3> g = new ArrayList<>(32);
    public final CopyOnWriteArrayList<b0> u = new CopyOnWriteArrayList<>();
    public final List<d> x = new ArrayList();
    public volatile boolean E = false;
    public final i0 n = new i0(this);
    public final e0 F = new e0(this);

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public a() {
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", d0.this.d.m);
                jSONObject.put("isMainProcess", d0.this.e.i());
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public class b implements g {
        public b() {
        }

        public void a(Map<String, String> map) {
            if (d0.this.i.e() == null || d0.this.i.e().opt(TapEventParamConstants.PARAM_SUB_OAID) != null || map == null) {
                return;
            }
            d0.this.j.obtainMessage(17, map).sendToTarget();
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {
        public final /* synthetic */ List a;

        public c(List list) {
            this.a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0 h0Var = d0.this.l;
            List list = this.a;
            if (list == null || list.size() <= 0) {
                return;
            }
            g4 g4Var = new g4();
            d0 d0Var = d0.this;
            h0 h0Var2 = d0Var.l;
            JSONObject a = k0.a(d0Var.i.e());
            IHeaderCustomTimelyCallback headerCustomCallback = h0Var2.f.getHeaderCustomCallback();
            if (headerCustomCallback != null) {
                headerCustomCallback.updateHeader(a);
            }
            g4Var.y = a;
            g4Var.m = d0.this.d.m;
            ArrayList arrayList = new ArrayList();
            for (x3 x3Var : this.a) {
                if (x3Var instanceof e4) {
                    arrayList.add((e4) x3Var);
                }
            }
            g4Var.s = arrayList;
            g4Var.m();
            g4Var.n();
            g4Var.z = g4Var.o();
            if (h0Var != null && h0Var.a(g4Var)) {
                d0 d0Var2 = d0.this;
                d0Var2.D = 0L;
                d4 c = d0Var2.c();
                c.c.a(this.a);
                return;
            }
            d0.this.D = System.currentTimeMillis();
            d0.this.p.obtainMessage(8, this.a).sendToTarget();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class d<T> {
        public T a;

        public d(T t) {
            this.a = t;
        }
    }

    /* loaded from: classes.dex */
    public class e extends d<String> {
        public e(String str) {
            super(str);
        }
    }

    public d0(com.bytedance.bdtracker.d dVar, v1 v1Var, x1 x1Var, o1 o1Var) {
        this.d = dVar;
        this.e = v1Var;
        this.i = x1Var;
        this.C = o1Var;
        StringBuilder a2 = com.bytedance.bdtracker.a.a("bd_tracker_w:");
        a2.append(dVar.m);
        HandlerThread handlerThread = new HandlerThread(a2.toString());
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.p = handler;
        j jVar = new j(this);
        this.B = jVar;
        if (v1Var.c.isDeferredALinkEnabled()) {
            dVar.addDataObserver(jVar);
        }
        x1Var.h.b.a(handler);
        if (x1Var.c.c.isMigrateEnabled()) {
            Context context = x1Var.b;
            try {
                try {
                    if (l2.a(context).c) {
                        v1 v1Var2 = x1Var.c;
                        if (v1Var2 != null) {
                            v1Var2.f.remove("google_aid");
                        }
                        IKVStore iKVStore = x1Var.g;
                        String b2 = x1Var.h.b();
                        if (iKVStore != null) {
                            iKVStore.putString("old_did", b2);
                            iKVStore.putBoolean("is_migrate", true);
                        }
                        x1Var.h.a("openudid");
                        x1Var.h.a("clientudid");
                        x1Var.h.a("serial_number");
                        x1Var.h.a("sim_serial_number");
                        x1Var.h.a("udid");
                        x1Var.h.a("udid_list");
                        x1Var.h.a(TapEventParamConstants.PARAM_DEVICE_ID);
                        x1Var.b("clearMigrationInfo");
                    }
                } catch (Exception e2) {
                    LoggerImpl.global().debug("detect migrate is error, ", e2);
                }
                try {
                    l2.a(context).a();
                } catch (Throwable unused) {
                }
            } catch (Throwable th) {
                try {
                    l2.a(context).a();
                } catch (Throwable unused2) {
                }
                throw th;
            }
        }
        this.A = new n3(this);
        if (this.e.c.isClearDidAndIid()) {
            this.i.b(this.e.c.getClearKey());
        }
        if (this.e.c.getIpcDataChecker() != null && !this.e.i()) {
            this.z = this.e.c.getIpcDataChecker();
        }
        if (this.e.j()) {
            this.q = new r2(this);
        }
        this.p.sendEmptyMessage(10);
        if (this.e.c.autoStart()) {
            i();
        }
        this.G = new k3(this);
    }

    public void a() {
        o5.a(new b());
    }

    public void a(Long l) {
        long j = 0;
        if (l != null && l.longValue() > 0) {
            j = l.longValue();
        }
        this.a = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0038, code lost:
    
        if (com.bytedance.bdtracker.k0.c(r2) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(org.json.JSONObject r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "ssid"
            java.lang.String r2 = ""
            java.lang.String r3 = r8.optString(r1, r2)
            boolean r3 = com.bytedance.bdtracker.k0.d(r3)
            r4 = 1
            if (r3 == 0) goto L14
            return r4
        L14:
            com.bytedance.bdtracker.d r3 = r7.d
            com.bytedance.applog.log.IAppLogLogger r3 = r3.D
            java.lang.Object[] r5 = new java.lang.Object[r0]
            java.lang.String r6 = "Register to get ssid by temp header..."
            r3.debug(r6, r5)
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L50
            r3.<init>()     // Catch: java.lang.Throwable -> L50
            com.bytedance.bdtracker.k0.a(r3, r8)     // Catch: java.lang.Throwable -> L50
            com.bytedance.bdtracker.g0 r5 = r7.k     // Catch: java.lang.Throwable -> L50
            org.json.JSONObject r3 = r5.b(r3)     // Catch: java.lang.Throwable -> L50
            if (r3 != 0) goto L30
            goto L3a
        L30:
            java.lang.String r2 = r3.optString(r1, r2)     // Catch: java.lang.Throwable -> L50
            boolean r3 = com.bytedance.bdtracker.k0.c(r2)     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L3b
        L3a:
            r2 = 0
        L3b:
            boolean r3 = com.bytedance.bdtracker.k0.d(r2)     // Catch: java.lang.Throwable -> L50
            if (r3 == 0) goto L5c
            com.bytedance.bdtracker.d r3 = r7.d     // Catch: java.lang.Throwable -> L50
            com.bytedance.applog.log.IAppLogLogger r3 = r3.D     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = "Register to get ssid by header success."
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L50
            r3.debug(r5, r6)     // Catch: java.lang.Throwable -> L50
            r8.put(r1, r2)     // Catch: java.lang.Throwable -> L50
            return r4
        L50:
            r8 = move-exception
            com.bytedance.bdtracker.d r1 = r7.d
            com.bytedance.applog.log.IAppLogLogger r1 = r1.D
            java.lang.Object[] r2 = new java.lang.Object[r0]
            java.lang.String r3 = "JSON handle failed"
            r1.error(r3, r8, r2)
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d0.a(org.json.JSONObject):boolean");
    }

    public boolean a(boolean z) {
        if ((!this.c || z) && this.j != null) {
            this.c = true;
            this.j.removeMessages(11);
            this.j.sendEmptyMessage(11);
        }
        return this.c;
    }

    public Context b() {
        return this.d.n;
    }

    public void b(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.a(jSONObject);
    }

    public d4 c() {
        if (this.h == null) {
            synchronized (this) {
                d4 d4Var = this.h;
                if (d4Var == null) {
                    d4Var = new d4(this, this.e.c.getDbName());
                }
                this.h = d4Var;
            }
        }
        return this.h;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.b(jSONObject);
    }

    @Override // java.util.Comparator
    public int compare(x3 x3Var, x3 x3Var2) {
        long j = x3Var.c - x3Var2.c;
        if (j < 0) {
            return -1;
        }
        return j > 0 ? 1 : 0;
    }

    public String d() {
        i0 i0Var = this.n;
        if (i0Var != null) {
            return i0Var.e;
        }
        return null;
    }

    public void d(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.c(jSONObject);
    }

    public UriConfig e() {
        if (this.o == null) {
            UriConfig uriConfig = this.e.c.getUriConfig();
            this.o = uriConfig;
            if (uriConfig == null) {
                this.o = UriConstants.createUriConfig(0);
            }
        }
        return this.o;
    }

    public void e(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.d(jSONObject);
    }

    public void f(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        this.A.e(jSONObject);
    }

    public final boolean f() {
        return this.e.h() && !TextUtils.isEmpty(e().getAbUri());
    }

    public boolean g() {
        v1 v1Var = this.e;
        return v1Var.r == 1 && v1Var.c.isAutoTrackEnabled();
    }

    public boolean h() {
        return (this.i.g.getInt("version_code", 0) == this.i.m() && TextUtils.equals(this.e.f.getString(TapEventParamConstants.PARAM_SUB_CHANNEL, ""), this.e.b())) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.bytedance.bdtracker.i0$a] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.bytedance.bdtracker.f1] */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Map<String, ?> map;
        Set set;
        Set set2;
        String str;
        String str2;
        ?? r3 = 0;
        String[] strArr = null;
        r3 = 0;
        r3 = 0;
        switch (message.what) {
            case 1:
                this.d.D.info("AppLog is starting...", new Object[0]);
                v1 v1Var = this.e;
                v1Var.r = v1Var.f.getBoolean("bav_log_collect", v1Var.c.isAutoTrackEnabled()) ? 1 : 0;
                if (this.i.q()) {
                    if (this.e.i()) {
                        StringBuilder a2 = com.bytedance.bdtracker.a.a("bd_tracker_n:");
                        a2.append(this.d.m);
                        HandlerThread handlerThread = new HandlerThread(a2.toString());
                        handlerThread.start();
                        this.j = new Handler(handlerThread.getLooper(), this);
                        this.j.sendEmptyMessage(2);
                        if (this.g.size() > 0) {
                            this.p.removeMessages(4);
                            this.p.sendEmptyMessageDelayed(4, 1000L);
                        }
                        Application application = this.d.n;
                        c5.a = true;
                        w.a.submit(new d5(application));
                        this.d.D.info("AppLog started on main process.", new Object[0]);
                    } else {
                        this.d.D.info("AppLog started on secondary process.", new Object[0]);
                    }
                    if (!LogUtils.isDisabled()) {
                        LogUtils.sendJsonFetcher("start_end", new a());
                    }
                } else {
                    this.d.D.info("AppLog is not ready, will try start again after 1 second...", new Object[0]);
                    this.p.removeMessages(1);
                    this.p.sendEmptyMessageDelayed(1, 1000L);
                }
                return true;
            case 2:
                g0 g0Var = new g0(this);
                this.k = g0Var;
                this.u.add(g0Var);
                InitConfig initConfig = this.e.c;
                if (!((initConfig == null || initConfig.isTrackEventEnabled()) ? false : true)) {
                    h0 h0Var = new h0(this);
                    this.l = h0Var;
                    this.u.add(h0Var);
                    this.E = true;
                }
                UriConfig e2 = e();
                if (!TextUtils.isEmpty(e2.getSettingUri())) {
                    c0 c0Var = new c0(this);
                    this.f = c0Var;
                    this.u.add(c0Var);
                }
                if (!TextUtils.isEmpty(e2.getProfileUri())) {
                    Handler handler = this.A.b;
                    handler.sendMessage(handler.obtainMessage(106));
                }
                this.j.removeMessages(13);
                this.j.sendEmptyMessage(13);
                String a3 = com.bytedance.bdtracker.b.a(this.d, "sp_filter_name");
                if (h()) {
                    g0 g0Var2 = this.k;
                    if (g0Var2 != null) {
                        g0Var2.b = true;
                    }
                    c0 c0Var2 = this.f;
                    if (c0Var2 != null) {
                        c0Var2.b = true;
                    }
                    if (this.e.c.isEventFilterEnable()) {
                        this.y = f1.a(this.d.n, a3, null);
                    }
                } else if (this.e.c.isEventFilterEnable()) {
                    try {
                        IKVStore a4 = o4.a(this.d.n, a3);
                        HashSet hashSet = new HashSet();
                        HashMap hashMap = new HashMap();
                        try {
                            map = a4.getAll();
                        } catch (Throwable unused) {
                            map = null;
                        }
                        if (map != null && map.size() > 0) {
                            int i = 0;
                            for (Map.Entry<String, ?> entry : map.entrySet()) {
                                if (entry != null) {
                                    String key = entry.getKey();
                                    if ("is_block".equals(key)) {
                                        i = a4.getInt("is_block", 0);
                                    } else if ("events".equals(key)) {
                                        try {
                                            set2 = (Set) entry.getValue();
                                        } catch (Throwable unused2) {
                                            set2 = null;
                                        }
                                        if (set2 != null && set2.size() > 0) {
                                            hashSet.addAll(set2);
                                        }
                                    } else if (!TextUtils.isEmpty(key)) {
                                        HashSet hashSet2 = new HashSet();
                                        try {
                                            set = (Set) entry.getValue();
                                        } catch (Throwable unused3) {
                                            set = null;
                                        }
                                        if (set != null && set.size() > 0) {
                                            hashSet2.addAll(set);
                                        }
                                        if (hashSet2.size() > 0) {
                                            hashMap.put(key, hashSet2);
                                        }
                                    }
                                }
                            }
                            r3 = i > 0 ? new h1(hashSet, hashMap) : new g1(hashSet, hashMap);
                        }
                    } catch (Throwable unused4) {
                    }
                    this.y = r3;
                }
                this.j.removeMessages(6);
                this.j.sendEmptyMessage(6);
                m2 m2Var = this.q;
                if (m2Var != null) {
                    r2 r2Var = (r2) m2Var;
                    v1 v1Var2 = r2Var.c.e;
                    Intrinsics.checkExpressionValueIsNotNull(v1Var2, "mEngine.config");
                    if (v1Var2.j()) {
                        r2Var.b.a(new q2(r2Var));
                    }
                }
                return true;
            case 3:
            case 5:
            default:
                this.d.D.error("Unknown handler message type", new Object[0]);
                return true;
            case 4:
                a((String[]) message.obj, false);
                return true;
            case 6:
                this.j.removeMessages(6);
                long j = 5000;
                if (!this.d.x && (!this.e.c.isSilenceInBackground() || this.n.a())) {
                    long j2 = LongCompanionObject.MAX_VALUE;
                    Iterator<b0> it = this.u.iterator();
                    while (it.hasNext()) {
                        b0 next = it.next();
                        if (!next.d) {
                            long a5 = next.a();
                            if (a5 < j2) {
                                j2 = a5;
                            }
                        }
                    }
                    long currentTimeMillis = j2 - System.currentTimeMillis();
                    if (currentTimeMillis <= 5000) {
                        j = currentTimeMillis;
                    }
                }
                this.j.sendEmptyMessageDelayed(6, j);
                if (this.x.size() > 0) {
                    synchronized (this.x) {
                        for (d dVar : this.x) {
                            if (dVar != null) {
                                e eVar = (e) dVar;
                                d0.this.a((String) eVar.a);
                            }
                        }
                        this.x.clear();
                    }
                }
                return true;
            case 7:
                synchronized (this.g) {
                    ArrayList<x3> arrayList = this.g;
                    if (i0.q == null) {
                        i0.q = new i0.b(r3);
                    }
                    i0.q.a(0L);
                    arrayList.add(i0.q);
                }
                a((String[]) null, false);
                return true;
            case 8:
                c().c.b((ArrayList) message.obj);
                return true;
            case 9:
                b0 b0Var = this.s;
                if (!b0Var.d) {
                    long a6 = b0Var.a();
                    if (!b0Var.d) {
                        this.j.sendEmptyMessageDelayed(9, a6 - System.currentTimeMillis());
                    }
                }
                return true;
            case 10:
                synchronized (this.g) {
                    this.C.a(this.g, this.d, this.n);
                }
                o1 o1Var = this.C;
                int size = o1Var.b.size();
                if (size > 0) {
                    strArr = new String[size];
                    o1Var.b.toArray(strArr);
                    o1Var.b.clear();
                }
                a(strArr, false);
                return true;
            case 11:
                a0 a0Var = this.b;
                if (a0Var == null) {
                    a0 a0Var2 = new a0(this);
                    this.b = a0Var2;
                    this.u.add(a0Var2);
                } else {
                    a0Var.d = false;
                }
                a(this.b);
                return true;
            case 12:
                Object obj = message.obj;
                a(obj != null ? obj.toString() : null);
                return true;
            case 13:
                if (f()) {
                    if (this.m == null) {
                        this.m = new z(this);
                    }
                    if (!this.u.contains(this.m)) {
                        this.u.add(this.m);
                    }
                    a(this.m);
                } else {
                    if (this.m != null) {
                        this.m.d = true;
                        this.u.remove(this.m);
                        this.m = null;
                    }
                    x1 x1Var = this.i;
                    x1Var.e((String) null);
                    x1Var.f("");
                    x1Var.a((JSONObject) null);
                }
                return true;
            case 14:
                a((String[]) null, true);
                return true;
            case 15:
                Object[] objArr = (Object[]) message.obj;
                boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
                String str3 = (String) objArr[1];
                if (this.t != null) {
                    this.t.d = true;
                    this.u.remove(this.t);
                    this.t = null;
                }
                if (booleanValue) {
                    this.t = new f0(this, str3);
                    this.u.add(this.t);
                    this.j.removeMessages(6);
                    this.j.sendEmptyMessage(6);
                }
                return true;
            case 16:
                b((x3) message.obj);
                return true;
            case 17:
                Map map2 = (Map) message.obj;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, new JSONObject(map2));
                    String c2 = this.i.c();
                    String f = this.i.f();
                    jSONObject.put("bd_did", c2);
                    jSONObject.put("install_id", f);
                    if (f5.c.b(new Object[0]).booleanValue()) {
                        str = TapEventParamConstants.PARAM_SUB_OS;
                        str2 = "Harmony";
                    } else {
                        str = TapEventParamConstants.PARAM_SUB_OS;
                        str2 = "Android";
                    }
                    jSONObject.put(str, str2);
                    jSONObject.put("aid", this.i.b());
                    this.d.D.debug("Report oaid success: {}", this.k.c(jSONObject));
                } catch (Throwable th) {
                    this.d.D.error("Report oaid failed", th, new Object[0]);
                }
                return true;
            case 18:
                Object obj2 = message.obj;
                if (obj2 instanceof IPullAbTestConfigCallback) {
                    int i2 = message.arg1;
                    IPullAbTestConfigCallback iPullAbTestConfigCallback = (IPullAbTestConfigCallback) obj2;
                    if (f()) {
                        if (this.m == null) {
                            this.m = new z(this);
                        }
                        try {
                            JSONObject a7 = this.m.a(i2);
                            if (iPullAbTestConfigCallback != null) {
                                iPullAbTestConfigCallback.onRemoteConfig(a7);
                            }
                        } catch (j3 unused5) {
                            if (iPullAbTestConfigCallback != null) {
                                iPullAbTestConfigCallback.onTimeoutError();
                            }
                        }
                    } else {
                        this.d.D.warn("ABTest is not enabled", new Object[0]);
                    }
                } else {
                    a(this.m);
                }
                return true;
        }
    }

    public final void i() {
        this.r = true;
        x1 x1Var = this.i;
        if (x1Var.c.k()) {
            o5.b(x1Var.b);
        }
        this.p.sendEmptyMessage(1);
    }

    public void b(x3 x3Var) {
        if (this.t == null) {
            return;
        }
        if ((x3Var instanceof e4) || (((x3Var instanceof h4) && g()) || (x3Var instanceof a4) || (x3Var instanceof i4))) {
            JSONObject h = x3Var.h();
            if (x3Var instanceof h4) {
                if (!((h4) x3Var).k()) {
                    return;
                }
                JSONObject optJSONObject = h.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
                if (optJSONObject != null) {
                    try {
                        optJSONObject.remove("duration");
                        h.put(MetricsSQLiteCacheKt.METRICS_PARAMS, optJSONObject);
                    } catch (Throwable unused) {
                    }
                }
            }
            if ((x3Var instanceof a4) && !h.has(NotificationCompat.CATEGORY_EVENT)) {
                try {
                    h.put(NotificationCompat.CATEGORY_EVENT, h.optString("log_type", ((a4) x3Var).s));
                } catch (Throwable unused2) {
                }
            }
            this.d.k.a(h, this.t.g);
        }
    }

    public final void b(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(this.i.k());
        this.i.h(str);
        this.i.i(str2);
        this.i.g("");
        this.i.d("$tr_web_ssid");
        if (this.e.c.isClearABCacheOnUserChange() && !isEmpty) {
            this.i.e((String) null);
        }
        this.v = true;
        if (this.j != null) {
            this.j.sendMessage(this.j.obtainMessage(12, str));
            return;
        }
        synchronized (this.x) {
            this.x.add(new e(str));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c4, code lost:
    
        if (r0.a(r0.a.getWritableDatabase(), "eventv3", "_app_id= ? ", new java.lang.String[]{r10.d.m}) >= r11) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01c8, code lost:
    
        if (r1 != false) goto L102;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String[] r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d0.a(java.lang.String[], boolean):void");
    }

    public void a(x3 x3Var) {
        int size;
        if (x3Var.c == 0) {
            this.d.D.warn("Data ts is 0", new Object[0]);
        }
        synchronized (this.g) {
            size = this.g.size();
            this.g.add(x3Var);
            this.n.a(this.d, x3Var, this.g);
        }
        boolean z = x3Var instanceof h4;
        if (size % 10 == 0 || z) {
            this.p.removeMessages(4);
            if (z || size != 0) {
                this.p.sendEmptyMessage(4);
            } else {
                this.p.sendEmptyMessageDelayed(4, 200L);
            }
        }
    }

    public final void a(String str) {
        JSONObject jSONObject = new JSONObject();
        k0.a(jSONObject, this.i.e());
        try {
            g0 g0Var = this.k;
            if (g0Var == null || !g0Var.a(jSONObject)) {
                return;
            }
            if (k0.d(str)) {
                this.e.f.putInt("is_first_time_launch", 1);
            }
            a(true);
        } catch (Throwable th) {
            this.d.D.error("Register new uuid:{} failed", th, str);
        }
    }

    public final void a(List<x3> list) {
        w.a.execute(new c(list));
    }

    public void a(String str, String str2) {
        String k = this.i.k();
        String l = this.i.l();
        boolean z = false;
        if (k0.a(str, k) && k0.a(str2, l)) {
            this.d.D.debug("setUserUniqueId not change", new Object[0]);
            return;
        }
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        h4 a2 = v.a();
        boolean d2 = k0.d(this.n.e);
        if (d2 && a2 != null) {
            a2 = (h4) a2.m9clone();
            a2.m = this.d.m;
            long j = currentTimeMillis - a2.c;
            a2.a(currentTimeMillis);
            if (j < 0) {
                j = 0;
            }
            a2.s = j;
            a2.B = this.n.m;
            this.n.a(this.d, a2);
            arrayList.add(a2);
        }
        b(str, str2);
        if (a2 == null) {
            a2 = v.j;
        } else {
            z = true;
        }
        if (d2 && a2 != null) {
            h4 h4Var = (h4) a2.m9clone();
            h4Var.a(currentTimeMillis + 1);
            h4Var.s = -1L;
            this.n.a(this.d, h4Var, arrayList, true).v = this.n.m;
            if (z) {
                this.n.a(this.d, h4Var);
                arrayList.add(h4Var);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a((x3) it.next());
        }
        this.p.sendEmptyMessage(14);
    }

    public final void a(b0 b0Var) {
        if (this.j == null || b0Var == null || this.d.x) {
            return;
        }
        b0Var.b = true;
        if (Looper.myLooper() == this.j.getLooper()) {
            b0Var.a();
        } else {
            this.j.removeMessages(6);
            this.j.sendEmptyMessage(6);
        }
    }
}
