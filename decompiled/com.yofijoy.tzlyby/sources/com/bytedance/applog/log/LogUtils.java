package com.bytedance.applog.log;

import com.bytedance.applog.log.EventBus;
import com.bytedance.bdtracker.a4;
import com.bytedance.bdtracker.e4;
import com.bytedance.bdtracker.f4;
import com.bytedance.bdtracker.h4;
import com.bytedance.bdtracker.i4;
import com.bytedance.bdtracker.k0;
import com.bytedance.bdtracker.k4;
import com.bytedance.bdtracker.l4;
import com.bytedance.bdtracker.x3;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LogUtils {
    public static final String EVENT_TYPE_EVENT_V3 = "EVENT_V3";
    public static final String EVENT_TYPE_LAUNCH = "LAUNCH";
    public static final String EVENT_TYPE_PROFILE = "PROFILE";
    public static final String EVENT_TYPE_TERMINATE = "TERMINATE";
    public static final String EVENT_TYPE_TRACE = "TRACE";
    public static volatile boolean a;

    /* loaded from: classes.dex */
    public static class a implements EventBus.DataFetcher {
        public final /* synthetic */ Object a;

        public a(Object obj) {
            this.a = obj;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            x3 x3Var;
            String str;
            JSONObject h = ((x3) this.a).h();
            JSONObject jSONObject = new JSONObject();
            k0.c(h, jSONObject);
            try {
                jSONObject.put("$$APP_ID", ((x3) this.a).m);
                x3Var = (x3) this.a;
            } catch (JSONException unused) {
            }
            if (x3Var != null) {
                if (!(x3Var instanceof e4) && !(x3Var instanceof h4)) {
                    if (x3Var instanceof a4) {
                        str = ((a4) x3Var).s.toUpperCase(Locale.ROOT);
                    } else if (x3Var instanceof f4) {
                        str = LogUtils.EVENT_TYPE_LAUNCH;
                    } else if (x3Var instanceof k4) {
                        str = LogUtils.EVENT_TYPE_TERMINATE;
                    } else if (x3Var instanceof i4) {
                        str = "PROFILE";
                    } else if (x3Var instanceof l4) {
                        str = "TRACE";
                    }
                    jSONObject.put("$$EVENT_TYPE", str);
                    jSONObject.put("$$EVENT_LOCAL_ID", ((x3) this.a).p);
                    return jSONObject;
                }
                str = LogUtils.EVENT_TYPE_EVENT_V3;
                jSONObject.put("$$EVENT_TYPE", str);
                jSONObject.put("$$EVENT_LOCAL_ID", ((x3) this.a).p);
                return jSONObject;
            }
            str = "";
            jSONObject.put("$$EVENT_TYPE", str);
            jSONObject.put("$$EVENT_LOCAL_ID", ((x3) this.a).p);
            return jSONObject;
        }
    }

    public static String a(String str) {
        return com.bytedance.bdtracker.a.a("applog_", str);
    }

    public static boolean isDisabled() {
        return !a;
    }

    public static void sendJson(String str, JSONObject jSONObject) {
        if (isDisabled() || k0.c(str)) {
            return;
        }
        EventBus.global.get(new Object[0]).emit(a(str), jSONObject);
    }

    public static void sendJsonFetcher(String str, EventBus.DataFetcher dataFetcher) {
        if (isDisabled() || k0.c(str)) {
            return;
        }
        EventBus.global.get(new Object[0]).emit(a(str), dataFetcher);
    }

    public static void sendObject(String str, Object obj) {
        if (isDisabled() || k0.c(str)) {
            return;
        }
        if (obj instanceof x3) {
            EventBus.global.get(new Object[0]).emit(a(str), (EventBus.DataFetcher) new a(obj));
        } else {
            EventBus.global.get(new Object[0]).emit(a(str), obj);
        }
    }

    public static void sendString(String str, String str2) {
        if (isDisabled() || k0.c(str)) {
            return;
        }
        EventBus.global.get(new Object[0]).emit(a(str), str2);
    }

    public static void setEnable(boolean z) {
        a = z;
    }
}
