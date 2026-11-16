package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.bdtracker.z4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class i4 extends x3 {
    public String s;
    public String t;

    public i4() {
    }

    public i4(String str, String str2) {
        this.t = str;
        this.s = str2;
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
        this.t = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, null);
        this.s = jSONObject.optString(MetricsSQLiteCacheKt.METRICS_PARAMS, null);
        return this;
    }

    @Override // com.bytedance.bdtracker.x3
    public List<String> b() {
        List<String> b = super.b();
        ArrayList arrayList = new ArrayList(b.size());
        arrayList.addAll(b);
        arrayList.addAll(Arrays.asList(NotificationCompat.CATEGORY_EVENT, "varchar", MetricsSQLiteCacheKt.METRICS_PARAMS, "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.bdtracker.x3
    public void b(ContentValues contentValues) {
        super.b(contentValues);
        contentValues.put(NotificationCompat.CATEGORY_EVENT, this.t);
        contentValues.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.s);
    }

    @Override // com.bytedance.bdtracker.x3
    public void b(JSONObject jSONObject) {
        super.b(jSONObject);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.t);
        jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, this.s);
    }

    @Override // com.bytedance.bdtracker.x3
    public String c() {
        return this.t;
    }

    @Override // com.bytedance.bdtracker.x3
    public String e() {
        return this.s;
    }

    @Override // com.bytedance.bdtracker.x3
    public String f() {
        return "profile";
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
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.t);
        a(jSONObject, this.s);
        int i = this.k;
        if (i != z4.a.UNKNOWN.a) {
            jSONObject.put("nt", i);
        }
        jSONObject.put("datetime", this.n);
        if (!TextUtils.isEmpty(this.j)) {
            jSONObject.put("ab_sdk_version", this.j);
        }
        return jSONObject;
    }
}
