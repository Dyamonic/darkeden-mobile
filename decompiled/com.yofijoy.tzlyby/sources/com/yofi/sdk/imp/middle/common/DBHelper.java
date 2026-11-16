package com.yofi.sdk.imp.middle.common;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

/* loaded from: classes2.dex */
public class DBHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "chat.db";
    private static final int DATABASE_VERSION = 1;

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
    }

    public DBHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        Log.i("TAG:", "创建message数据库表！");
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS chat1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER, imgUrl TEXT)");
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS message1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER)");
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS content1(id INTEGER PRIMARY KEY,uuid TEXT, flag INTEGER)");
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS order_info(order_id TEXT PRIMARY KEY, sku TEXT, pay_type TEXT, cp_order_id TEXT)");
    }

    public void createMessage(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS message1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sqLiteDatabase) {
        super.onOpen(sqLiteDatabase);
    }
}
