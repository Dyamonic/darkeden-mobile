package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a4 extends x3 {
    public String s;
    public String t;

    public a4() {
        this.s = null;
        this.t = null;
    }

    public a4(String str, JSONObject jSONObject) {
        this.s = null;
        this.t = null;
        this.s = str;
        if (jSONObject != null) {
            this.t = jSONObject.toString();
        }
        this.l = 0;
    }

    @Override // com.bytedance.bdtracker.x3
    public int a(Cursor cursor) {
        super.a(cursor);
        this.t = cursor.getString(14);
        this.s = cursor.getString(15);
        return 16;
    }

    @Override // com.bytedance.bdtracker.x3
    public x3 a(JSONObject jSONObject) {
        super.a(jSONObject);
        this.t = jSONObject.optString(MetricsSQLiteCacheKt.METRICS_PARAMS, null);
        this.s = jSONObject.optString("category", null);
        return this;
    }

    @Override // com.bytedance.bdtracker.x3
    public List<String> b() {
        List<String> b = super.b();
        ArrayList arrayList = new ArrayList(b.size());
        arrayList.addAll(b);
        arrayList.addAll(Arrays.asList(MetricsSQLiteCacheKt.METRICS_PARAMS, "varchar", "category", "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.x3
    public void b(ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.t);
        contentValues.put("category", this.s);
    }

    @Override // com.bytedance.bdtracker.x3
    public void b(JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.t);
        jSONObject.put("category", this.s);
    }

    @Override // com.bytedance.bdtracker.x3
    public String c() {
        StringBuilder a = a.a("param:");
        a.append(this.t);
        a.append(" category:");
        a.append(this.s);
        return a.toString();
    }

    @Override // com.bytedance.bdtracker.x3
    public String f() {
        return "custom_event";
    }

    @Override // com.bytedance.bdtracker.x3
    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.c);
        jSONObject.put("tea_event_index", this.d);
        jSONObject.put("session_id", this.e);
        long j = this.f;
        if (j > 0) {
            jSONObject.put("user_id", j);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.g) ? JSONObject.NULL : this.g);
        if (!TextUtils.isEmpty(this.h)) {
            jSONObject.put("$user_unique_id_type", this.h);
        }
        if (!TextUtils.isEmpty(this.i)) {
            jSONObject.put("ssid", this.i);
        }
        if (k0.d(this.t)) {
            try {
                JSONObject jSONObject2 = new JSONObject(this.t);
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj = jSONObject2.get(next);
                    if (jSONObject.opt(next) != null) {
                        d().warn(4, this.a, "自定义事件存在重复的key", new Object[0]);
                    }
                    jSONObject.put(next, obj);
                }
            } catch (Exception e) {
                d().warn(4, this.a, "解析事件参数失败", e);
            }
        }
        return jSONObject;
    }
}
