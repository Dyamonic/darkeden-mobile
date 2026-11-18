.class public Lcom/yofi/sdk/imp/middle/common/SQLFunction;
.super Ljava/lang/Object;
.source "SQLFunction.java"


# static fields
.field public static MAX_MSG_ID:J

.field public static MESSAGE_ID:J

.field public static content:Lcom/yofi/sdk/imp/middle/data/Content;

.field static helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteChat(Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 133
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    const-string p0, "delete from chat1 where id=?"

    .line 136
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static deleteOrder(Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 268
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 269
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    const-string p0, "delete from order_info where order_id=?"

    .line 271
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getContentId(Landroid/content/Context;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select max(id) as max_id from content1 where uuid = \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 284
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "max_id"

    .line 287
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, ""

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v0

    :catch_0
    :cond_0
    return-wide v2
.end method

.method public static getMaxMsgId(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 209
    sput-wide v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MAX_MSG_ID:J

    .line 210
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select max(msg_id) as max_id from message1 where uuid = \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0, p0, v1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "max_id"

    .line 215
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, ""

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MAX_MSG_ID:J

    :cond_0
    return-void
.end method

.method public static getMessageId()J
    .locals 4

    .line 276
    sget-wide v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MESSAGE_ID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MESSAGE_ID:J

    return-wide v0
.end method

.method public static getReceiveId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uuid"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from chat1 where uuid = \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and type = 1 order by id desc limit 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 177
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->queryAllChat(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yofi/sdk/imp/middle/data/Message;

    .line 182
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result p1

    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->END:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-wide v0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide p0

    return-wide p0
.end method

.method public static initTable(Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 24
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->createMessage()V

    const-string p0, "select max(id) as max_id from message1"

    const-string v1, "select max(id) as max_id from chat1"

    const/4 v2, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v0, p0, v2}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const-string v5, "max_id"

    const/4 v6, 0x0

    if-lez v3, :cond_0

    .line 35
    :try_start_1
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 36
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 37
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MESSAGE_ID:J

    .line 41
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 43
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 45
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MESSAGE_ID:J

    .line 50
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "\'"

    if-eqz p0, :cond_2

    .line 51
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from content1 by id desc limit 1 where uuid = \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {v0, p0, v2}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 54
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v3, "id"

    .line 55
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v3, "flag"

    .line 56
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 57
    new-instance v3, Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-direct {v3, v7, v8}, Lcom/yofi/sdk/imp/middle/data/Content;-><init>(J)V

    sput-object v3, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    .line 58
    invoke-virtual {v3, p0}, Lcom/yofi/sdk/imp/middle/data/Content;->setFlag(I)V

    .line 62
    :cond_2
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select max(msg_id) as max_id from message1 where uuid = \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {v0, p0, v2}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 66
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 67
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 69
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MAX_MSG_ID:J

    .line 74
    :cond_3
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select max(msg_id) as max_id from chat1 where uuid = \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-virtual {v0, p0, v2}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->querySQLite(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 78
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 79
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 80
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 81
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->MAX_MSG_ID:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :catch_0
    :cond_4
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->close()V

    return-void
.end method

.method public static insert(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5165\u6570\u636e\u5230\u6570\u636e\u5e93\u8868\uff1amessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 106
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string p0, "insert into message1 (id, uuid, content_id, content,  data, path, type, msg_type, sender_id, receiver_id, create_time, flag, msg_id, uploaded) values (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 110
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static insertChat(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5165\u6570\u636e\u5230\u6570\u636e\u5e93\u8868\uff1achat1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v1, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 122
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string p0, "insert into chat1 (id, uuid, content_id, content,  data, path, type, msg_type, sender_id, receiver_id, create_time, flag, msg_id, uploaded,imgUrl) values (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)"

    .line 126
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static insertContent(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5165\u6570\u636e\u5230\u6570\u636e\u5e93\u8868\uff1acontent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v1, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 230
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string p0, "insert into content1 (id, flag, uuid) values (?, ?, ?)"

    .line 234
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static insertOrder(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5165\u6570\u636e\u5230\u6570\u636e\u5e93\u8868\uff1aorder_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v1, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 255
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string p0, "insert into order_info (order_id, sku, pay_type, cp_order_id) values (?, ?, ?, ?)"

    .line 259
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    .line 260
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static query(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uuid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from message1 where uuid = \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 146
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->queryAll(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 147
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->close()V

    return-object p0
.end method

.method public static queryChat(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uuid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from chat1 where uuid = \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 157
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->queryAllChat(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 158
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->close()V

    return-object p0
.end method

.method public static queryChatPage(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uuid",
            "start",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from chat1 where uuid = \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'order by id desc limit "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 169
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->queryAllChat(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 170
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->close()V

    return-object p0
.end method

.method public static update(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 194
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 195
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    const-string p0, "update message1 set content_id=?, flag=?, uploaded=? where id=?"

    .line 197
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static updateContent(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 242
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 243
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    const-string p0, "update content1 set flag=? where id=?"

    .line 245
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static updateCreateTime(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/DBHelper;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->helper:Lcom/yofi/sdk/imp/middle/common/DBHelper;

    .line 202
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 203
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/DBManager;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/manager/DBManager;-><init>(Landroid/content/Context;)V

    const-string p0, "update message1 set create_time=? where id=?"

    .line 205
    invoke-virtual {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/manager/DBManager;->updateSQLite(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
