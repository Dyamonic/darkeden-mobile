package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.android.vending.expansion.zipfile.APEZProvider;
import com.bytedance.applog.event.AutoTrackEventType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class g4 extends x3 {
    public int A;
    public String B;
    public List<e4> s;
    public List<a4> t;
    public List<h4> u;
    public List<f4> v;
    public List<k4> w;
    public List<l4> x;
    public JSONObject y;
    public byte[] z;

    @Override // com.bytedance.bdtracker.x3
    public int a(Cursor cursor) {
        this.b = cursor.getLong(0);
        this.c = cursor.getLong(1);
        this.z = cursor.getBlob(2);
        this.A = cursor.getInt(3);
        this.l = cursor.getInt(4);
        this.m = cursor.getString(5);
        this.B = cursor.getString(6);
        this.e = "";
        return 7;
    }

    @Override // com.bytedance.bdtracker.x3
    public x3 a(JSONObject jSONObject) {
        d().error(4, this.a, "Not allowed", new Object[0]);
        return null;
    }

    public final JSONArray a(Set<String> set) {
        d a = b.a(this.m);
        JSONArray jSONArray = new JSONArray();
        if (a == null || !a.isBavEnabled()) {
            List<h4> list = this.u;
            if (list != null) {
                for (h4 h4Var : list) {
                    if (h4Var.C) {
                        jSONArray.put(h4Var.h());
                        if (set != null) {
                            set.add(h4Var.p);
                        }
                    }
                }
            }
        } else if (this.u != null) {
            if (!((a.getInitConfig() == null || AutoTrackEventType.a(a.getInitConfig().getAutoTrackEventType(), 2)) ? false : true)) {
                for (h4 h4Var2 : this.u) {
                    jSONArray.put(h4Var2.h());
                    if (set != null) {
                        set.add(h4Var2.p);
                    }
                }
            }
        }
        List<e4> list2 = this.s;
        if (list2 != null && !list2.isEmpty()) {
            for (e4 e4Var : this.s) {
                jSONArray.put(e4Var.h());
                if (set != null) {
                    set.add(e4Var.p);
                }
            }
        }
        List<l4> list3 = this.x;
        if (list3 != null && !list3.isEmpty()) {
            for (l4 l4Var : this.x) {
                jSONArray.put(l4Var.h());
                if (set != null) {
                    set.add(l4Var.p);
                }
            }
        }
        return jSONArray;
    }

    @Override // com.bytedance.bdtracker.x3
    public List<String> b() {
        return Arrays.asList(APEZProvider.FILEID, "integer primary key autoincrement", "local_time_ms", "integer", "_data", "blob", "_fail", "integer", "event_type", "integer", "_app_id", "varchar", "e_ids", "varchar");
    }

    @Override // com.bytedance.bdtracker.x3
    public void b(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.c));
        contentValues.put("_data", o());
        contentValues.put("event_type", Integer.valueOf(this.l));
        contentValues.put("_app_id", this.m);
        contentValues.put("e_ids", this.B);
    }

    @Override // com.bytedance.bdtracker.x3
    public void b(JSONObject jSONObject) {
        d().error(4, this.a, "Not allowed", new Object[0]);
    }

    @Override // com.bytedance.bdtracker.x3
    public String c() {
        return String.valueOf(this.b);
    }

    @Override // com.bytedance.bdtracker.x3
    public String f() {
        return "packV2";
    }

    @Override // com.bytedance.bdtracker.x3
    public JSONObject i() {
        int i;
        d a = b.a(this.m);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", this.y);
        jSONObject.put("time_sync", s3.d);
        HashSet hashSet = new HashSet();
        List<f4> list = this.v;
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            for (f4 f4Var : this.v) {
                jSONArray.put(f4Var.h());
                hashSet.add(f4Var.p);
            }
            jSONObject.put("launch", jSONArray);
        }
        List<k4> list2 = this.w;
        int i2 = 0;
        if (list2 != null && !list2.isEmpty()) {
            JSONArray jSONArray2 = new JSONArray();
            Iterator<k4> it = this.w.iterator();
            while (it.hasNext()) {
                k4 next = it.next();
                JSONObject h = next.h();
                if (a != null && (i = a.l) > 0) {
                    h.put("launch_from", i);
                    a.l = i2;
                }
                if (this.u != null) {
                    ArrayList arrayList = new ArrayList();
                    for (h4 h4Var : this.u) {
                        if (k0.a(h4Var.e, next.e)) {
                            arrayList.add(h4Var);
                        }
                    }
                    if (arrayList.size() != 0) {
                        int size = arrayList.size();
                        JSONArray jSONArray3 = new JSONArray();
                        long j = 0;
                        int i3 = i2;
                        while (i3 < size) {
                            h4 h4Var2 = (h4) arrayList.get(i3);
                            JSONArray jSONArray4 = new JSONArray();
                            d dVar = a;
                            Iterator<k4> it2 = it;
                            jSONArray4.put(0, h4Var2.u);
                            ArrayList arrayList2 = arrayList;
                            int i4 = size;
                            jSONArray4.put(1, (h4Var2.s + 999) / 1000);
                            jSONArray3.put(jSONArray4);
                            long j2 = h4Var2.c;
                            if (j2 > j) {
                                h.put("$page_title", k0.a((Object) h4Var2.v));
                                h.put("$page_key", k0.a((Object) h4Var2.u));
                                j = j2;
                            }
                            i3++;
                            size = i4;
                            a = dVar;
                            it = it2;
                            arrayList = arrayList2;
                        }
                        h.put("activites", jSONArray3);
                        jSONArray2.put(h);
                        hashSet.add(next.p);
                        a = a;
                        i2 = 0;
                    }
                }
            }
            jSONObject.put("terminate", jSONArray2);
        }
        JSONArray a2 = a(hashSet);
        if (a2.length() > 0) {
            jSONObject.put("event_v3", a2);
        }
        List<a4> list3 = this.t;
        if (list3 != null && !list3.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (a4 a4Var : this.t) {
                JSONArray jSONArray5 = (JSONArray) hashMap.get(a4Var.s);
                if (jSONArray5 == null) {
                    jSONArray5 = new JSONArray();
                    hashMap.put(a4Var.s, jSONArray5);
                }
                jSONArray5.put(a4Var.h());
                hashSet.add(a4Var.p);
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        }
        this.B = TextUtils.join(",", hashSet);
        d().debug(4, this.a, "Pack success ts:{}", Long.valueOf(this.c));
        return jSONObject;
    }

    public int k() {
        List<h4> list;
        List<f4> list2 = this.v;
        int size = list2 != null ? 200 - list2.size() : 200;
        List<k4> list3 = this.w;
        if (list3 != null) {
            size -= list3.size();
        }
        d a = b.a(this.m);
        return (a == null || !a.isBavEnabled() || (list = this.u) == null) ? size : size - list.size();
    }

    public Set<String> l() {
        HashSet hashSet = new HashSet();
        if (TextUtils.isEmpty(this.B)) {
            return hashSet;
        }
        hashSet.addAll(Arrays.asList(this.B.split(",")));
        return hashSet;
    }

    public void m() {
        JSONObject jSONObject = this.y;
        if (jSONObject == null) {
            return;
        }
        jSONObject.remove("ssid");
        try {
            List<f4> list = this.v;
            if (list != null) {
                for (f4 f4Var : list) {
                    if (k0.d(f4Var.i)) {
                        this.y.put("ssid", f4Var.i);
                        return;
                    }
                }
            }
            List<h4> list2 = this.u;
            if (list2 != null) {
                for (h4 h4Var : list2) {
                    if (k0.d(h4Var.i)) {
                        this.y.put("ssid", h4Var.i);
                        return;
                    }
                }
            }
            List<a4> list3 = this.t;
            if (list3 != null) {
                for (a4 a4Var : list3) {
                    if (k0.d(a4Var.i)) {
                        this.y.put("ssid", a4Var.i);
                        return;
                    }
                }
            }
            List<e4> list4 = this.s;
            if (list4 != null) {
                for (e4 e4Var : list4) {
                    if (k0.d(e4Var.i)) {
                        this.y.put("ssid", e4Var.i);
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            d().error(4, this.a, "Reload ssid from event failed", th, new Object[0]);
        }
    }

    public void n() {
        JSONObject jSONObject = this.y;
        if (jSONObject == null) {
            return;
        }
        jSONObject.remove("user_unique_id_type");
        try {
            List<f4> list = this.v;
            if (list != null) {
                for (f4 f4Var : list) {
                    if (k0.d(f4Var.h)) {
                        this.y.put("user_unique_id_type", f4Var.h);
                        return;
                    }
                }
            }
            List<h4> list2 = this.u;
            if (list2 != null) {
                for (h4 h4Var : list2) {
                    if (k0.d(h4Var.h)) {
                        this.y.put("user_unique_id_type", h4Var.h);
                        return;
                    }
                }
            }
            List<a4> list3 = this.t;
            if (list3 != null) {
                for (a4 a4Var : list3) {
                    if (k0.d(a4Var.h)) {
                        this.y.put("user_unique_id_type", a4Var.h);
                        return;
                    }
                }
            }
            List<e4> list4 = this.s;
            if (list4 != null) {
                for (e4 e4Var : list4) {
                    if (k0.d(e4Var.h)) {
                        this.y.put("user_unique_id_type", e4Var.h);
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            d().error(4, this.a, "Reload uuid type from event failed", th, new Object[0]);
        }
    }

    public final byte[] o() {
        try {
            return h().toString().getBytes("UTF-8");
        } catch (Throwable th) {
            d().error(4, this.a, "Convert json to bytes failed", th, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.bdtracker.x3
    public String toString() {
        StringBuilder sb = new StringBuilder("Pack detail:");
        List<e4> list = this.s;
        int size = list != null ? 0 + list.size() : 0;
        List<a4> list2 = this.t;
        if (list2 != null) {
            size += list2.size();
        }
        if (size > 0) {
            sb.append("\teventCount=");
            sb.append(size);
        }
        List<h4> list3 = this.u;
        if (list3 != null && !list3.isEmpty()) {
            sb.append("\tpageCount=");
            sb.append(this.u.size());
        }
        List<f4> list4 = this.v;
        if (list4 != null && !list4.isEmpty()) {
            sb.append("\tlaunchCount=");
            sb.append(this.v.size());
        }
        List<k4> list5 = this.w;
        if (list5 != null && !list5.isEmpty()) {
            sb.append("\tterminateCount=");
            sb.append(this.w.size());
        }
        List<l4> list6 = this.x;
        if (list6 != null && !list6.isEmpty()) {
            sb.append("\ttraceCount=");
            sb.append(this.x.size());
        }
        if (this.A > 0) {
            sb.append("\tfailCount=");
            sb.append(this.A);
        }
        return sb.toString();
    }
}
