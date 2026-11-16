package com.bytedance.bdtracker;

import com.bytedance.applog.Level;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.taptap.sdk.moment.constant.Constant;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c0 extends b0 {

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public final /* synthetic */ JSONObject a;

        public a(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            k0.c(this.a, jSONObject);
            try {
                jSONObject.put("appId", c0.this.f.m);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public c0(d0 d0Var) {
        super(d0Var, d0Var.e.f.getLong("app_log_last_config_time", 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.bdtracker.b0
    public boolean c() {
        String str;
        int i;
        x1 x1Var = this.e.i;
        JSONObject e = x1Var.e();
        if (x1Var.h() != 0 && e != null) {
            JSONObject b = s3.b(e);
            if (this.e.e.c.isEventFilterEnable()) {
                b.put("event_filter", 1);
            }
            w4.a(this.f, b);
            String a2 = this.f.j.a(x1Var.e(), this.e.e().getSettingUri(), true, Level.L1);
            s3 s3Var = this.f.k;
            String a3 = s3.a(a2, w4.b);
            s3Var.b.D.debug(11, "Start to get config to uri:{} with request:{}...", a3, b);
            try {
                str = s3Var.a(b, a3, s3Var.a(), Constant.CALLBACK_CODE_LOGIN_SUCCESS);
            } catch (Throwable th) {
                s3Var.b.D.error(11, "Config failed", th, new Object[0]);
                str = null;
            }
            s3Var.b.D.debug(11, "Get config with response:{}", str);
            JSONObject a4 = s3Var.a(str);
            JSONObject optJSONObject = (a4 != null && "ss_app_log".equals(a4.optString("magic_tag", ""))) != false ? a4.optJSONObject("config") : null;
            v1 v1Var = this.e.e;
            i1 i1Var = this.f.y;
            if (i1Var != null) {
                i1Var.onRemoteConfigGet(!k0.b(optJSONObject, v1Var.i), optJSONObject);
            }
            if (optJSONObject != null) {
                v1Var.b.D.debug(Collections.singletonList("ConfigManager"), "Set config:{}", optJSONObject);
                v1Var.i = optJSONObject;
                long currentTimeMillis = System.currentTimeMillis();
                long optInt = optJSONObject.optInt("session_interval", 0);
                if (optInt <= 0 || optInt > 604800) {
                    v1Var.f.remove("session_interval");
                } else {
                    v1Var.f.putLong("session_interval", optInt * 1000);
                }
                long optInt2 = optJSONObject.optInt("batch_event_interval", 60) * 1000;
                if ((optInt2 >= 10000 && optInt2 <= 300000) == true) {
                    v1Var.f.putLong("batch_event_interval", optInt2);
                } else {
                    v1Var.f.remove("batch_event_interval");
                }
                int optInt3 = optJSONObject.optInt("batch_event_size", -1);
                if (v1Var.a(optInt3)) {
                    v1Var.f.putInt("batch_event_size", optInt3);
                } else {
                    v1Var.f.remove("batch_event_size");
                }
                int optInt4 = optJSONObject.optInt("send_launch_timely", 0);
                if (optInt4 <= 0 || optInt4 > 604800) {
                    v1Var.f.remove("send_launch_timely");
                } else {
                    v1Var.f.putInt("send_launch_timely", optInt4);
                }
                long optInt5 = optJSONObject.optInt("abtest_fetch_interval", 0);
                if (optInt5 <= 20 || optInt5 > 604800) {
                    v1Var.f.remove("abtest_fetch_interval");
                } else {
                    v1Var.f.putLong("abtest_fetch_interval", optInt5 * 1000);
                }
                boolean optBoolean = optJSONObject.optBoolean("bav_log_collect", v1Var.c.isAutoTrackEnabled());
                v1Var.f.putBoolean("bav_log_collect", optBoolean);
                v1Var.r = optBoolean ? 1 : 0;
                v1Var.f.putBoolean("bav_ab_config", optJSONObject.optBoolean("bav_ab_config", v1Var.c.isAbEnable()));
                JSONArray optJSONArray = optJSONObject.optJSONArray("real_time_events");
                if (optJSONArray == null || optJSONArray.length() <= 0) {
                    v1Var.f.remove("real_time_events");
                } else {
                    v1Var.f.putString("real_time_events", optJSONArray.toString());
                }
                v1Var.k = null;
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("sensitive_fields");
                if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                    v1Var.f.remove("sensitive_fields");
                } else {
                    v1Var.f.putString("sensitive_fields", optJSONArray2.toString());
                }
                v1Var.f.putLong("app_log_last_config_time", currentTimeMillis);
                int optInt6 = optJSONObject.optInt("forbid_report_phone_detail_info", -1);
                if (optInt6 >= 0) {
                    v1Var.f.putBoolean("forbid_report_phone_detail_info", optInt6 > 0);
                }
                long optLong = optJSONObject.optLong("fetch_interval", 21600L) * 1000;
                if (optLong < 1800000 || optLong > 172800000) {
                    optLong = 21600000;
                }
                v1Var.f.putLong("fetch_interval", optLong);
                if (optJSONObject.has("applog_disable_monitor")) {
                    i = 1;
                    v1Var.f.putBoolean("monitor_enabled", optJSONObject.optInt("applog_disable_monitor", 0) == 1);
                } else {
                    i = 1;
                }
                if (optJSONObject.has("enter_background_not_send")) {
                    v1Var.f.putBoolean("enter_background_not_send", optJSONObject.optInt("enter_background_not_send") == i);
                }
                v1Var.l();
                this.f.setForbidReportPhoneDetailInfo(v1Var.f.getBoolean("forbid_report_phone_detail_info", false));
                if (!v1Var.j()) {
                    this.e.q = null;
                }
                d0 d0Var = this.e;
                d0Var.j.removeMessages(13);
                d0Var.j.sendEmptyMessage(13);
                if (this.e.e.c.isEventFilterEnable()) {
                    String a5 = b.a(this.f, "sp_filter_name");
                    d0 d0Var2 = this.e;
                    d0Var2.y = f1.a(d0Var2.b(), a5, optJSONObject);
                }
                if (LogUtils.isDisabled()) {
                    return true;
                }
                LogUtils.sendJsonFetcher("fetch_log_settings_end", new a(optJSONObject));
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.bdtracker.b0
    public String d() {
        return "Configure";
    }

    @Override // com.bytedance.bdtracker.b0
    public long[] e() {
        return g0.h;
    }

    @Override // com.bytedance.bdtracker.b0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.b0
    public long g() {
        return this.e.e.f.getLong("fetch_interval", 21600000L);
    }
}
