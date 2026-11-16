package com.yofi.sdk.imp.middle.manager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.imp.middle.common.DBHelper;
import com.yofi.sdk.imp.middle.data.Message;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class DBManager {
    DBHelper helper;
    SQLiteDatabase sqLiteDatabase;

    public DBManager(Context context) {
        DBHelper dBHelper = new DBHelper(context);
        this.helper = dBHelper;
        this.sqLiteDatabase = dBHelper.getReadableDatabase();
    }

    public void delSQLite(String sql) {
        try {
            this.sqLiteDatabase.execSQL(sql);
        } catch (Exception unused) {
        }
    }

    public void createMessage() {
        this.sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS chat1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER, imgUrl TEXT)");
        this.sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS message1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER)");
        this.sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS content1(id INTEGER PRIMARY KEY,uuid TEXT, flag INTEGER)");
    }

    public boolean updateSQLite(String sql, Object[] bindArgs) {
        StringBuilder sb;
        boolean z = false;
        try {
            try {
                this.sqLiteDatabase.execSQL(sql, bindArgs);
                z = true;
                SQLiteDatabase sQLiteDatabase = this.sqLiteDatabase;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                sb = new StringBuilder();
            } catch (Exception e) {
                e.printStackTrace();
                SQLiteDatabase sQLiteDatabase2 = this.sqLiteDatabase;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                sb = new StringBuilder();
            }
            sb.append("数据插入数据库中状态：");
            sb.append(z);
            Log.i("TAG:", sb.toString());
            return z;
        } catch (Throwable th) {
            SQLiteDatabase sQLiteDatabase3 = this.sqLiteDatabase;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.close();
            }
            Log.i("TAG:", "数据插入数据库中状态：" + z);
            throw th;
        }
    }

    public ArrayList<HashMap<String, String>> querySQLite(String sql, String[] bindArgs) {
        ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
        Cursor rawQuery = this.sqLiteDatabase.rawQuery(sql, bindArgs);
        int columnCount = rawQuery.getColumnCount();
        Log.i("TAG:", "querySQLite()方法中获得总列数clos_len：" + columnCount);
        while (rawQuery.moveToNext()) {
            Log.i("TAG:", "进入到while循环中");
            HashMap<String, String> hashMap = new HashMap<>();
            for (int i = 0; i < columnCount; i++) {
                String columnName = rawQuery.getColumnName(i);
                String string = rawQuery.getString(rawQuery.getColumnIndex(columnName));
                if (string == null) {
                    string = "";
                }
                Log.i("TAG:", "while循环下面的for循环拿到的数据clos_value为：" + rawQuery.getString(rawQuery.getColumnIndex(columnName)));
                hashMap.put(columnName, string);
            }
            arrayList.add(hashMap);
        }
        rawQuery.close();
        return arrayList;
    }

    public ArrayList<Message> queryAll(String sql, String[] bindArgs) {
        ArrayList<Message> arrayList = new ArrayList<>();
        Cursor rawQuery = this.sqLiteDatabase.rawQuery(sql, bindArgs);
        int columnCount = rawQuery.getColumnCount();
        Log.i("TAG:", "querySQLite()方法中获得总列数clos_len：" + columnCount);
        while (rawQuery.moveToNext()) {
            Log.i("TAG:", "进入到while循环中");
            Message message = new Message();
            for (int i = 0; i < columnCount; i++) {
                String columnName = rawQuery.getColumnName(i);
                if (columnName.equals(BreakpointSQLiteKey.ID)) {
                    message.setId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals(ActionUtils.CONTENT_ID)) {
                    message.setContentId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("content")) {
                    message.setContent(rawQuery.getString(rawQuery.getColumnIndex(columnName)));
                } else if (columnName.equals("data")) {
                    message.setData(rawQuery.getBlob(rawQuery.getColumnIndex(columnName)));
                } else if (columnName.equals(ClientCookie.PATH_ATTR)) {
                    message.setPath(rawQuery.getString(rawQuery.getColumnIndex(columnName)));
                } else if (columnName.equals("type")) {
                    message.setType(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("msg_type")) {
                    message.setMsgType(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("sender_id")) {
                    message.setSenderId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("receiver_id")) {
                    message.setReceiverId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("create_time")) {
                    message.setCreateTime(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("flag")) {
                    message.setFlag(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("msg_id")) {
                    message.setMsgId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("uploaded")) {
                    message.setUploaded(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                }
            }
            arrayList.add(message);
        }
        rawQuery.close();
        return arrayList;
    }

    public ArrayList<Message> queryAllChat(String sql, String[] bindArgs) {
        ArrayList<Message> arrayList = new ArrayList<>();
        Cursor rawQuery = this.sqLiteDatabase.rawQuery(sql, bindArgs);
        int columnCount = rawQuery.getColumnCount();
        Log.i("TAG:", "querySQLite()方法中获得总列数clos_len：" + columnCount);
        while (rawQuery.moveToNext()) {
            Log.i("TAG:", "进入到while循环中");
            Message message = new Message();
            for (int i = 0; i < columnCount; i++) {
                String columnName = rawQuery.getColumnName(i);
                if (columnName.equals(BreakpointSQLiteKey.ID)) {
                    message.setId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals(ActionUtils.CONTENT_ID)) {
                    message.setContentId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("content")) {
                    message.setContent(rawQuery.getString(rawQuery.getColumnIndex(columnName)));
                } else if (columnName.equals("data")) {
                    message.setData(rawQuery.getBlob(rawQuery.getColumnIndex(columnName)));
                } else if (columnName.equals(ClientCookie.PATH_ATTR)) {
                    message.setPath(rawQuery.getString(rawQuery.getColumnIndex(columnName)));
                } else if (columnName.equals("type")) {
                    message.setType(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("msg_type")) {
                    message.setMsgType(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("sender_id")) {
                    message.setSenderId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("receiver_id")) {
                    message.setReceiverId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("create_time")) {
                    message.setCreateTime(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("flag")) {
                    message.setFlag(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("msg_id")) {
                    message.setMsgId(Long.parseLong(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("uploaded")) {
                    message.setUploaded(Integer.parseInt(rawQuery.getString(rawQuery.getColumnIndex(columnName))));
                } else if (columnName.equals("imgUrl")) {
                    message.setImgUrl(rawQuery.getString(rawQuery.getColumnIndex(columnName)));
                }
            }
            arrayList.add(message);
        }
        rawQuery.close();
        return arrayList;
    }

    public void close() {
        SQLiteDatabase sQLiteDatabase = this.sqLiteDatabase;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }
}
