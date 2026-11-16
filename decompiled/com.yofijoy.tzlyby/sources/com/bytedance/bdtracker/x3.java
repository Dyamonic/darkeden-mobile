package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.android.vending.expansion.zipfile.APEZProvider;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.AbstractAppLogLogger;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class x3 implements Cloneable {
    public static final SimpleDateFormat q = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    public static final q4<HashMap<String, x3>> r = new a();
    public List<String> a;
    public long b;
    public long c;
    public long d;
    public String e;
    public long f;
    public String g;
    public String h;
    public String i;
    public String j;
    public int k;
    public int l;
    public String m;
    public String n;
    public JSONObject o;
    public String p;

    /* loaded from: classes.dex */
    public static class a extends q4<HashMap<String, x3>> {
        @Override // com.bytedance.bdtracker.q4
        public HashMap<String, x3> a(Object[] objArr) {
            return x3.j();
        }
    }

    public x3() {
        a(0L);
        this.a = Collections.singletonList(f());
        this.p = k0.c();
    }

    public static x3 a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return r.b(new Object[0]).get(jSONObject.optString("k_cls", "")).m9clone().a(jSONObject);
        } catch (Throwable th) {
            LoggerImpl.global().error(4, "JSON handle failed", th, new Object[0]);
            return null;
        }
    }

    public static String b(long j) {
        return q.format(new Date(j));
    }

    public static HashMap<String, x3> j() {
        HashMap<String, x3> hashMap = new HashMap<>();
        hashMap.put("page", new h4());
        hashMap.put("launch", new f4());
        hashMap.put("terminate", new k4());
        hashMap.put("packV2", new g4());
        hashMap.put("eventv3", new e4());
        hashMap.put("custom_event", new a4());
        hashMap.put("profile", new i4(null, null));
        hashMap.put("trace", new l4());
        return hashMap;
    }

    public int a(Cursor cursor) {
        this.b = cursor.getLong(0);
        this.c = cursor.getLong(1);
        this.d = cursor.getLong(2);
        this.k = cursor.getInt(3);
        this.f = cursor.getLong(4);
        this.e = cursor.getString(5);
        this.g = cursor.getString(6);
        this.h = cursor.getString(7);
        this.i = cursor.getString(8);
        this.j = cursor.getString(9);
        this.l = cursor.getInt(10);
        this.m = cursor.getString(11);
        String string = cursor.getString(12);
        this.p = cursor.getString(13);
        this.o = new JSONObject();
        if (TextUtils.isEmpty(string)) {
            return 14;
        }
        try {
            this.o = new JSONObject(string);
            return 14;
        } catch (Exception unused) {
            return 14;
        }
    }

    public final ContentValues a(ContentValues contentValues) {
        if (contentValues == null) {
            contentValues = new ContentValues();
        } else {
            contentValues.clear();
        }
        b(contentValues);
        return contentValues;
    }

    public x3 a(JSONObject jSONObject) {
        this.c = jSONObject.optLong("local_time_ms", 0L);
        this.b = 0L;
        this.d = 0L;
        this.k = 0;
        this.f = 0L;
        this.e = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.m = jSONObject.optString("_app_id");
        this.o = jSONObject.optJSONObject(TapEventParamConstants.PARAM_PROPERTIES);
        this.p = jSONObject.optString("local_event_id", k0.c());
        return this;
    }

    public final String a() {
        List<String> b = b();
        if (b == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("create table if not exists ");
        sb.append(f());
        sb.append("(");
        for (int i = 0; i < b.size(); i += 2) {
            sb.append(b.get(i));
            sb.append(" ");
            sb.append(b.get(i + 1));
            sb.append(",");
        }
        sb.delete(sb.length() - 1, sb.length());
        sb.append(")");
        return sb.toString();
    }

    public void a(long j) {
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        this.c = j;
    }

    public void a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            a(jSONObject, new JSONObject());
            return;
        }
        try {
            a(jSONObject, new JSONObject(str));
        } catch (Throwable th) {
            d().error(4, this.a, "Merge params failed", th, new Object[0]);
        }
    }

    public void a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject2 != null && jSONObject2.length() > 0) {
            k0.c(jSONObject2, jSONObject3);
        }
        JSONObject jSONObject4 = this.o;
        if (jSONObject4 != null && jSONObject4.length() > 0) {
            k0.c(this.o, jSONObject3);
        }
        try {
            jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, jSONObject3);
        } catch (Throwable th) {
            d().error(4, this.a, "Merge params failed", th, new Object[0]);
        }
    }

    public List<String> b() {
        return Arrays.asList(APEZProvider.FILEID, "integer primary key autoincrement", "local_time_ms", "integer", "tea_event_index", "integer", "nt", "integer", "user_id", "integer", "session_id", "varchar", "user_unique_id", "varchar", "user_unique_id_type", "varchar", "ssid", "varchar", "ab_sdk_version", "varchar", "event_type", "integer", "_app_id", "varchar", TapEventParamConstants.PARAM_PROPERTIES, "varchar", "local_event_id", "varchar");
    }

    public void b(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.c));
        contentValues.put("tea_event_index", Long.valueOf(this.d));
        contentValues.put("nt", Integer.valueOf(this.k));
        contentValues.put("user_id", Long.valueOf(this.f));
        contentValues.put("session_id", this.e);
        contentValues.put("user_unique_id", k0.a((Object) this.g));
        contentValues.put("user_unique_id_type", this.h);
        contentValues.put("ssid", this.i);
        contentValues.put("ab_sdk_version", this.j);
        contentValues.put("event_type", Integer.valueOf(this.l));
        contentValues.put("_app_id", this.m);
        JSONObject jSONObject = this.o;
        contentValues.put(TapEventParamConstants.PARAM_PROPERTIES, jSONObject != null ? jSONObject.toString() : "");
        contentValues.put("local_event_id", this.p);
    }

    public void b(JSONObject jSONObject) {
        jSONObject.put("local_time_ms", this.c);
        jSONObject.put("_app_id", this.m);
        jSONObject.put(TapEventParamConstants.PARAM_PROPERTIES, this.o);
        jSONObject.put("local_event_id", this.p);
    }

    public String c() {
        StringBuilder a2 = com.bytedance.bdtracker.a.a("sid:");
        a2.append(this.e);
        return a2.toString();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public x3 m9clone() {
        try {
            x3 x3Var = (x3) super.clone();
            x3Var.p = k0.c();
            return x3Var;
        } catch (CloneNotSupportedException e) {
            d().error(4, this.a, "Clone data failed", e, new Object[0]);
            return null;
        }
    }

    public IAppLogLogger d() {
        IAppLogLogger logger = AbstractAppLogLogger.getLogger(this.m);
        return logger != null ? logger : LoggerImpl.global();
    }

    public String e() {
        return null;
    }

    public abstract String f();

    public final JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("k_cls", f());
            b(jSONObject);
        } catch (JSONException e) {
            d().error(4, this.a, "JSON handle failed", e, new Object[0]);
        }
        return jSONObject;
    }

    public final JSONObject h() {
        JSONObject jSONObject = new JSONObject();
        try {
            this.n = b(this.c);
            return i();
        } catch (JSONException e) {
            d().error(4, this.a, "JSON handle failed", e, new Object[0]);
            return jSONObject;
        }
    }

    public abstract JSONObject i();

    public String toString() {
        String f = f();
        if (!getClass().getSimpleName().equalsIgnoreCase(f)) {
            f = f + ", " + getClass().getSimpleName();
        }
        String str = this.e;
        if (str != null) {
            int indexOf = str.indexOf("-");
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
        } else {
            str = "-";
        }
        return "{" + f + ", " + c() + ", " + str + ", " + this.c + ", " + this.d + ", " + this.e + "}";
    }
}
