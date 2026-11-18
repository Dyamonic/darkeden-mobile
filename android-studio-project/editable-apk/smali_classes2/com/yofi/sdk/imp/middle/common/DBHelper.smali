.class public Lcom/yofi/sdk/imp/middle/common/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "chat.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "chat.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public createMessage(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sqLiteDatabase"
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS message1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER)"

    .line 39
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sqLiteDatabase"
        }
    .end annotation

    const-string v0, "TAG:"

    const-string v1, "\u521b\u5efamessage\u6570\u636e\u5e93\u8868\uff01"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS chat1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER, imgUrl TEXT)"

    .line 24
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS message1(id INTEGER PRIMARY KEY,uuid TEXT, content_id INTEGER, content TEXT, data BLOB, path TEXT, type INTEGER, msg_type INTEGER, sender_id INTEGER, receiver_id INTEGER, create_time INTEGER, flag INTEGER, msg_id INTEGER, uploaded INTEGER)"

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS content1(id INTEGER PRIMARY KEY,uuid TEXT, flag INTEGER)"

    .line 32
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS order_info(order_id TEXT PRIMARY KEY, sku TEXT, pay_type TEXT, cp_order_id TEXT)"

    .line 35
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sqLiteDatabase"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sqLiteDatabase",
            "oldVersion",
            "newVersion"
        }
    .end annotation

    return-void
.end method
