package com.qq.gdt.action;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.ads.convert.utils.BusinessConstant;
import com.qq.gdt.action.ActionParam;
import com.qq.gdt.action.a.a;
import com.qq.gdt.action.e.d;
import com.qq.gdt.action.j.h;
import com.qq.gdt.action.j.i;
import com.qq.gdt.action.j.m;
import com.qq.gdt.action.j.n;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.p;
import com.qq.gdt.action.j.r;
import com.qq.gdt.action.j.t;
import com.qq.gdt.action.j.u;
import com.qq.gdt.action.j.v;
import com.qq.gdt.action.j.x;
import com.qq.gdt.action.j.y;
import com.rich.oauth.util.RichLogUtil;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.List;
import java.util.Locale;
import javax.crypto.SecretKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private static String a;

    public static com.qq.gdt.action.c.a a(String str, JSONObject jSONObject) {
        JSONObject d = d(jSONObject, e.a().g());
        com.qq.gdt.action.c.a aVar = new com.qq.gdt.action.c.a(e.a().n(), com.qq.gdt.action.j.b.b(str), System.currentTimeMillis(), d, e.a().o());
        com.qq.gdt.action.h.a.a(RichLogUtil.MAX_LEN, aVar);
        return aVar;
    }

    public static String a(String str) {
        String a2 = u.a(str);
        String h = e.a().h();
        String i = e.a().i();
        String a3 = i.a(e.a().k().getEncoded());
        return r.a(a2 + "," + a3 + "," + u.a(a2 + h + i + a3));
    }

    public static String a(JSONObject jSONObject) throws Exception {
        return a(jSONObject, e.a().k());
    }

    public static String a(JSONObject jSONObject, SecretKey secretKey) throws Exception {
        return com.qq.gdt.action.j.a.a(secretKey, y.a(jSONObject.toString().getBytes()));
    }

    public static JSONArray a(List<com.qq.gdt.action.c.a> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (com.qq.gdt.action.c.a aVar : list) {
            jSONArray.put(a(aVar));
            com.qq.gdt.action.h.a.a(9001, aVar);
        }
        return jSONArray;
    }

    public static JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Context g = e.a().g();
        c(jSONObject, g);
        b(jSONObject, g);
        a(jSONObject, g);
        d(jSONObject);
        c(jSONObject);
        b(jSONObject);
        e(jSONObject);
        jSONObject.putOpt("conf_version", b.a(g).a());
        x.a(jSONObject, g);
        jSONObject.putOpt("ak", e.a().i());
        return jSONObject;
    }

    private static JSONObject a(com.qq.gdt.action.c.a aVar) throws JSONException {
        if (aVar == null) {
            return null;
        }
        if (v.a(aVar.c())) {
            o.b("ActionType must not be empty.");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt("session_id", aVar.g());
        jSONObject.putOpt("action_time", Long.valueOf(aVar.d() / 1000));
        jSONObject.putOpt("action_time_mills", Long.valueOf(aVar.d()));
        jSONObject.putOpt("action_type", aVar.c());
        jSONObject.putOpt("revised_action_time", Long.valueOf(aVar.h()));
        jSONObject.putOpt("retry", Boolean.valueOf(aVar.i() == 2));
        jSONObject.putOpt("action_id", aVar.a());
        jSONObject.putOpt("action_log_id", Long.valueOf(aVar.b()));
        JSONObject e = aVar.e();
        if (e != null && e.has(ActionParam.Key.OUTER_ACTION_ID)) {
            jSONObject.putOpt(ActionParam.Key.OUTER_ACTION_ID, e.optString(ActionParam.Key.OUTER_ACTION_ID));
            e.remove(ActionParam.Key.OUTER_ACTION_ID);
        }
        jSONObject.putOpt("action_param", e);
        if (ActionType.START_APP.equals(aVar.c())) {
            Context g = e.a().g();
            JSONObject jSONObject2 = new JSONObject();
            try {
                long d = t.d(g);
                long e2 = t.e(g);
                long c = t.c(g);
                boolean a2 = t.a(g);
                boolean b = t.b(g);
                if (d > 0) {
                    jSONObject2.putOpt("ams_reserved_last_start_time", Long.valueOf(d));
                }
                if (e2 > 0) {
                    jSONObject2.putOpt("ams_reserved_last_revised_start_time", Long.valueOf(e2));
                }
                if (c > 0) {
                    jSONObject2.putOpt("ams_reserved_last_revised_activate_time", Long.valueOf(c));
                }
                jSONObject2.putOpt("ams_reserved_last_revised_with_imei", Boolean.valueOf(a2));
                jSONObject2.putOpt("ams_reserved_last_revised_with_oaid", Boolean.valueOf(b));
            } catch (JSONException e3) {
                o.a("JSON exception while add last start time info.", e3);
            }
            jSONObject.putOpt("inner_action_param", jSONObject2);
        }
        return jSONObject;
    }

    private static void a(JSONObject jSONObject, Context context) throws JSONException {
        String d = h.d();
        String c = h.c(context);
        String a2 = h.a(context);
        int b = h.b(context);
        jSONObject.putOpt("pkg_name", d);
        jSONObject.putOpt("process_name", e.a().r());
        jSONObject.putOpt("appn", c);
        jSONObject.putOpt("app_version_name", a2);
        jSONObject.putOpt("gk", com.qq.gdt.action.j.d.f());
        jSONObject.putOpt("app_version_code", String.valueOf(b));
        jSONObject.putOpt(TapEventParamConstants.PARAM_SUB_CHANNEL, e.a().s());
        jSONObject.putOpt("channel_id", e.a().t());
        jSONObject.putOpt("user_unique_id", e.a().u());
        try {
            if (!b.a(context).A()) {
                String a3 = com.qq.gdt.action.b.b.a(context);
                String b2 = com.qq.gdt.action.b.b.b(context);
                jSONObject.putOpt("channel_id_inner", a3);
                jSONObject.putOpt("click_id", b2);
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            jSONObject.put("install_time", packageInfo.firstInstallTime);
            jSONObject.put("update_time", packageInfo.lastUpdateTime);
        } catch (PackageManager.NameNotFoundException unused) {
            o.a("getPackageInfo err", new Object[0]);
        }
    }

    public static String b(String str) {
        String a2 = u.a(str);
        String j = e.a().j();
        String a3 = i.a(e.a().l().getEncoded());
        return r.a(a2 + "," + a3 + "," + u.a(a2 + j + a3));
    }

    private static void b(JSONObject jSONObject) throws JSONException {
        jSONObject.putOpt("install_package_time", h.g(e.a().g()));
    }

    private static void b(JSONObject jSONObject, Context context) throws JSONException {
        String a2 = com.qq.gdt.action.e.b.a();
        Object language = Locale.getDefault().getLanguage();
        Object obj = Build.VERSION.RELEASE;
        Object e = h.e();
        Object a3 = p.a();
        int i = Build.VERSION.SDK_INT;
        m.a(jSONObject);
        jSONObject.putOpt(TapEventParamConstants.PARAM_SUB_MD, a2);
        jSONObject.putOpt("lg", language);
        jSONObject.putOpt(TapEventParamConstants.PARAM_SUB_OS, "Android");
        jSONObject.putOpt("osv", obj);
        jSONObject.putOpt("op", e);
        jSONObject.putOpt("apil", Integer.valueOf(i));
        jSONObject.putOpt("dn", a3);
        jSONObject.putOpt("tz", h.f());
        try {
            if (b.a(context).B() || !e.a().C()) {
                return;
            }
            jSONObject.putOpt("acaid", com.qq.gdt.action.e.a.b.a(a2).a());
        } catch (Throwable th) {
            o.b("getAnid error: ", th);
        }
    }

    private static void c(JSONObject jSONObject) throws JSONException {
        Context g = e.a().g();
        jSONObject.putOpt("gdt_traceid", t.g(g) ? "" : e.a().b(g));
        jSONObject.putOpt(BusinessConstant.INTENT_KEY_OPEN_URL, t.h(g) ? "" : e.a().c(g));
    }

    private static void c(JSONObject jSONObject, Context context) throws JSONException {
        String str;
        String b = h.b();
        String str2 = null;
        if (v.a(b)) {
            str = null;
        } else {
            str2 = u.a(b.toLowerCase()).toLowerCase();
            str = u.a(b).toLowerCase();
        }
        jSONObject.putOpt("hash_imei", str2);
        jSONObject.putOpt("hash_capital_meid", str);
        jSONObject.putOpt(TapEventParamConstants.PARAM_DEVICE_ID, e.a().q());
        d.a e = h.e(context);
        jSONObject.putOpt("hash_imei_standard", e.d);
        jSONObject.putOpt("hash_imei0_standard", e.e);
        jSONObject.putOpt("hash_imei1_standard", e.f);
        jSONObject.putOpt("hash_android_id", e.j);
        jSONObject.putOpt("hash_device_id_standard", e.a);
        jSONObject.putOpt("hash_device_id0_standard", e.b);
        jSONObject.putOpt("hash_device_id1_standard", e.c);
        jSONObject.putOpt("hash_meid_standard", e.g);
        jSONObject.putOpt("hash_meid0_standard", e.h);
        jSONObject.putOpt("hash_meid1_standard", e.i);
        jSONObject.putOpt("uuid_standard", e.k);
        jSONObject.putOpt("ua_standard", e.a().x());
    }

    private static JSONObject d(JSONObject jSONObject, Context context) {
        if (context != null) {
            try {
                if (b.a(context).z()) {
                    if (TextUtils.isEmpty(a)) {
                        JSONObject y = e.a().y();
                        if (n.a(y)) {
                            return jSONObject;
                        }
                        a = y.toString();
                    }
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.putOpt("ylhExt", a);
                    long c = t.c(context);
                    if (c > 0) {
                        jSONObject.put("ams_reserved_last_revised_activate_time", c);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return jSONObject;
    }

    private static void d(JSONObject jSONObject) throws JSONException {
        int b = f.b();
        jSONObject.putOpt("sdkv", f.a());
        jSONObject.putOpt("sdkvc", Integer.valueOf(b));
        jSONObject.putOpt("report_session_id", e.a().n());
    }

    private static void e(JSONObject jSONObject) {
        try {
            a.C0032a b = com.qq.gdt.action.a.a.b(e.a().g());
            if (jSONObject != null) {
                jSONObject.putOpt("native_oaid", b.a());
                jSONObject.putOpt("is_oaid_track_limited", Boolean.valueOf(b.b()));
            }
        } catch (Throwable unused) {
            o.a("appendOpenDeviceIdentifier err", new Object[0]);
        }
    }
}
