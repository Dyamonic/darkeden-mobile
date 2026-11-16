package com.qq.gdt.action.c.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.core.app.NotificationCompat;
import com.qq.gdt.action.g.a.b;
import com.qq.gdt.action.j.d;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.u;
import com.qq.gdt.action.j.v;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {
    private static final String[] a = {"create index index_group on events ( status,session_id,action_type ) "};
    private static volatile a b;
    private Context c;
    private C0034a d;
    private AtomicInteger e = new AtomicInteger();
    private SQLiteDatabase f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.qq.gdt.action.c.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0034a extends SQLiteOpenHelper {
        C0034a(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            o.a("Creating a new gdt_event DB", new Object[0]);
            sQLiteDatabase.execSQL("create table events ( id INTEGER primary key autoincrement,event_id INTEGER not null,unique_event_id CHAR(32) not null,event_time BIGINT not null,action_type TEXT,unique_action_id CHAR(32),action_log_id BIGINT not null,event_log_id BIGINT not null,action_time BIGINT,event_param TEXT not null,session_id CHAR(32) not null,status TINYINT not null ) ");
            for (String str : a.a) {
                sQLiteDatabase.execSQL(str);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            o.a("Downgrade gdt_action DB， oldVersion: " + i + "，newVersion: " + i2, new Object[0]);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
            sQLiteDatabase.execSQL("create table events ( id INTEGER primary key autoincrement,event_id INTEGER not null,unique_event_id CHAR(32) not null,event_time BIGINT not null,action_type TEXT,unique_action_id CHAR(32),action_log_id BIGINT not null,event_log_id BIGINT not null,action_time BIGINT,event_param TEXT not null,session_id CHAR(32) not null,status TINYINT not null ) ");
            for (String str : a.a) {
                sQLiteDatabase.execSQL(str);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            o.a("Upgrading gdt_event DB， oldVersion: " + i + "，newVersion: " + i2, new Object[0]);
            try {
                sQLiteDatabase.execSQL("alter table events add action_log_id default -1 ");
                sQLiteDatabase.execSQL("alter table events add event_log_id default -1 ");
            } catch (Exception e) {
                o.c(e.getMessage());
            }
        }
    }

    private a(Context context) {
        this.c = context.getApplicationContext();
        String str = "gdt_event_" + u.a(d.a(this.c)) + ".db";
        o.a("ActionDB full name is " + str, new Object[0]);
        this.d = new C0034a(this.c, str);
    }

    private ContentValues a(com.qq.gdt.action.g.a.a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_id", Long.valueOf(aVar.b()));
        contentValues.put("unique_event_id", aVar.d());
        contentValues.put("event_time", Long.valueOf(aVar.i()));
        contentValues.put("action_type", aVar.f());
        contentValues.put("unique_action_id", aVar.e());
        contentValues.put("action_log_id", Long.valueOf(aVar.j()));
        contentValues.put("event_log_id", Long.valueOf(aVar.k()));
        contentValues.put("action_time", Long.valueOf(aVar.g()));
        contentValues.put("event_param", aVar.h() == null ? "" : aVar.h().toString());
        contentValues.put("session_id", aVar.c());
        contentValues.put(NotificationCompat.CATEGORY_STATUS, (Integer) 0);
        return contentValues;
    }

    public static a a(Context context) {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a(context);
                }
            }
        }
        return b;
    }

    private void a(SQLiteDatabase sQLiteDatabase, Cursor cursor, boolean z) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
                o.a("Cursor close exception", th);
            }
        }
        if (sQLiteDatabase != null) {
            if (z) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th2) {
                    o.a("Database close exception", th2);
                    return;
                }
            }
            e();
        }
    }

    private synchronized SQLiteDatabase d() {
        if (this.e.incrementAndGet() == 1) {
            try {
                this.f = this.d.getWritableDatabase();
            } catch (Throwable th) {
                o.a("database open exception", th);
            }
        }
        return this.f;
    }

    private synchronized void e() {
        this.e.decrementAndGet();
    }

    private int f() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = d();
        } catch (Throwable unused) {
            sQLiteDatabase = null;
        }
        try {
            String[] strArr = {String.valueOf(System.currentTimeMillis() - 604800000)};
            o.a("Will delete events with query:( status = 1 ) AND ( ( event_time < ? )), values:" + Arrays.toString(strArr), new Object[0]);
            return sQLiteDatabase.delete("events", "( status = 1 ) AND ( ( event_time < ? ))", strArr);
        } catch (Throwable unused2) {
            try {
                o.c("Exception while delete events out of date");
                return 0;
            } finally {
                a(sQLiteDatabase, (Cursor) null, false);
            }
        }
    }

    private int g() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = d();
        } catch (Throwable unused) {
            sQLiteDatabase = null;
        }
        try {
            o.a("Will delete auto events with query:( status = 1 ) , values:", new Object[0]);
            return sQLiteDatabase.delete("events", "( status = 1 ) ", null);
        } catch (Throwable unused2) {
            try {
                o.c("Exception while delete events outOfDate");
                return 0;
            } finally {
                a(sQLiteDatabase, (Cursor) null, false);
            }
        }
    }

    private int h() {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase = null;
        Cursor cursor2 = null;
        try {
            SQLiteDatabase d = d();
            try {
                cursor2 = d.rawQuery("SELECT COUNT(*) FROM events", null);
                if (cursor2 == null || !cursor2.moveToFirst()) {
                    a(d, cursor2, false);
                    return -1;
                }
                int i = cursor2.getInt(0);
                a(d, cursor2, false);
                return i;
            } catch (Throwable th) {
                th = th;
                cursor = cursor2;
                sQLiteDatabase = d;
                try {
                    o.b("Exception while count all events in db", th);
                    return -1;
                } finally {
                    a(sQLiteDatabase, cursor, false);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public synchronized int a(List<com.qq.gdt.action.g.a.a> list, int i) {
        SQLiteDatabase sQLiteDatabase;
        int i2;
        String str;
        try {
            try {
                sQLiteDatabase = d();
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(i));
                    String[] strArr = new String[list.size()];
                    StringBuilder sb = new StringBuilder();
                    sb.append(BreakpointSQLiteKey.ID);
                    sb.append(" IN ");
                    sb.append(" ( ");
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        strArr[i3] = String.valueOf(list.get(i3).a());
                        if (i3 == list.size() - 1) {
                            str = "?";
                        } else {
                            sb.append("?");
                            str = ", ";
                        }
                        sb.append(str);
                    }
                    sb.append(" ) ");
                    i2 = sQLiteDatabase.update("events", contentValues, sb.toString(), strArr);
                    a(sQLiteDatabase, (Cursor) null, false);
                } catch (Exception e) {
                    e = e;
                    o.b("Database update events status exception.", e);
                    a(sQLiteDatabase, (Cursor) null, false);
                    i2 = -3;
                    return i2;
                }
            } catch (Throwable th) {
                th = th;
                a((SQLiteDatabase) null, (Cursor) null, false);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            a((SQLiteDatabase) null, (Cursor) null, false);
            throw th;
        }
        return i2;
    }

    public List<b> a() {
        Cursor cursor;
        SQLiteDatabase d;
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase sQLiteDatabase = null;
        r1 = null;
        Cursor cursor2 = null;
        sQLiteDatabase = null;
        try {
            d = d();
        } catch (Exception e) {
            e = e;
            cursor = null;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            cursor2 = d.rawQuery("select status, count(*) from events group by status", null);
            if (cursor2 != null) {
                while (cursor2.moveToNext()) {
                    arrayList.add(new b(cursor2.getInt(0), cursor2.getInt(1)));
                }
            }
            a(d, cursor2, false);
        } catch (Exception e2) {
            e = e2;
            cursor = cursor2;
            sQLiteDatabase = d;
            try {
                o.b("countGroupByStatus failed action exception", e);
                a(sQLiteDatabase, cursor, false);
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a(sQLiteDatabase, cursor, false);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = cursor2;
            sQLiteDatabase = d;
            a(sQLiteDatabase, cursor, false);
            throw th;
        }
        return arrayList;
    }

    public List<com.qq.gdt.action.g.a.a> a(int i, long j, long j2) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        SQLiteDatabase d;
        ArrayList arrayList = new ArrayList();
        try {
            d = d();
        } catch (Exception e) {
            e = e;
            sQLiteDatabase = null;
        } catch (Throwable th) {
            th = th;
            sQLiteDatabase = null;
        }
        try {
            cursor = d.rawQuery("SELECT * FROM events WHERE status = " + i + " AND " + BreakpointSQLiteKey.ID + " > " + j2 + " ORDER BY " + BreakpointSQLiteKey.ID + " ASC LIMIT " + j, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        long j3 = cursor.getLong(cursor.getColumnIndexOrThrow(BreakpointSQLiteKey.ID));
                        long j4 = cursor.getLong(cursor.getColumnIndexOrThrow("event_id"));
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("unique_event_id"));
                        long j5 = cursor.getLong(cursor.getColumnIndexOrThrow("event_time"));
                        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("action_type"));
                        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("unique_action_id"));
                        long j6 = cursor.getLong(cursor.getColumnIndexOrThrow("action_time"));
                        String string4 = cursor.getString(cursor.getColumnIndexOrThrow("event_param"));
                        arrayList.add(new com.qq.gdt.action.g.a.a(j3, j4, string, j5, cursor.getString(cursor.getColumnIndexOrThrow("session_id")), string2, string3, j6, v.a(string4) ? null : new JSONObject(string4), i, cursor.getLong(cursor.getColumnIndexOrThrow("action_log_id")), cursor.getLong(cursor.getColumnIndexOrThrow("event_log_id"))));
                    } catch (Exception e2) {
                        e = e2;
                        sQLiteDatabase = d;
                        try {
                            o.b("Find events by status exception", e);
                            a(sQLiteDatabase, cursor, false);
                            return arrayList;
                        } catch (Throwable th2) {
                            th = th2;
                            a(sQLiteDatabase, cursor, false);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        sQLiteDatabase = d;
                        a(sQLiteDatabase, cursor, false);
                        throw th;
                    }
                }
            }
            a(d, cursor, false);
        } catch (Exception e3) {
            e = e3;
            sQLiteDatabase = d;
            cursor = null;
            o.b("Find events by status exception", e);
            a(sQLiteDatabase, cursor, false);
            return arrayList;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = d;
            cursor = null;
            a(sQLiteDatabase, cursor, false);
            throw th;
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.util.List<com.qq.gdt.action.g.a.a> r11) {
        /*
            r10 = this;
            r0 = 0
            r1 = 1
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r10.d()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.util.Iterator r4 = r11.iterator()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
        Le:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            if (r5 == 0) goto L30
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            com.qq.gdt.action.g.a.a r5 = (com.qq.gdt.action.g.a.a) r5     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            android.content.ContentValues r6 = r10.a(r5)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.lang.String r7 = "events"
            long r6 = r3.insert(r7, r2, r6)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 >= 0) goto L2c
            r4 = r0
            goto L31
        L2c:
            r5.a(r6)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            goto Le
        L30:
            r4 = r1
        L31:
            if (r4 == 0) goto L36
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
        L36:
            r10.a(r3, r2, r1)
            r0 = r4
            goto L4c
        L3b:
            r11 = move-exception
            goto L65
        L3d:
            r4 = move-exception
            goto L44
        L3f:
            r11 = move-exception
            r3 = r2
            goto L65
        L42:
            r4 = move-exception
            r3 = r2
        L44:
            java.lang.String r5 = "Database add events exception."
            com.qq.gdt.action.j.o.b(r5, r4)     // Catch: java.lang.Throwable -> L3b
            r10.a(r3, r2, r1)
        L4c:
            if (r0 != 0) goto L64
            java.util.Iterator r11 = r11.iterator()
        L52:
            boolean r1 = r11.hasNext()
            if (r1 == 0) goto L64
            java.lang.Object r1 = r11.next()
            com.qq.gdt.action.g.a.a r1 = (com.qq.gdt.action.g.a.a) r1
            r2 = -1
            r1.a(r2)
            goto L52
        L64:
            return r0
        L65:
            r10.a(r3, r2, r1)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.c.a.a.a(java.util.List):boolean");
    }

    public void b() {
        o.a("Success cleaned " + f() + " out of date events.", new Object[0]);
        int h = h();
        try {
            List<b> a2 = a();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("total", h);
            if (a2.size() > 0) {
                for (b bVar : a2) {
                    jSONObject.put(bVar.a(), bVar.b());
                }
            }
            com.qq.gdt.action.h.a.a(3501, jSONObject);
        } catch (Exception e) {
            o.c(e.getMessage());
        }
        o.a("Count all events in db: " + h, new Object[0]);
        if (h > 10000) {
            o.a("Success deep-clean " + g() + " out of date events.", new Object[0]);
        }
    }
}
