package com.bytedance.bdtracker;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.applog.log.IAppLogLogger;
import java.util.Iterator;

/* loaded from: classes.dex */
public class b4 extends SQLiteOpenHelper {
    public final d0 a;

    public b4(d0 d0Var, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(d0Var.b(), str, cursorFactory, i);
        this.a = d0Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.beginTransaction();
            Iterator<x3> it = x3.j().values().iterator();
            while (it.hasNext()) {
                String a = it.next().a();
                if (a != null) {
                    sQLiteDatabase.execSQL(a);
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        IAppLogLogger iAppLogLogger = this.a.d.D;
        Object[] objArr = {Integer.valueOf(i), Integer.valueOf(i2)};
        iAppLogLogger.debug(5, "Database upgrade from:{} to:{}", objArr);
        try {
            sQLiteDatabase.beginTransaction();
            Iterator<x3> it = x3.j().values().iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next().f());
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
                k0.a(sQLiteDatabase);
                onCreate(sQLiteDatabase);
            } catch (Throwable th) {
            }
        }
        k0.a(sQLiteDatabase);
        onCreate(sQLiteDatabase);
    }
}
