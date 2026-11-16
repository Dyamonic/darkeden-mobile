package com.bytedance.bdtracker;

import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class h0 extends b0 {
    public static final long[] h = {10000};
    public final g3 g;

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ Set a;
        public final /* synthetic */ boolean b;

        public a(Set set, boolean z) {
            this.a = set;
            this.b = z;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("$$APP_ID", h0.this.f.m);
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    jSONArray.put((String) it.next());
                }
                jSONObject.put("$$EVENT_LOCAL_ID_ARRAY", jSONArray);
                jSONObject.put("$$UPLOAD_STATUS", this.b ? "success" : "failed");
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public h0(d0 d0Var) {
        super(d0Var);
        this.g = new g3("sender_", d0Var.e);
    }

    public final void a(Set<String> set, boolean z) {
        if (LogUtils.isDisabled() || set == null || set.isEmpty()) {
            return;
        }
        LogUtils.sendJsonFetcher("event_upload_eid", new a(set, z));
    }

    public boolean a(g4 g4Var) {
        u3 u3Var = this.f.j;
        d0 d0Var = this.e;
        String[] a2 = u3Var.a(d0Var, d0Var.i.e(), g4Var.l);
        boolean z = true;
        try {
            JSONObject jSONObject = new JSONObject(new String(g4Var.z));
            jSONObject.put("local_time", System.currentTimeMillis() / 1000);
            int a3 = this.f.k.a(a2, jSONObject, this.e.e);
            if (a3 != 200) {
                if (a3 >= 500 && a3 < 600) {
                    this.g.b();
                }
                p2.a(this.e.q, 13L, this.e.d(), a3);
                this.e.d.D.error(4, "Send pack failed:{}", Integer.valueOf(a3));
                g4Var.A++;
                a(g4Var.l(), false);
                return false;
            }
            this.g.c();
            g4Var.A = 0;
            try {
                a(g4Var.l(), true);
                this.e.c().a(jSONObject);
                return true;
            } catch (Throwable th) {
                th = th;
                this.e.d.D.error(4, "Send pack failed", th, new Object[0]);
                a(g4Var.l(), false);
                return z;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.bdtracker.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c() {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.h0.c():boolean");
    }

    @Override // com.bytedance.bdtracker.b0
    public String d() {
        return "sender";
    }

    @Override // com.bytedance.bdtracker.b0
    public long[] e() {
        return h;
    }

    @Override // com.bytedance.bdtracker.b0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.b0
    public long g() {
        v1 v1Var = this.e.e;
        return v1Var.a(v1Var.p) ? v1Var.p : v1Var.f.getLong("batch_event_interval", 60000L);
    }
}
