package com.bytedance.bdtracker;

import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import java.util.Calendar;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class i0 {
    public static final AtomicLong p = new AtomicLong(1000);
    public static b q;
    public long a;
    public final d0 b;
    public h4 c;
    public h4 d;
    public String e;
    public volatile long f;
    public int g;
    public volatile boolean i;
    public long j;
    public int k;
    public String l;
    public volatile String m;
    public long h = -1;
    public volatile boolean n = false;
    public volatile boolean o = false;

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ d a;
        public final /* synthetic */ boolean b;
        public final /* synthetic */ long c;

        public a(d dVar, boolean z, long j) {
            this.a = dVar;
            this.b = z;
            this.c = j;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", this.a.m);
                jSONObject.put("sessionId", i0.this.e);
                boolean z = true;
                jSONObject.put("isBackground", !this.b);
                if (this.c == -1) {
                    z = false;
                }
                jSONObject.put("newLaunch", z);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends k4 {
        public /* synthetic */ b(a aVar) {
        }
    }

    public i0(d0 d0Var) {
        this.b = d0Var;
    }

    public static boolean a(x3 x3Var) {
        if (x3Var instanceof h4) {
            return ((h4) x3Var).k();
        }
        return false;
    }

    public void a(x3 x3Var, List<x3> list, d dVar) {
        if (!(x3Var instanceof h4)) {
            if (x3Var instanceof b) {
                return;
            }
            list.add(x3Var);
            return;
        }
        h4 h4Var = (h4) x3Var;
        if (h4Var.k()) {
            this.j = 0L;
            list.add(x3Var);
            if (TextUtils.isEmpty(h4Var.t)) {
                h4 h4Var2 = this.d;
                if ((h4Var2 == null || (h4Var.c - h4Var2.c) - h4Var2.s >= 500) && ((h4Var2 = this.c) == null || (h4Var.c - h4Var2.c) - h4Var2.s >= 500)) {
                    return;
                }
                h4Var.t = h4Var2.u;
                return;
            }
            return;
        }
        Bundle a2 = a(x3Var.c, 0L);
        if (dVar != null && a2 != null) {
            dVar.onEventV3("play_session", a2, 1);
        }
        this.j = h4Var.c;
        list.add(x3Var);
        if (!h4Var.D) {
            this.c = h4Var;
        } else {
            this.d = h4Var;
            this.c = null;
        }
    }

    public void a(IAppLogInstance iAppLogInstance, x3 x3Var) {
        JSONObject jSONObject;
        if (x3Var != null) {
            x1 x1Var = this.b.i;
            x3Var.m = iAppLogInstance.getAppId();
            x3Var.f = this.a;
            x3Var.g = x1Var.k();
            x3Var.h = x1Var.l();
            x3Var.i = x1Var.i();
            x3Var.e = this.e;
            x3Var.d = p.incrementAndGet();
            String str = x3Var.j;
            String a2 = x1Var.a();
            if (TextUtils.isEmpty(str)) {
                str = a2;
            } else if (!TextUtils.isEmpty(a2)) {
                Set<String> c = x1Var.c(a2);
                c.addAll(x1Var.c(str));
                str = x1Var.a(c);
            }
            x3Var.j = str;
            x3Var.k = z4.b(this.b.b(), true).a;
            if ((x3Var instanceof e4) && this.h > 0 && k0.a(((e4) x3Var).u, "$crash") && (jSONObject = x3Var.o) != null) {
                try {
                    jSONObject.put("$session_duration", System.currentTimeMillis() - this.h);
                } catch (Throwable unused) {
                }
            }
            this.b.d.D.debug("fillSessionParams data: " + x3Var, new Object[0]);
        }
    }

    public synchronized Bundle a(long j, long j2) {
        Bundle bundle;
        bundle = null;
        long j3 = this.f;
        if (this.b.e.c.isPlayEnable() && a() && j3 > 0) {
            long j4 = j - j3;
            if (j4 > j2) {
                bundle = new Bundle();
                bundle.putInt("session_no", this.k);
                int i = this.g + 1;
                this.g = i;
                bundle.putInt("send_times", i);
                bundle.putLong("current_duration", j4 / 1000);
                bundle.putString("session_start_time", x3.b(this.h));
                this.f = j;
            }
        }
        return bundle;
    }

    public boolean a() {
        return this.i && this.j == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        if (r11.h > (r13.c + 7200000)) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.bytedance.bdtracker.d r12, com.bytedance.bdtracker.x3 r13, java.util.List<com.bytedance.bdtracker.x3> r14) {
        /*
            r11 = this;
            com.bytedance.bdtracker.d0 r0 = r11.b
            com.bytedance.bdtracker.v1 r0 = r0.e
            boolean r0 = r0.i()
            if (r0 == 0) goto L61
            boolean r0 = r13 instanceof com.bytedance.bdtracker.h4
            r1 = 0
            if (r0 == 0) goto L17
            r0 = r13
            com.bytedance.bdtracker.h4 r0 = (com.bytedance.bdtracker.h4) r0
            boolean r0 = r0.k()
            goto L18
        L17:
            r0 = r1
        L18:
            long r2 = r11.h
            r4 = -1
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 1
            if (r2 != 0) goto L22
            goto L58
        L22:
            boolean r2 = r11.i
            if (r2 != 0) goto L2c
            if (r0 == 0) goto L2c
            r11.a(r12, r13, r14, r3)
            goto L5b
        L2c:
            long r4 = r11.j
            r6 = 0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 == 0) goto L4c
            long r6 = r13.c
            com.bytedance.bdtracker.d0 r2 = r11.b
            com.bytedance.bdtracker.v1 r2 = r2.e
            com.bytedance.applog.store.kv.IKVStore r2 = r2.f
            r8 = 30000(0x7530, double:1.4822E-319)
            java.lang.String r10 = "session_interval"
            long r8 = r2.getLong(r10, r8)
            long r8 = r8 + r4
            int r2 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r2 <= 0) goto L4c
            r11.n = r3
            goto L58
        L4c:
            long r4 = r11.h
            long r6 = r13.c
            r8 = 7200000(0x6ddd00, double:3.5572727E-317)
            long r6 = r6 + r8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 <= 0) goto L5c
        L58:
            r11.a(r12, r13, r14, r0)
        L5b:
            r1 = r3
        L5c:
            r11.a(r12, r13)
            r11.o = r1
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.i0.a(com.bytedance.bdtracker.d, com.bytedance.bdtracker.x3, java.util.List):void");
    }

    public synchronized f4 a(d dVar, x3 x3Var, List<x3> list, boolean z) {
        f4 f4Var;
        long j = x3Var instanceof b ? -1L : x3Var.c;
        this.e = UUID.randomUUID().toString();
        if (!LogUtils.isDisabled()) {
            LogUtils.sendJsonFetcher("session_start", new a(dVar, z, j));
        }
        if (z && !this.b.v && TextUtils.isEmpty(this.m)) {
            this.m = this.e;
        }
        AtomicLong atomicLong = p;
        atomicLong.set(1000L);
        this.h = j;
        this.i = z;
        this.j = 0L;
        this.f = 0L;
        if (z) {
            Calendar calendar = Calendar.getInstance();
            StringBuilder a2 = com.bytedance.bdtracker.a.a("");
            a2.append(calendar.get(1));
            a2.append(calendar.get(2));
            a2.append(calendar.get(5));
            String sb = a2.toString();
            v1 v1Var = this.b.e;
            if (TextUtils.isEmpty(this.l)) {
                this.l = v1Var.e.getString("session_last_day", "");
                this.k = v1Var.e.getInt("session_order", 0);
            }
            if (sb.equals(this.l)) {
                this.k++;
            } else {
                this.l = sb;
                this.k = 1;
            }
            v1Var.e.putString("session_last_day", sb).putInt("session_order", this.k);
            this.g = 0;
            this.f = x3Var.c;
        }
        f4Var = null;
        if (j != -1) {
            f4Var = new f4();
            f4Var.m = x3Var.m;
            f4Var.e = this.e;
            f4Var.u = !this.i;
            f4Var.d = atomicLong.incrementAndGet();
            f4Var.a(this.h);
            f4Var.t = this.b.i.n();
            f4Var.s = this.b.i.m();
            f4Var.f = this.a;
            f4Var.g = this.b.i.k();
            f4Var.h = this.b.i.l();
            f4Var.i = dVar.getSsid();
            f4Var.j = dVar.getAbSdkVersion();
            f4Var.w = z ? this.b.e.f.getInt("is_first_time_launch", 1) : 0;
            if (z && f4Var.w == 1) {
                this.b.e.f.putInt("is_first_time_launch", 0);
            }
            h4 a3 = v.a();
            if (a3 != null) {
                f4Var.y = a3.u;
                f4Var.x = a3.v;
            }
            if ((x3Var instanceof h4) && a3 == null) {
                h4 h4Var = (h4) x3Var;
                f4Var.y = h4Var.u;
                f4Var.x = h4Var.v;
            }
            if (this.i && this.n) {
                f4Var.z = this.n;
                this.n = false;
            }
            this.b.d.D.debug("fillSessionParams launch: " + f4Var, new Object[0]);
            list.add(f4Var);
        }
        d dVar2 = this.b.d;
        if (dVar2.l <= 0) {
            dVar2.l = 6;
        }
        dVar.D.debug("Start new session:{} with background:{}", this.e, Boolean.valueOf(!this.i));
        return f4Var;
    }
}
