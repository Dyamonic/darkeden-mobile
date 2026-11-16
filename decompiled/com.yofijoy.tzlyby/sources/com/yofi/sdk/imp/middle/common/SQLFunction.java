package com.yofi.sdk.imp.middle.common;

import android.content.Context;
import android.util.Log;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import com.yofi.sdk.imp.middle.YoFiSdkImp;
import com.yofi.sdk.imp.middle.common.Constants;
import com.yofi.sdk.imp.middle.data.Content;
import com.yofi.sdk.imp.middle.data.Message;
import com.yofi.sdk.imp.middle.manager.DBManager;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class SQLFunction {
    public static long MAX_MSG_ID;
    public static long MESSAGE_ID;
    public static Content content;
    static DBHelper helper;

    public static void initTable(Context context) {
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getReadableDatabase();
        DBManager dBManager = new DBManager(context);
        dBManager.createMessage();
        try {
            ArrayList<HashMap<String, String>> querySQLite = dBManager.querySQLite("select max(id) as max_id from message1", null);
            if (querySQLite.size() > 0) {
                String str = querySQLite.get(0).get("max_id");
                if (!"".equals(str)) {
                    MESSAGE_ID = Long.parseLong(str);
                }
            }
            ArrayList<HashMap<String, String>> querySQLite2 = dBManager.querySQLite("select max(id) as max_id from chat1", null);
            if (querySQLite2.size() > 0) {
                String str2 = querySQLite2.get(0).get("max_id");
                if (!"".equals(str2)) {
                    MESSAGE_ID = Long.parseLong(str2);
                }
            }
            if (YoFiSdkImp.instance().getUuid() != null) {
                ArrayList<HashMap<String, String>> querySQLite3 = dBManager.querySQLite("select * from content1 by id desc limit 1 where uuid = '" + YoFiSdkImp.instance().getUuid() + "'", null);
                if (querySQLite3.size() > 0) {
                    HashMap<String, String> hashMap = querySQLite3.get(0);
                    long parseLong = Long.parseLong(hashMap.get(BreakpointSQLiteKey.ID));
                    int parseInt = Integer.parseInt(hashMap.get("flag"));
                    Content content2 = new Content(parseLong);
                    content = content2;
                    content2.setFlag(parseInt);
                }
            }
            if (YoFiSdkImp.instance().getUuid() != null) {
                ArrayList<HashMap<String, String>> querySQLite4 = dBManager.querySQLite("select max(msg_id) as max_id from message1 where uuid = '" + YoFiSdkImp.instance().getUuid() + "'", null);
                if (querySQLite4.size() > 0) {
                    String str3 = querySQLite4.get(0).get("max_id");
                    if (!"".equals(str3)) {
                        MAX_MSG_ID = Long.parseLong(str3);
                    }
                }
            }
            if (YoFiSdkImp.instance().getUuid() != null) {
                ArrayList<HashMap<String, String>> querySQLite5 = dBManager.querySQLite("select max(msg_id) as max_id from chat1 where uuid = '" + YoFiSdkImp.instance().getUuid() + "'", null);
                if (querySQLite5.size() > 0) {
                    String str4 = querySQLite5.get(0).get("max_id");
                    if (!"".equals(str4)) {
                        MAX_MSG_ID = Long.parseLong(str4);
                    }
                }
            }
        } catch (Exception unused) {
        }
        dBManager.close();
    }

    public static void insert(Context context, Object[] data) {
        Log.i("TAG:", "插入数据到数据库表：message:" + data.toString());
        DBManager dBManager = new DBManager(context);
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getWritableDatabase();
        dBManager.updateSQLite("insert into message1 (id, uuid, content_id, content,  data, path, type, msg_type, sender_id, receiver_id, create_time, flag, msg_id, uploaded) values (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", data);
    }

    public static void insertChat(Context context, Object[] data) {
        Log.i("TAG:", "插入数据到数据库表：chat1:" + data.toString());
        DBManager dBManager = new DBManager(context);
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getWritableDatabase();
        dBManager.updateSQLite("insert into chat1 (id, uuid, content_id, content,  data, path, type, msg_type, sender_id, receiver_id, create_time, flag, msg_id, uploaded,imgUrl) values (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)", data);
    }

    public static boolean deleteChat(Context context, Object[] data) {
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getReadableDatabase();
        return new DBManager(context).updateSQLite("delete from chat1 where id=?", data);
    }

    public static ArrayList<Message> query(Context context, String uuid) {
        DBManager dBManager = new DBManager(context);
        ArrayList<Message> queryAll = dBManager.queryAll("select * from message1 where uuid = '" + uuid + "'", null);
        dBManager.close();
        return queryAll;
    }

    public static ArrayList<Message> queryChat(Context context, String uuid) {
        DBManager dBManager = new DBManager(context);
        ArrayList<Message> queryAllChat = dBManager.queryAllChat("select * from chat1 where uuid = '" + uuid + "'", null);
        dBManager.close();
        return queryAllChat;
    }

    public static ArrayList<Message> queryChatPage(Context context, String uuid, int start, int length) {
        DBManager dBManager = new DBManager(context);
        ArrayList<Message> queryAllChat = dBManager.queryAllChat("select * from chat1 where uuid = '" + uuid + "'order by id desc limit " + start + "," + length, null);
        dBManager.close();
        return queryAllChat;
    }

    public static long getReceiveId(Context context, String uuid) {
        ArrayList<Message> queryAllChat = new DBManager(context).queryAllChat("select * from chat1 where uuid = '" + uuid + "' and type = 1 order by id desc limit 1", null);
        if (queryAllChat.size() == 0) {
            return 0L;
        }
        Message message = queryAllChat.get(0);
        if (message.getMsgType() == Constants.MESSAGE_CONTENT_TYPE.END.getValue()) {
            return 0L;
        }
        return message.getReceiverId();
    }

    public static void update(Context context, Object[] data) {
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getReadableDatabase();
        new DBManager(context).updateSQLite("update message1 set content_id=?, flag=?, uploaded=? where id=?", data);
    }

    public static void updateCreateTime(Context context, Object[] data) {
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getReadableDatabase();
        new DBManager(context).updateSQLite("update message1 set create_time=? where id=?", data);
    }

    public static void getMaxMsgId(Context context) {
        MAX_MSG_ID = 0L;
        ArrayList<HashMap<String, String>> querySQLite = new DBManager(context).querySQLite("select max(msg_id) as max_id from message1 where uuid = '" + YoFiSdkImp.instance().getUuid() + "'", null);
        if (querySQLite.size() > 0) {
            String str = querySQLite.get(0).get("max_id");
            if ("".equals(str)) {
                return;
            }
            MAX_MSG_ID = Long.parseLong(str);
        }
    }

    public static void insertContent(Context context, Object[] data) {
        Log.i("TAG:", "插入数据到数据库表：content:" + data.toString());
        DBManager dBManager = new DBManager(context);
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getWritableDatabase();
        dBManager.updateSQLite("insert into content1 (id, flag, uuid) values (?, ?, ?)", data);
    }

    public static void updateContent(Context context, Object[] data) {
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getReadableDatabase();
        new DBManager(context).updateSQLite("update content1 set flag=? where id=?", data);
    }

    public static Boolean insertOrder(Context context, Object[] data) {
        Log.i("TAG:", "插入数据到数据库表：order_info:" + data.toString());
        DBManager dBManager = new DBManager(context);
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getWritableDatabase();
        return Boolean.valueOf(dBManager.updateSQLite("insert into order_info (order_id, sku, pay_type, cp_order_id) values (?, ?, ?, ?)", data));
    }

    public static boolean deleteOrder(Context context, Object[] data) {
        DBHelper dBHelper = new DBHelper(context);
        helper = dBHelper;
        dBHelper.getReadableDatabase();
        return new DBManager(context).updateSQLite("delete from order_info where order_id=?", data);
    }

    public static long getMessageId() {
        long j = MESSAGE_ID + 1;
        MESSAGE_ID = j;
        return j;
    }

    public static long getContentId(Context context) {
        try {
            ArrayList<HashMap<String, String>> querySQLite = new DBManager(context).querySQLite("select max(id) as max_id from content1 where uuid = '" + YoFiSdkImp.instance().getUuid() + "'", null);
            if (querySQLite.size() <= 0) {
                return 0L;
            }
            String str = querySQLite.get(0).get("max_id");
            if ("".equals(str)) {
                return 0L;
            }
            return Long.parseLong(str);
        } catch (Exception unused) {
            return 0L;
        }
    }
}
