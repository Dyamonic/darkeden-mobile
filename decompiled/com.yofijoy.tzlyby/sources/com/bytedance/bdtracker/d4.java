package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteBlobTooBigException;
import android.database.sqlite.SQLiteDatabase;
import com.bytedance.applog.log.LogUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d4 {
    public final b4 a;
    public final d0 b;
    public final c4 c;

    public d4(d0 d0Var, String str) {
        b4 b4Var = new b4(d0Var, str, null, 51);
        this.a = b4Var;
        this.b = d0Var;
        this.c = new c4(d0Var, b4Var);
    }

    public final List<Long> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null && optJSONObject.has("local_time_ms")) {
                    try {
                        arrayList.add(Long.valueOf(optJSONObject.getLong("local_time_ms")));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void a() {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        try {
            sQLiteDatabase = this.a.getWritableDatabase();
            try {
                sQLiteDatabase.beginTransaction();
                for (x3 x3Var : x3.j().values()) {
                    if (k0.d(x3Var.a())) {
                        sQLiteDatabase.delete(x3Var.f(), null, null);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                k0.a(sQLiteDatabase);
            } catch (Throwable th2) {
                th = th2;
                try {
                    this.b.d.D.error(5, "Clear database failed", th, new Object[0]);
                    p2.a(this.b.q, th);
                } finally {
                    if (sQLiteDatabase != null) {
                        k0.a(sQLiteDatabase);
                    }
                }
            }
        } catch (Throwable th3) {
            sQLiteDatabase = null;
            th = th3;
        }
    }

    public void a(JSONObject jSONObject) {
        d(a(jSONObject.optJSONArray("launch")));
        d(a(jSONObject.optJSONArray("terminate")));
        d(a(jSONObject.optJSONArray("event_v3")));
    }

    public synchronized void b(List<g4> list) {
        if (list == null) {
            return;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = this.a.getWritableDatabase();
            sQLiteDatabase.beginTransaction();
            for (g4 g4Var : list) {
                if (g4Var.A != 0 && (g4Var.A <= 0 || Math.abs(System.currentTimeMillis() - g4Var.c) <= 2592000000L)) {
                    int i = g4Var.A;
                    if (i > 0) {
                        sQLiteDatabase.execSQL("UPDATE packV2 SET _fail= ? WHERE _id= ?", new Object[]{Integer.valueOf(i), Long.valueOf(g4Var.b)});
                    }
                }
                sQLiteDatabase.execSQL("DELETE FROM packV2 WHERE _id=?", new Object[]{Long.valueOf(g4Var.b)});
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
            } finally {
            }
        }
    }

    public final List<h4> c(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        Cursor cursor = null;
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM page WHERE _app_id= ? and user_unique_id is null order by duration desc", new String[]{str}) : sQLiteDatabase.rawQuery("SELECT * FROM page WHERE _app_id= ? and user_unique_id = ? order by duration desc", new String[]{str, str2});
            while (cursor.moveToNext()) {
                h4 h4Var = new h4();
                h4Var.a(cursor);
                arrayList.add(h4Var);
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query pages by userId:{} failed", th, str2);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return arrayList;
    }

    public final void d(List<Long> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        for (Long l : list) {
            m2 m2Var = this.b.q;
            long longValue = currentTimeMillis - l.longValue();
            if (m2Var != null) {
                ((r2) m2Var).a(new b3(longValue));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.bytedance.bdtracker.k4> a(java.util.List<com.bytedance.bdtracker.h4> r19, java.util.List<com.bytedance.bdtracker.h4> r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d4.a(java.util.List, java.util.List, boolean):java.util.List");
    }

    public synchronized void b(String str, JSONObject jSONObject) {
        SQLiteDatabase writableDatabase;
        List<l4> a;
        this.b.d.D.debug(5, "Pack trace events for appId:{} start...", str);
        try {
            writableDatabase = this.a.getWritableDatabase();
            a = a(writableDatabase, str);
        } catch (Throwable th) {
            this.b.d.D.error(5, "Pack trace events for appId:{} failed", th, str);
            p2.a(this.b.q, th);
        }
        if (a.isEmpty()) {
            return;
        }
        g4 g4Var = new g4();
        JSONObject jSONObject2 = new JSONObject();
        k0.a(jSONObject2, jSONObject);
        jSONObject2.remove("user_unique_id");
        jSONObject2.remove("user_unique_id_type");
        g4Var.y = jSONObject2;
        g4Var.m = str;
        g4Var.x = a;
        a(writableDatabase, g4Var);
    }

    public synchronized void c(List<i4> list) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase sQLiteDatabase2 = this.a.getWritableDatabase();
            try {
                sQLiteDatabase2.beginTransaction();
                Iterator<i4> it = list.iterator();
                ContentValues contentValues = null;
                while (it.hasNext()) {
                    contentValues = it.next().a(contentValues);
                    sQLiteDatabase2.insert("profile", null, contentValues);
                }
                sQLiteDatabase2.setTransactionSuccessful();
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabase2;
                try {
                    this.b.d.D.error(5, "Save profiles failed", th, new Object[0]);
                    p2.a(this.b.q, th);
                    sQLiteDatabase2 = sQLiteDatabase;
                } finally {
                    k0.a(sQLiteDatabase);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final int a(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        if (sQLiteDatabase == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT count(1) FROM " + str + " WHERE " + str2, strArr);
        } catch (Throwable th) {
            try {
                this.b.d.D.error(5, "Count table:{} failed", th, str);
                p2.a(this.b.q, th);
            } finally {
                k0.a(cursor);
            }
        }
        if (cursor.moveToNext()) {
            return cursor.getInt(0);
        }
        return 0;
    }

    public final List<e4> b(SQLiteDatabase sQLiteDatabase, String str, String str2, int i) {
        if (i <= 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        boolean z = false;
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id is null limit 0, ?", new String[]{str, String.valueOf(i)}) : sQLiteDatabase.rawQuery("SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id = ? limit 0, ?", new String[]{str, str2, String.valueOf(i)});
            while (cursor.moveToNext()) {
                e4 e4Var = new e4();
                e4Var.a(cursor);
                arrayList.add(e4Var);
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query v3 event by uuid:{} for appId:{} failed", th, str2, str);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return arrayList;
    }

    public synchronized void a(List<i4> list) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = this.a.getWritableDatabase();
            sQLiteDatabase.beginTransaction();
            Iterator<i4> it = list.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.delete("profile", "_id=?", new String[]{String.valueOf(it.next().b)});
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
            } finally {
            }
        }
    }

    public final List<f4> b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        Cursor cursor = null;
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM launch WHERE _app_id= ? and user_unique_id is null", new String[]{str}) : sQLiteDatabase.rawQuery("SELECT * FROM launch WHERE _app_id= ? and user_unique_id = ?", new String[]{str, str2});
            while (cursor.moveToNext()) {
                f4 f4Var = new f4();
                f4Var.a(cursor);
                arrayList.add(f4Var);
                f4Var.u = !(k0.d(f4Var.e) && a(sQLiteDatabase, "page", "session_id = ? LIMIT 1", new String[]{f4Var.e}) > 0);
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query launch by uuid:{} for appId:{} failed", th, str2, str);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return arrayList;
    }

    public final Set<String> a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        HashSet hashSet = new HashSet();
        boolean z = false;
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT `user_unique_id` FROM " + str + " WHERE _app_id= ?", new String[]{str2});
            while (cursor.moveToNext()) {
                hashSet.add(cursor.getString(0));
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query uuid set from table:{} for appId:{} failed", th, str, str2);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return hashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int b(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            com.bytedance.bdtracker.b4 r2 = r7.a     // Catch: java.lang.Throwable -> L29
            android.database.sqlite.SQLiteDatabase r2 = r2.getReadableDatabase()     // Catch: java.lang.Throwable -> L29
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L29
            r3[r0] = r8     // Catch: java.lang.Throwable -> L29
            java.lang.String r8 = "SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8"
            android.database.Cursor r1 = r2.rawQuery(r8, r3)     // Catch: java.lang.Throwable -> L29
            if (r1 != 0) goto L19
            com.bytedance.bdtracker.k0.a(r1)
            return r0
        L19:
            r8 = r0
        L1a:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L23
            int r8 = r8 + 1
            goto L1a
        L23:
            com.bytedance.bdtracker.k0.a(r1)
            goto L46
        L27:
            r2 = move-exception
            goto L2b
        L29:
            r2 = move-exception
            r8 = r0
        L2b:
            boolean r3 = r2 instanceof android.database.sqlite.SQLiteBlobTooBigException     // Catch: java.lang.Throwable -> L4c
            com.bytedance.bdtracker.d0 r4 = r7.b     // Catch: java.lang.Throwable -> L4c
            com.bytedance.bdtracker.d r4 = r4.d     // Catch: java.lang.Throwable -> L4c
            com.bytedance.applog.log.IAppLogLogger r4 = r4.D     // Catch: java.lang.Throwable -> L4c
            r5 = 5
            java.lang.String r6 = "Query event packs count failed"
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L4c
            r4.error(r5, r6, r2, r0)     // Catch: java.lang.Throwable -> L4c
            com.bytedance.bdtracker.d0 r0 = r7.b     // Catch: java.lang.Throwable -> L4c
            com.bytedance.bdtracker.m2 r0 = r0.q     // Catch: java.lang.Throwable -> L4c
            com.bytedance.bdtracker.p2.a(r0, r2)     // Catch: java.lang.Throwable -> L4c
            com.bytedance.bdtracker.k0.a(r1)
            r0 = r3
        L46:
            if (r0 == 0) goto L4b
            r7.b()
        L4b:
            return r8
        L4c:
            r8 = move-exception
            com.bytedance.bdtracker.k0.a(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d4.b(java.lang.String):int");
    }

    public synchronized boolean a(String str, JSONObject jSONObject) {
        SQLiteDatabase sQLiteDatabase;
        List<k4> list;
        List<a4> list2;
        this.b.d.D.debug(5, "Pack events for appId:{} start...", str);
        try {
            sQLiteDatabase = this.a.getReadableDatabase();
        } catch (Throwable th) {
            this.b.d.D.error(5, "Open db failed", th, new Object[0]);
            p2.a(this.b.q, th);
            sQLiteDatabase = null;
        }
        HashSet<String> hashSet = new HashSet();
        if (sQLiteDatabase != null) {
            hashSet.addAll(a(sQLiteDatabase, "launch", str));
            hashSet.addAll(a(sQLiteDatabase, "page", str));
            hashSet.addAll(a(sQLiteDatabase, "eventv3", str));
            hashSet.addAll(a(sQLiteDatabase, "custom_event", str));
        }
        if (hashSet.isEmpty()) {
            return false;
        }
        HashSet hashSet2 = new HashSet();
        try {
            SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
            for (String str2 : hashSet) {
                g4 g4Var = new g4();
                g4Var.m = str;
                JSONObject jSONObject2 = new JSONObject();
                k0.a(jSONObject2, jSONObject);
                jSONObject2.remove("ssid");
                jSONObject2.put("user_unique_id", k0.c(str2) ? JSONObject.NULL : str2);
                g4Var.y = jSONObject2;
                g4Var.v = b(writableDatabase, str, str2);
                List<h4> c = c(writableDatabase, str, str2);
                ArrayList arrayList = new ArrayList();
                List<k4> a = a(c, arrayList, this.b.e.c.isLaunchTerminateEnabled());
                g4Var.u = arrayList;
                g4Var.w = a;
                g4Var.t = a(writableDatabase, str, str2, g4Var.k());
                int k = g4Var.k();
                List<a4> list3 = g4Var.t;
                if (list3 != null) {
                    k -= list3.size();
                }
                g4Var.s = b(writableDatabase, str, str2, k);
                List<f4> list4 = g4Var.v;
                if (!((list4 == null || list4.isEmpty()) && ((list = g4Var.w) == null || list.isEmpty()) && g4Var.a((Set<String>) null).length() == 0 && ((list2 = g4Var.t) == null || list2.isEmpty()))) {
                    g4Var.m();
                    g4Var.n();
                    if (!this.b.a(jSONObject2)) {
                        this.b.d.D.warn(5, "Register to get ssid by temp header failed.", new Object[0]);
                    } else {
                        this.b.d.D.debug(5, g4Var.toString(), new Object[0]);
                        hashSet2.add(str2);
                        a(writableDatabase, g4Var);
                    }
                }
            }
        } catch (Throwable th2) {
            this.b.d.D.warn(5, "Pack events for appId:{} failed", th2, str);
            p2.a(this.b.q, th2);
        }
        return !hashSet2.isEmpty();
    }

    public final void b() {
        try {
            Field declaredField = CursorWindow.class.getDeclaredField("sCursorWindowSize");
            declaredField.setAccessible(true);
            int i = declaredField.getInt(null);
            if (i > 0 && i <= 8388608) {
                int i2 = i * 2;
                declaredField.setInt(null, i2);
                this.b.d.D.debug("tryIncreaseCursorWindowSize set new curCursorWindowSize = " + i2, new Object[0]);
            } else {
                this.b.d.D.debug("tryIncreaseCursorWindowSize curCursorWindowSize invalid = " + i, new Object[0]);
            }
        } catch (Throwable th) {
            this.b.d.D.error(5, "tryIncreaseCursorWindowSize", th, new Object[0]);
        }
    }

    public final List<a4> a(SQLiteDatabase sQLiteDatabase, String str, String str2, int i) {
        if (i <= 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        boolean z = false;
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id is null limit 0, ?", new String[]{str, String.valueOf(i)}) : sQLiteDatabase.rawQuery("SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id = ? limit 0, ?", new String[]{str, str2, String.valueOf(i)});
            while (cursor.moveToNext()) {
                a4 a4Var = new a4();
                a4Var.a(cursor);
                arrayList.add(a4Var);
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query custom event by uuid:{} for appId:{} failed", th, str2, str);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return arrayList;
    }

    public synchronized Map<String, List<i4>> a(String str) {
        HashMap hashMap;
        hashMap = new HashMap();
        Cursor cursor = null;
        boolean z = false;
        try {
            cursor = this.a.getWritableDatabase().rawQuery("SELECT * FROM profile WHERE _app_id=? ORDER BY _id DESC LIMIT 200", new String[]{str});
            while (cursor.moveToNext()) {
                i4 i4Var = new i4();
                i4Var.a(cursor);
                String a = k0.a((Object) i4Var.g);
                List list = (List) hashMap.get(a);
                if (list == null) {
                    list = new ArrayList();
                    hashMap.put(a, list);
                }
                list.add(i4Var);
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query profiles for appId:{} failed", th, str);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return hashMap;
    }

    public final List<l4> a(SQLiteDatabase sQLiteDatabase, String str) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT * FROM trace WHERE _app_id= ? ", new String[]{str});
            while (cursor.moveToNext()) {
                l4 l4Var = new l4();
                l4Var.a(cursor);
                arrayList.add(l4Var);
            }
        } catch (Throwable th) {
            try {
                boolean z2 = th instanceof SQLiteBlobTooBigException;
                this.b.d.D.error(5, "Query trace for appId:{} failed", th, str);
                p2.a(this.b.q, th);
                k0.a(cursor);
                z = z2;
            } finally {
                k0.a(cursor);
            }
        }
        if (z) {
            b();
        }
        return arrayList;
    }

    public final synchronized void a(SQLiteDatabase sQLiteDatabase, g4 g4Var) {
        try {
            sQLiteDatabase.beginTransaction();
        } finally {
            try {
            } finally {
            }
        }
        if (sQLiteDatabase.insert("packV2", null, g4Var.a((ContentValues) null)) < 0) {
            return;
        }
        List<f4> list = g4Var.v;
        if (list != null) {
            for (f4 f4Var : list) {
                sQLiteDatabase.delete("launch", "_id = ?", new String[]{String.valueOf(f4Var.b)});
                LogUtils.sendObject("event_pack", f4Var);
            }
        }
        List<h4> list2 = g4Var.u;
        if (list2 != null) {
            for (h4 h4Var : list2) {
                sQLiteDatabase.delete("page", "session_id = ? and page_key = ?", new String[]{String.valueOf(h4Var.e), k0.a((Object) h4Var.u)});
                LogUtils.sendObject("event_pack", h4Var);
            }
        }
        List<a4> list3 = g4Var.t;
        if (list3 != null) {
            for (a4 a4Var : list3) {
                sQLiteDatabase.delete("custom_event", "_id = ?", new String[]{String.valueOf(a4Var.b)});
                LogUtils.sendObject("event_pack", a4Var);
            }
        }
        List<e4> list4 = g4Var.s;
        if (list4 != null) {
            for (e4 e4Var : list4) {
                sQLiteDatabase.delete("eventv3", "_id = ?", new String[]{String.valueOf(e4Var.b)});
                LogUtils.sendObject("event_pack", e4Var);
            }
        }
        if (g4Var.x != null) {
            sQLiteDatabase.delete("trace", "_app_id= ? ", new String[]{String.valueOf(g4Var.m)});
            if (!LogUtils.isDisabled()) {
                Iterator<l4> it = g4Var.x.iterator();
                while (it.hasNext()) {
                    LogUtils.sendObject("event_pack", it.next());
                }
            }
        }
        sQLiteDatabase.setTransactionSuccessful();
    }

    public synchronized void a(String str, String str2) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = this.a.getWritableDatabase();
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.execSQL("UPDATE launch SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
            sQLiteDatabase.execSQL("UPDATE page SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
            sQLiteDatabase.execSQL("UPDATE eventv3 SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
            sQLiteDatabase.execSQL("UPDATE profile SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
            sQLiteDatabase.execSQL("UPDATE trace SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
            } finally {
            }
        }
    }
}
