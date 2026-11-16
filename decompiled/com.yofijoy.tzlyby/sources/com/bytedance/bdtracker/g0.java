package com.bytedance.bdtracker;

import com.bytedance.applog.Level;
import com.bytedance.applog.game.GameReportHelper;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class g0 extends b0 {
    public static final long[] g = {60000, 60000, 60000, 120000, 120000, 180000, 180000, 360000, 360000, 540000, 540000};
    public static final long[] h = {180000, 180000, 360000, 360000, 540000, 540000, 720000, 720000};
    public static final long[] i = {2000, 10000, 10000, 20000, 20000, 60000, 60000, 120000, 120000, 180000, 180000, 360000, 360000, 540000, 540000};

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;
        public final /* synthetic */ String d;
        public final /* synthetic */ String e;
        public final /* synthetic */ String f;

        public a(String str, String str2, String str3, String str4, String str5, String str6) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", g0.this.f.m);
                jSONObject.put("did", this.a);
                jSONObject.put("installId", this.b);
                jSONObject.put("ssid", this.c);
                jSONObject.put("bdDid", this.d);
                jSONObject.put("uuid", this.e);
                jSONObject.put("uuidType", this.f);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public g0(d0 d0Var) {
        super(d0Var, d0Var.i.d.optLong("register_time", 0L));
    }

    public synchronized boolean a(JSONObject jSONObject) {
        this.e.d.D.debug(1, "Start do register work", new Object[0]);
        String optString = jSONObject.optString("user_unique_id");
        String optString2 = jSONObject.optString("user_unique_id_type");
        d0 d0Var = this.e;
        x1 x1Var = d0Var.i;
        v1 v1Var = d0Var.e;
        v1Var.c.getPreInstallCallback();
        Map<String, Object> commonHeader = v1Var.c.getCommonHeader();
        jSONObject.put("req_id", e5.a.b(new Object[0]));
        if (v1Var.k()) {
            try {
                boolean z = o5.a.b(this.f.n).c;
                this.e.d.D.debug(1, "Oaid maySupport: {}", Boolean.valueOf(z));
                jSONObject.put("oaid_may_support", z);
            } catch (Throwable th) {
                this.e.d.D.error(1, "Check oaid maySupport failed.", th, new Object[0]);
            }
        }
        if (commonHeader != null) {
            for (Map.Entry<String, Object> entry : commonHeader.entrySet()) {
                if (entry.getValue() != null) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        }
        JSONObject b = b(jSONObject);
        if (b == null) {
            this.e.d.D.debug(1, "Register finished", new Object[0]);
            return false;
        }
        String optString3 = b.optString(TapEventParamConstants.PARAM_DEVICE_ID, "");
        String optString4 = b.optString("install_id", "");
        String optString5 = b.optString("ssid", "");
        String optString6 = b.optString("bd_did", "");
        String optString7 = b.optString("cd", "");
        if (k0.d(optString5)) {
            this.e.c().a(optString, optString5);
        }
        boolean a2 = x1Var.a(b, optString, optString3, optString4, optString5, optString6, optString7);
        if (a2) {
            d0 d0Var2 = this.e;
            d0Var2.a(d0Var2.m);
            if (this.e.e.c.isReportOaidEnable()) {
                this.e.a();
            }
            if (!LogUtils.isDisabled()) {
                LogUtils.sendJsonFetcher("device_register_end", new a(optString3, optString4, optString5, optString6, optString, optString2));
            }
        }
        return a2;
    }

    public JSONObject b(JSONObject jSONObject) {
        this.e.d.D.debug(1, "Start to invokeRegister", new Object[0]);
        try {
            if (jSONObject.opt(TapEventParamConstants.PARAM_SUB_OAID) instanceof String) {
                jSONObject.remove(TapEventParamConstants.PARAM_SUB_OAID);
                if (this.e.i != null && this.e.i.e() != null) {
                    Object opt = this.e.i.e().opt(TapEventParamConstants.PARAM_SUB_OAID);
                    if (opt instanceof JSONObject) {
                        jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, opt);
                    }
                }
            }
            JSONObject b = s3.b(jSONObject);
            return this.f.k.a(this.f.j.a(jSONObject, this.e.e().getRegisterUri(), true, Level.L1), b);
        } catch (Throwable th) {
            this.e.d.D.error(1, "Request to register server failed.", th, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.bdtracker.b0
    public boolean c() {
        JSONObject jSONObject = new JSONObject();
        k0.a(jSONObject, this.e.i.e());
        return a(jSONObject);
    }

    @Override // com.bytedance.bdtracker.b0
    public String d() {
        return GameReportHelper.REGISTER;
    }

    @Override // com.bytedance.bdtracker.b0
    public long[] e() {
        int h2 = this.e.i.h();
        if (h2 == 0) {
            return i;
        }
        if (h2 != 1) {
            if (h2 == 2) {
                return g;
            }
            this.e.d.D.error(1, "Unknown register state", new Object[0]);
        }
        return h;
    }

    @Override // com.bytedance.bdtracker.b0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.b0
    public long g() {
        return this.e.n.i ? 21600000L : 43200000L;
    }

    public JSONObject c(JSONObject jSONObject) {
        try {
            JSONObject b = s3.b(jSONObject);
            return this.f.k.b(this.e.e().getReportOaidUri(), b);
        } catch (Throwable th) {
            this.e.d.D.error(1, "Report oaid failed.", th, new Object[0]);
            return null;
        }
    }
}
