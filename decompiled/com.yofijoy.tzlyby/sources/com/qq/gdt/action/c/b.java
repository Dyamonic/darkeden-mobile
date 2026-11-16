package com.qq.gdt.action.c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.core.app.NotificationCompat;
import com.qq.gdt.action.j.d;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.u;
import com.qq.gdt.action.j.v;
import com.qq.gdt.action.j.w;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b {
    private static final String[] a = {"create index index_group on actions ( status,session_id,action_type ) ", "create index index_status_time on actions ( status,revised_action_time ) ", "create index index_time on actions ( revised_action_time ) "};
    private static volatile b b;
    private Context c;
    private a d;
    private final File e;
    private AtomicInteger f = new AtomicInteger();
    private SQLiteDatabase g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends SQLiteOpenHelper {
        a(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            o.a("Creating a new gdt_action DB", new Object[0]);
            sQLiteDatabase.execSQL("create table actions ( id INTEGER primary key autoincrement,session_id CHAR(32) not null,unique_id CHAR(32) not null,action_log_id BIGINT not null,action_type TEXT not null,action_time BIGINT not null,action_param TEXT not null,revised_action_time BIGINT not null,status TINYINT not null ) ");
            for (String str : b.a) {
                sQLiteDatabase.execSQL(str);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            o.a("Downgrade gdt_action DB， oldVersion: " + i + "，newVersion: " + i2, new Object[0]);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS actions");
            sQLiteDatabase.execSQL("create table actions ( id INTEGER primary key autoincrement,session_id CHAR(32) not null,unique_id CHAR(32) not null,action_log_id BIGINT not null,action_type TEXT not null,action_time BIGINT not null,action_param TEXT not null,revised_action_time BIGINT not null,status TINYINT not null ) ");
            for (String str : b.a) {
                sQLiteDatabase.execSQL(str);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            o.a("Upgrading gdt_action DB， oldVersion: " + i + "，newVersion: " + i2, new Object[0]);
            try {
                sQLiteDatabase.execSQL("alter table actions add action_log_id default -1 ");
            } catch (Exception e) {
                o.c(e.getMessage());
            }
        }
    }

    private b(Context context) {
        this.c = context.getApplicationContext();
        String str = "gdt_action_" + u.a(d.a(this.c)) + ".db";
        o.a("ActionDB full name is " + str, new Object[0]);
        this.d = new a(this.c, str);
        this.e = this.c.getDatabasePath(str);
    }

    private ContentValues a(com.qq.gdt.action.c.a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("session_id", aVar.g());
        contentValues.put("unique_id", aVar.a());
        contentValues.put("action_log_id", Long.valueOf(aVar.b()));
        contentValues.put("action_type", aVar.c());
        contentValues.put("action_time", Long.valueOf(aVar.d()));
        contentValues.put("action_param", aVar.e() == null ? "" : aVar.e().toString());
        contentValues.put("revised_action_time", Long.valueOf(aVar.h()));
        contentValues.put(NotificationCompat.CATEGORY_STATUS, (Integer) 0);
        return contentValues;
    }

    public static b a(Context context) {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b(context);
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
        if (this.f.incrementAndGet() == 1) {
            try {
                this.g = this.d.getWritableDatabase();
            } catch (Throwable th) {
                o.a("database open exception", th);
            }
        }
        return this.g;
    }

    private synchronized void e() {
        SQLiteDatabase sQLiteDatabase;
        if (this.f.decrementAndGet() == 0 && (sQLiteDatabase = this.g) != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable th) {
                o.a("database close exception", th);
            }
        }
    }

    private int f() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = d();
        } catch (Throwable unused) {
            sQLiteDatabase = null;
        }
        try {
            String[] strArr = {String.valueOf(System.currentTimeMillis() - 1296000000), String.valueOf(w.b() - 54000000)};
            o.a("Will delete actions with query:( status = 1 ) AND ( ( action_time < ? ) OR ( revised_action_time > 0 AND revised_action_time < ? )), values:" + Arrays.toString(strArr), new Object[0]);
            return sQLiteDatabase.delete("actions", "( status = 1 ) AND ( ( action_time < ? ) OR ( revised_action_time > 0 AND revised_action_time < ? ))", strArr);
        } catch (Throwable unused2) {
            try {
                o.c("Exception while delete actions out of date");
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
            o.a("Will delete auto actions with query:( status = 1 ) AND (action_type in ('TICKET', 'PAGE_VIEW')), values:", new Object[0]);
            return sQLiteDatabase.delete("actions", "( status = 1 ) AND (action_type in ('TICKET', 'PAGE_VIEW'))", null);
        } catch (Throwable unused2) {
            try {
                o.c("Exception while delete actions outOfDate");
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
                cursor2 = d.rawQuery("SELECT COUNT(*) FROM actions", null);
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
                    o.b("Exception while count all actions in db", th);
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

    public int a(int i) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase = null;
        r0 = null;
        Cursor cursor2 = null;
        sQLiteDatabase = null;
        int i2 = -1;
        try {
            SQLiteDatabase d = d();
            try {
                cursor2 = d.rawQuery("SELECT COUNT(*) FROM actions WHERE status = " + i, null);
                if (cursor2 != null) {
                    cursor2.moveToFirst();
                    i2 = cursor2.getInt(0);
                }
                a(d, cursor2, false);
            } catch (Exception e) {
                e = e;
                cursor = cursor2;
                sQLiteDatabase = d;
                try {
                    o.b("Count failed action exception", e);
                    a(sQLiteDatabase, cursor, false);
                    return i2;
                } catch (Throwable th) {
                    th = th;
                    a(sQLiteDatabase, cursor, false);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursor2;
                sQLiteDatabase = d;
                a(sQLiteDatabase, cursor, false);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        return i2;
    }

    public synchronized int a(List<com.qq.gdt.action.c.a> list, int i) {
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
                        strArr[i3] = String.valueOf(list.get(i3).f());
                        if (i3 == list.size() - 1) {
                            str = "?";
                        } else {
                            sb.append("?");
                            str = ", ";
                        }
                        sb.append(str);
                    }
                    sb.append(" ) ");
                    i2 = sQLiteDatabase.update("actions", contentValues, sb.toString(), strArr);
                    a(sQLiteDatabase, (Cursor) null, false);
                } catch (Exception e) {
                    e = e;
                    o.b("Database update actions status exception.", e);
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

    public List<c> a() {
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
            cursor2 = d.rawQuery("select status, count(*) from actions group by status", null);
            if (cursor2 != null) {
                while (cursor2.moveToNext()) {
                    arrayList.add(new c(cursor2.getInt(0), cursor2.getInt(1)));
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

    public List<com.qq.gdt.action.c.a> a(int i, long j, long j2) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        SQLiteDatabase d;
        ArrayList arrayList = new ArrayList();
        JSONObject jSONObject = null;
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
            cursor = d.rawQuery("SELECT * FROM actions WHERE status = " + i + " AND " + BreakpointSQLiteKey.ID + " > " + j2 + " ORDER BY " + BreakpointSQLiteKey.ID + " ASC LIMIT " + j, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        long j3 = cursor.getLong(cursor.getColumnIndexOrThrow(BreakpointSQLiteKey.ID));
                        String string = cursor.getString(cursor.getColumnIndexOrThrow("session_id"));
                        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("unique_id"));
                        long j4 = cursor.getLong(cursor.getColumnIndexOrThrow("action_log_id"));
                        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("action_type"));
                        long j5 = cursor.getLong(cursor.getColumnIndexOrThrow("action_time"));
                        long j6 = cursor.getLong(cursor.getColumnIndexOrThrow("revised_action_time"));
                        String string4 = cursor.getString(cursor.getColumnIndexOrThrow("action_param"));
                        if (!v.a(string4)) {
                            jSONObject = new JSONObject(string4);
                        }
                        arrayList.add(new com.qq.gdt.action.c.a(j3, string, string2, string3, j5, j6, jSONObject, i, j4));
                        jSONObject = null;
                    } catch (Exception e2) {
                        e = e2;
                        sQLiteDatabase = d;
                        try {
                            o.b("Find actions by status exception", e);
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
            o.b("Find actions by status exception", e);
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

    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.util.List<com.qq.gdt.action.c.a> r11) {
        /*
            r10 = this;
            r0 = 0
            r1 = 1
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r10.d()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.util.Iterator r4 = r11.iterator()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
        Le:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            if (r5 == 0) goto L44
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            com.qq.gdt.action.c.a r5 = (com.qq.gdt.action.c.a) r5     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r6 = 6001(0x1771, float:8.409E-42)
            com.qq.gdt.action.h.a.a(r6, r5)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            android.content.ContentValues r6 = r10.a(r5)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r7 = 6002(0x1772, float:8.41E-42)
            com.qq.gdt.action.h.a.a(r7, r5)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.lang.String r7 = "actions"
            long r6 = r3.insert(r7, r2, r6)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 >= 0) goto L3b
            r4 = 6004(0x1774, float:8.413E-42)
            com.qq.gdt.action.h.a.a(r4, r5)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r4 = r0
            goto L45
        L3b:
            r5.a(r6)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r6 = 6003(0x1773, float:8.412E-42)
            com.qq.gdt.action.h.a.a(r6, r5)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            goto Le
        L44:
            r4 = r1
        L45:
            if (r4 == 0) goto L4a
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
        L4a:
            r10.a(r3, r2, r1)
            r0 = r4
            goto L76
        L4f:
            r11 = move-exception
            goto Laa
        L51:
            r4 = move-exception
            goto L58
        L53:
            r11 = move-exception
            r3 = r2
            goto Laa
        L56:
            r4 = move-exception
            r3 = r2
        L58:
            java.lang.String r5 = "Database add actions exception."
            com.qq.gdt.action.j.o.b(r5, r4)     // Catch: java.lang.Throwable -> L4f
            java.util.Iterator r4 = r11.iterator()     // Catch: java.lang.Throwable -> L4f
        L61:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L4f
            if (r5 == 0) goto L73
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L4f
            com.qq.gdt.action.c.a r5 = (com.qq.gdt.action.c.a) r5     // Catch: java.lang.Throwable -> L4f
            r6 = 6005(0x1775, float:8.415E-42)
            com.qq.gdt.action.h.a.a(r6, r5)     // Catch: java.lang.Throwable -> L4f
            goto L61
        L73:
            r10.a(r3, r2, r1)
        L76:
            if (r0 != 0) goto L8e
            java.util.Iterator r1 = r11.iterator()
        L7c:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L8e
            java.lang.Object r2 = r1.next()
            com.qq.gdt.action.c.a r2 = (com.qq.gdt.action.c.a) r2
            r3 = -1
            r2.a(r3)
            goto L7c
        L8e:
            java.util.Iterator r11 = r11.iterator()
        L92:
            boolean r1 = r11.hasNext()
            if (r1 == 0) goto La9
            java.lang.Object r1 = r11.next()
            com.qq.gdt.action.c.a r1 = (com.qq.gdt.action.c.a) r1
            if (r0 == 0) goto La3
            r2 = 7001(0x1b59, float:9.81E-42)
            goto La5
        La3:
            r2 = 7002(0x1b5a, float:9.812E-42)
        La5:
            com.qq.gdt.action.h.a.a(r2, r1)
            goto L92
        La9:
            return r0
        Laa:
            r10.a(r3, r2, r1)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.gdt.action.c.b.a(java.util.List):boolean");
    }

    public void b() {
        o.a("Success cleaned " + f() + " out of date actions.", new Object[0]);
        int h = h();
        try {
            List<c> a2 = a();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("total", h);
            if (a2.size() > 0) {
                for (c cVar : a2) {
                    jSONObject.put(cVar.a(), cVar.b());
                }
            }
            com.qq.gdt.action.h.a.a(3500, jSONObject);
        } catch (Exception e) {
            o.c(e.getMessage());
        }
        o.a("Count all actions in db: " + h, new Object[0]);
        if (h > 10000) {
            o.a("Success deep-clean " + g() + " out of date actions.", new Object[0]);
        }
    }
}
