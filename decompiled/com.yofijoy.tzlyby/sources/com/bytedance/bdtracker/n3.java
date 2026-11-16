package com.bytedance.bdtracker;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class n3 implements Handler.Callback {
    public final d0 a;
    public final Handler b;
    public final Map<String, b> c = new HashMap();
    public final Set<String> d = new HashSet();
    public String e = "";

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ Set a;
        public final /* synthetic */ String b;
        public final /* synthetic */ boolean c;

        public a(n3 n3Var, Set set, String str, boolean z) {
            this.a = set;
            this.b = str;
            this.c = z;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            try {
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    jSONArray.put((String) it.next());
                }
                jSONObject.put("$$APP_ID", this.b);
                jSONObject.put("$$EVENT_LOCAL_ID_ARRAY", jSONArray);
                jSONObject.put("$$UPLOAD_STATUS", this.c ? "success" : "failed");
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public String a;
        public JSONObject b;

        public b(String str, JSONObject jSONObject) {
            this.a = str;
            this.b = jSONObject;
        }

        public String toString() {
            StringBuilder a = com.bytedance.bdtracker.a.a("ProfileDataWrapper{apiName='");
            a.append(this.a);
            a.append('\'');
            a.append(", jsonObject=");
            a.append(this.b);
            a.append(AbstractJsonLexerKt.END_OBJ);
            return a.toString();
        }
    }

    public n3(d0 d0Var) {
        this.a = d0Var;
        StringBuilder a2 = com.bytedance.bdtracker.a.a("bd_tracker_profile:");
        a2.append(d0Var.d.m);
        HandlerThread handlerThread = new HandlerThread(a2.toString());
        handlerThread.start();
        this.b = new Handler(handlerThread.getLooper(), this);
    }

    public final void a(b bVar) {
        if (this.a == null) {
            return;
        }
        StringBuilder a2 = com.bytedance.bdtracker.a.a("__profile_");
        a2.append(bVar.a);
        i4 i4Var = new i4(a2.toString(), bVar.b.toString());
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(this.a.d())) {
            d0 d0Var = this.a;
            d0Var.n.a(d0Var.d, i4Var, arrayList);
        } else {
            d0 d0Var2 = this.a;
            d0Var2.n.a(d0Var2.d, i4Var);
        }
        this.a.b(i4Var);
        arrayList.add(i4Var);
        this.a.c().c.b(arrayList);
        this.b.sendMessageDelayed(this.b.obtainMessage(106), 500L);
    }

    public void a(JSONObject jSONObject) {
        a(105, new b("append", jSONObject));
    }

    public void b(JSONObject jSONObject) {
        a(103, new b("increment", jSONObject));
    }

    public void c(JSONObject jSONObject) {
        a(100, new b("set", jSONObject));
    }

    public void d(JSONObject jSONObject) {
        a(102, new b("set_once", jSONObject));
    }

    public void e(JSONObject jSONObject) {
        a(104, new b("unset", jSONObject));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02a2, code lost:
    
        return true;
     */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r13) {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.n3.handleMessage(android.os.Message):boolean");
    }

    public final void a(int i, b bVar) {
        if (this.a.d.x) {
            return;
        }
        Handler handler = this.b;
        handler.sendMessage(handler.obtainMessage(i, bVar));
    }

    public final void a(Set<String> set, boolean z) {
        if (LogUtils.isDisabled() || set == null || set.isEmpty()) {
            return;
        }
        LogUtils.sendJsonFetcher("event_upload_eid", new a(this, set, this.a.d.m, z));
    }
}
