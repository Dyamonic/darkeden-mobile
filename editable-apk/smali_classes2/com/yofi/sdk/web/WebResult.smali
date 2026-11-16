.class public final enum Lcom/yofi/sdk/web/WebResult;
.super Ljava/lang/Enum;
.source "WebResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yofi/sdk/web/WebResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yofi/sdk/web/WebResult;

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final enum FALSE:Lcom/yofi/sdk/web/WebResult;

.field public static final enum IDENTIFY_ERROR_401:Lcom/yofi/sdk/web/WebResult;

.field public static final enum LOGIN_ERROR_903:Lcom/yofi/sdk/web/WebResult;

.field public static final enum LOGIN_ERROR_904:Lcom/yofi/sdk/web/WebResult;

.field public static final enum LOGIN_ERROR_909:Lcom/yofi/sdk/web/WebResult;

.field public static final enum METHOD_ACCESS_ERROR:Lcom/yofi/sdk/web/WebResult;

.field public static final enum METHOD_INVOKE_ERROR:Lcom/yofi/sdk/web/WebResult;

.field public static final enum METHOD_NOT_FOUND:Lcom/yofi/sdk/web/WebResult;

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final enum NETWORK_NOT_ALLOWED:Lcom/yofi/sdk/web/WebResult;

.field public static final enum NO_RESULT:Lcom/yofi/sdk/web/WebResult;

.field public static final enum OK:Lcom/yofi/sdk/web/WebResult;

.field public static final enum OPERATION_TOO_FREQUENTLY:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_900:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_901:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_902:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_905:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_906:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_907:Lcom/yofi/sdk/web/WebResult;

.field public static final enum ORDER_ERROR_908:Lcom/yofi/sdk/web/WebResult;

.field public static final enum PARAM_ERROR:Lcom/yofi/sdk/web/WebResult;

.field public static final enum TOKEN_ERROR_111:Lcom/yofi/sdk/web/WebResult;

.field public static final enum UNKNOWN_ERROR:Lcom/yofi/sdk/web/WebResult;


# instance fields
.field public final code:I

.field public final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 7
    new-instance v0, Lcom/yofi/sdk/web/WebResult;

    const-string v1, "NETWORK_NOT_ALLOWED"

    const/4 v2, 0x0

    const v3, 0xfc18

    const-string v4, "\u7f51\u7edc\u8fde\u63a5\u88ab\u7981\u6b62"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yofi/sdk/web/WebResult;->NETWORK_NOT_ALLOWED:Lcom/yofi/sdk/web/WebResult;

    .line 8
    new-instance v1, Lcom/yofi/sdk/web/WebResult;

    const-string v3, "OPERATION_TOO_FREQUENTLY"

    const/4 v4, 0x1

    const/4 v5, -0x7

    const-string v6, "\u64cd\u4f5c\u8fc7\u4e8e\u9891\u7e41"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yofi/sdk/web/WebResult;->OPERATION_TOO_FREQUENTLY:Lcom/yofi/sdk/web/WebResult;

    .line 9
    new-instance v3, Lcom/yofi/sdk/web/WebResult;

    const-string v5, "PARAM_ERROR"

    const/4 v6, 0x2

    const/4 v7, -0x6

    const-string v8, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/yofi/sdk/web/WebResult;->PARAM_ERROR:Lcom/yofi/sdk/web/WebResult;

    .line 10
    new-instance v5, Lcom/yofi/sdk/web/WebResult;

    const-string v7, "METHOD_INVOKE_ERROR"

    const/4 v8, 0x3

    const/4 v9, -0x5

    const-string v10, "Method Invoke Error"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/yofi/sdk/web/WebResult;->METHOD_INVOKE_ERROR:Lcom/yofi/sdk/web/WebResult;

    .line 11
    new-instance v7, Lcom/yofi/sdk/web/WebResult;

    const-string v9, "METHOD_ACCESS_ERROR"

    const/4 v10, 0x4

    const/4 v11, -0x4

    const-string v12, "Method Access Error"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/yofi/sdk/web/WebResult;->METHOD_ACCESS_ERROR:Lcom/yofi/sdk/web/WebResult;

    .line 12
    new-instance v9, Lcom/yofi/sdk/web/WebResult;

    const-string v11, "METHOD_NOT_FOUND"

    const/4 v12, 0x5

    const/4 v13, -0x3

    const-string v14, "No such Method"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/yofi/sdk/web/WebResult;->METHOD_NOT_FOUND:Lcom/yofi/sdk/web/WebResult;

    .line 13
    new-instance v11, Lcom/yofi/sdk/web/WebResult;

    const-string v13, "NO_RESULT"

    const/4 v14, 0x6

    const/4 v15, -0x2

    const-string v12, "No Result"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/yofi/sdk/web/WebResult;->NO_RESULT:Lcom/yofi/sdk/web/WebResult;

    .line 14
    new-instance v12, Lcom/yofi/sdk/web/WebResult;

    const-string v13, "UNKNOWN_ERROR"

    const/4 v15, 0x7

    const/4 v14, -0x1

    const-string v10, "Unknown Error"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/yofi/sdk/web/WebResult;->UNKNOWN_ERROR:Lcom/yofi/sdk/web/WebResult;

    .line 15
    new-instance v10, Lcom/yofi/sdk/web/WebResult;

    const-string v13, "FALSE"

    const/16 v14, 0x8

    const-string v15, "False"

    invoke-direct {v10, v13, v14, v2, v15}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/yofi/sdk/web/WebResult;->FALSE:Lcom/yofi/sdk/web/WebResult;

    .line 16
    new-instance v13, Lcom/yofi/sdk/web/WebResult;

    const-string v15, "OK"

    const/16 v14, 0x9

    const-string v8, "Ok"

    invoke-direct {v13, v15, v14, v4, v8}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/yofi/sdk/web/WebResult;->OK:Lcom/yofi/sdk/web/WebResult;

    .line 17
    new-instance v8, Lcom/yofi/sdk/web/WebResult;

    const-string v15, "IDENTIFY_ERROR_401"

    const/16 v14, 0xa

    const/16 v6, 0x191

    const-string v4, "param error"

    invoke-direct {v8, v15, v14, v6, v4}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/yofi/sdk/web/WebResult;->IDENTIFY_ERROR_401:Lcom/yofi/sdk/web/WebResult;

    .line 18
    new-instance v4, Lcom/yofi/sdk/web/WebResult;

    const-string v6, "ORDER_ERROR_900"

    const/16 v15, 0xb

    const/16 v14, 0x384

    const-string v2, "age under 18, invalid order"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_900:Lcom/yofi/sdk/web/WebResult;

    .line 19
    new-instance v6, Lcom/yofi/sdk/web/WebResult;

    const-string v14, "ORDER_ERROR_901"

    const/16 v15, 0xc

    move-object/from16 v16, v4

    const/16 v4, 0x385

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_901:Lcom/yofi/sdk/web/WebResult;

    .line 20
    new-instance v4, Lcom/yofi/sdk/web/WebResult;

    const-string v14, "ORDER_ERROR_902"

    const/16 v15, 0xd

    move-object/from16 v17, v6

    const/16 v6, 0x386

    invoke-direct {v4, v14, v15, v6, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_902:Lcom/yofi/sdk/web/WebResult;

    .line 21
    new-instance v6, Lcom/yofi/sdk/web/WebResult;

    const-string v14, "LOGIN_ERROR_903"

    const/16 v15, 0xe

    move-object/from16 v18, v4

    const/16 v4, 0x387

    move-object/from16 v19, v8

    const-string v8, "age under 18, login time limit"

    invoke-direct {v6, v14, v15, v4, v8}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/yofi/sdk/web/WebResult;->LOGIN_ERROR_903:Lcom/yofi/sdk/web/WebResult;

    .line 22
    new-instance v4, Lcom/yofi/sdk/web/WebResult;

    const-string v8, "LOGIN_ERROR_904"

    const/16 v14, 0xf

    const/16 v15, 0x388

    move-object/from16 v20, v6

    const-string v6, "age under 8, can\'t login"

    invoke-direct {v4, v8, v14, v15, v6}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/yofi/sdk/web/WebResult;->LOGIN_ERROR_904:Lcom/yofi/sdk/web/WebResult;

    .line 23
    new-instance v6, Lcom/yofi/sdk/web/WebResult;

    const-string v8, "LOGIN_ERROR_909"

    const/16 v15, 0x10

    const/16 v14, 0x38d

    move-object/from16 v21, v4

    const-string v4, ""

    invoke-direct {v6, v8, v15, v14, v4}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/yofi/sdk/web/WebResult;->LOGIN_ERROR_909:Lcom/yofi/sdk/web/WebResult;

    .line 24
    new-instance v4, Lcom/yofi/sdk/web/WebResult;

    const-string v8, "ORDER_ERROR_905"

    const/16 v14, 0x11

    const/16 v15, 0x389

    invoke-direct {v4, v8, v14, v15, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_905:Lcom/yofi/sdk/web/WebResult;

    .line 25
    new-instance v8, Lcom/yofi/sdk/web/WebResult;

    const-string v15, "ORDER_ERROR_906"

    const/16 v14, 0x12

    move-object/from16 v22, v4

    const/16 v4, 0x38a

    invoke-direct {v8, v15, v14, v4, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_906:Lcom/yofi/sdk/web/WebResult;

    .line 26
    new-instance v4, Lcom/yofi/sdk/web/WebResult;

    const-string v15, "ORDER_ERROR_907"

    const/16 v14, 0x13

    move-object/from16 v23, v8

    const/16 v8, 0x38b

    invoke-direct {v4, v15, v14, v8, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_907:Lcom/yofi/sdk/web/WebResult;

    .line 27
    new-instance v8, Lcom/yofi/sdk/web/WebResult;

    const-string v15, "ORDER_ERROR_908"

    const/16 v14, 0x14

    move-object/from16 v24, v4

    const/16 v4, 0x38c

    invoke-direct {v8, v15, v14, v4, v2}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/yofi/sdk/web/WebResult;->ORDER_ERROR_908:Lcom/yofi/sdk/web/WebResult;

    .line 29
    new-instance v2, Lcom/yofi/sdk/web/WebResult;

    const-string v4, "TOKEN_ERROR_111"

    const/16 v15, 0x15

    const/16 v14, 0x6f

    move-object/from16 v25, v8

    const-string v8, "\u767b\u5f55\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v2, v4, v15, v14, v8}, Lcom/yofi/sdk/web/WebResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/yofi/sdk/web/WebResult;->TOKEN_ERROR_111:Lcom/yofi/sdk/web/WebResult;

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/yofi/sdk/web/WebResult;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v13, v4, v0

    const/16 v0, 0xa

    aput-object v19, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v20, v4, v0

    const/16 v0, 0xf

    aput-object v21, v4, v0

    const/16 v0, 0x10

    aput-object v6, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v2, v4, v0

    .line 6
    sput-object v4, Lcom/yofi/sdk/web/WebResult;->$VALUES:[Lcom/yofi/sdk/web/WebResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "code",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/yofi/sdk/web/WebResult;->code:I

    .line 40
    iput-object p4, p0, Lcom/yofi/sdk/web/WebResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public static build(Lcom/yofi/sdk/web/WebResult;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gr",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yofi/sdk/web/WebResult;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/web/WebResult;->makeResult(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/yofi/sdk/web/WebResult;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gr",
            "data",
            "newMsg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yofi/sdk/web/WebResult;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/yofi/sdk/web/WebResult;->makeResult(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static findResult(I)Lcom/yofi/sdk/web/WebResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/yofi/sdk/web/WebResult;->values()[Lcom/yofi/sdk/web/WebResult;

    move-result-object v0

    .line 114
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 116
    aget-object v3, v0, v2

    .line 117
    iget v4, v3, Lcom/yofi/sdk/web/WebResult;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    sget-object p0, Lcom/yofi/sdk/web/WebResult;->UNKNOWN_ERROR:Lcom/yofi/sdk/web/WebResult;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yofi/sdk/web/WebResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/yofi/sdk/web/WebResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yofi/sdk/web/WebResult;

    return-object p0
.end method

.method public static values()[Lcom/yofi/sdk/web/WebResult;
    .locals 1

    .line 6
    sget-object v0, Lcom/yofi/sdk/web/WebResult;->$VALUES:[Lcom/yofi/sdk/web/WebResult;

    invoke-virtual {v0}, [Lcom/yofi/sdk/web/WebResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yofi/sdk/web/WebResult;

    return-object v0
.end method


# virtual methods
.method public equal(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/yofi/sdk/web/WebResult;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 47
    iget v1, p0, Lcom/yofi/sdk/web/WebResult;->code:I

    check-cast p1, Lcom/yofi/sdk/web/WebResult;

    iget p1, p1, Lcom/yofi/sdk/web/WebResult;->code:I

    if-ne v1, p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 48
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 49
    iget v1, p0, Lcom/yofi/sdk/web/WebResult;->code:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 50
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 51
    iget v1, p0, Lcom/yofi/sdk/web/WebResult;->code:I

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method public makeResult(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/yofi/sdk/web/WebResult;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "data"

    .line 92
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public makeResult(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "newMsg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p2}, Lcom/yofi/sdk/web/WebResult;->toJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :try_start_0
    const-string v0, "data"

    .line 103
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p2
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    invoke-virtual {p0, v0}, Lcom/yofi/sdk/web/WebResult;->toJson(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMsg"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/yofi/sdk/web/WebResult;->toJson(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJson(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    :try_start_0
    const-string v0, "code"

    .line 57
    iget v1, p0, Lcom/yofi/sdk/web/WebResult;->code:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "msg"

    .line 58
    iget-object v1, p0, Lcom/yofi/sdk/web/WebResult;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object p1
.end method

.method public toJson(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "newMsg"
        }
    .end annotation

    :try_start_0
    const-string v0, "code"

    .line 74
    iget v1, p0, Lcom/yofi/sdk/web/WebResult;->code:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "msg"

    .line 75
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 78
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    return-object p1
.end method
