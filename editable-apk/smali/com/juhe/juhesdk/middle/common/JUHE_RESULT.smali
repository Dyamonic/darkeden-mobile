.class public final enum Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;
.super Ljava/lang/Enum;
.source "JUHE_RESULT.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum BAIDU_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum BILI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum CHANGMENG_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum G4399_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum GP_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum HEISHA_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum HUAWEI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum INIT_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum JINLI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum JSON_EXCEPTION:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum LD_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum MUMU_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum NOX_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum NUBIA_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum OK:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum OPPO_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum PAY_CANCEL:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum QIDIAN_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum QIMENG_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum SERVER_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum SERVER_ERROR_CODE_903:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum SIPU_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum UC_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum UMARKSDK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum UMARK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum XIAOMI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum XIAOQI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum YEHUA_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum YOFI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum YOUXIFAN_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

.field public static final enum ZIJIE_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;


# instance fields
.field public final code:I

.field public final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 4
    new-instance v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v1, "OK"

    const/4 v2, 0x0

    const-string v3, "OK"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->OK:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 5
    new-instance v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v3, "SERVER_ERROR"

    const/4 v4, 0x1

    const-string v5, "\u6e38\u6590\u670d\u52a1\u5668\u62a5\u9519"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->SERVER_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 6
    new-instance v3, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v5, "JSON_EXCEPTION"

    const/4 v6, 0x2

    const-string v7, "json\u89e3\u6790\u9519\u8bef"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->JSON_EXCEPTION:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 7
    new-instance v5, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v7, "NETWORK_ERROR"

    const/4 v8, 0x3

    const-string v9, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 8
    new-instance v7, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v9, "HUAWEI_ERROR"

    const/4 v10, 0x4

    const-string v11, "\u534e\u4e3a\u8fd4\u56de\u7684\u9519\u8bef\u7801:"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->HUAWEI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 9
    new-instance v9, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v11, "OPPO_ERROR"

    const/4 v12, 0x5

    const-string v13, "OPPO\u8fd4\u56de\u7684\u9519\u8bef\u7801:"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->OPPO_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 10
    new-instance v11, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v13, "INIT_ERROR"

    const/4 v14, 0x6

    const-string v15, "sdk\u672a\u521d\u59cb\u5316"

    invoke-direct {v11, v13, v14, v14, v15}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->INIT_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 11
    new-instance v13, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "PAY_CANCEL"

    const/4 v14, 0x7

    const-string v12, "\u53d6\u6d88\u4e86\u652f\u4ed8"

    invoke-direct {v13, v15, v14, v14, v12}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->PAY_CANCEL:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 12
    new-instance v12, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "XIAOMI_ERROR"

    const/16 v14, 0x8

    const-string v10, "\u5c0f\u7c73\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v12, v15, v14, v14, v10}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->XIAOMI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 13
    new-instance v10, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "UC_ERROR"

    const/16 v14, 0x9

    const-string v8, "UC\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v10, v15, v14, v14, v8}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->UC_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 14
    new-instance v8, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "BILI_ERROR"

    const/16 v14, 0xa

    const-string v6, "B\u7ad9\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v8, v15, v14, v14, v6}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->BILI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 15
    new-instance v6, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "JINLI_ERROR"

    const/16 v14, 0xb

    const-string v4, "\u91d1\u7acb\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v6, v15, v14, v14, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->JINLI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 16
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "BAIDU_ERROR"

    const/16 v14, 0xc

    const-string v2, "\u767e\u5ea6\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->BAIDU_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 17
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "YOFI_ERROR"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "\u6e38\u6590\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v15, v14, v14, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->YOFI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 18
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "G4399_ERROR"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "4399\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->G4399_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 19
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "HEISHA_ERROR"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "\u9ed1\u9ca8\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v15, v14, v14, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->HEISHA_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 20
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "NUBIA_ERROR"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "\u52aa\u6bd4\u4e9a\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NUBIA_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 21
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "MUMU_ERROR"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "mumu\u4e9a\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v15, v14, v14, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->MUMU_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 22
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "NOX_ERROR"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "\u591c\u795e\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NOX_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 23
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "GP_ERROR"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "\u679c\u76d8\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v15, v14, v14, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->GP_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 24
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "LD_ERROR"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "\u96f7\u7535\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v15, v14, v14, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->LD_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 25
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v15, "ZIJIE_ERROR"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x6f

    move-object/from16 v25, v6

    const-string v6, "\u5b57\u8282\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v15, v14, v4, v6}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->ZIJIE_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 26
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "YOUXIFAN_ERROR"

    const/16 v15, 0x16

    move-object/from16 v26, v2

    const-string v2, "\u6e38\u620fFan\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->YOUXIFAN_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 27
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "UMARK_ERROR"

    const/16 v15, 0x17

    const/16 v14, 0x16

    move-object/from16 v27, v4

    const-string v4, "\u6e38\u7801\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v6, v15, v14, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->UMARK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 28
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "QIDIAN_ERROR"

    const/16 v14, 0x18

    move-object/from16 v28, v2

    const-string v2, "\u7948\u70b9\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->QIDIAN_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 29
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "XIAOQI_ERROR"

    const/16 v14, 0x19

    const/16 v15, 0x18

    move-object/from16 v29, v4

    const-string v4, "\u5c0f7\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->XIAOQI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 30
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "UMARKSDK_ERROR"

    const/16 v14, 0x1a

    const/16 v15, 0x19

    move-object/from16 v30, v2

    const-string v2, "\u6e38\u7801SDK\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->UMARKSDK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 31
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "YEHUA_ERROR"

    const/16 v14, 0x1b

    const/16 v15, 0x1a

    move-object/from16 v31, v4

    const-string v4, "\u591c\u753b\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->YEHUA_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 32
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "SIPU_ERROR"

    const/16 v14, 0x1c

    const/16 v15, 0x22

    move-object/from16 v32, v2

    const-string v2, "\u601d\u749e\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->SIPU_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 33
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "CHANGMENG_ERROR"

    const/16 v14, 0x1d

    const/16 v15, 0x24

    move-object/from16 v33, v4

    const-string v4, "\u601d\u749e\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->CHANGMENG_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 34
    new-instance v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "QIMENG_ERROR"

    const/16 v14, 0x1e

    const/16 v15, 0x25

    move-object/from16 v34, v2

    const-string v2, "\u7948\u76df\u8fd4\u56de\u7684\u9519\u8bef\u7801"

    invoke-direct {v4, v6, v14, v15, v2}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->QIMENG_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    .line 35
    new-instance v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const-string v6, "SERVER_ERROR_CODE_903"

    const/16 v14, 0x1f

    const/16 v15, 0x387

    move-object/from16 v35, v4

    const-string v4, "\u6bcf\u65e522\u70b900\u5206\u81f3\u6b21\u65e58\u70b900\u5206\u4e0d\u80fd\u767b\u5f55\u6e38\u620f"

    invoke-direct {v2, v6, v14, v15, v4}, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->SERVER_ERROR_CODE_903:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    const/4 v6, 0x0

    aput-object v0, v4, v6

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

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v25, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v29, v4, v0

    const/16 v0, 0x19

    aput-object v30, v4, v0

    const/16 v0, 0x1a

    aput-object v31, v4, v0

    const/16 v0, 0x1b

    aput-object v32, v4, v0

    const/16 v0, 0x1c

    aput-object v33, v4, v0

    const/16 v0, 0x1d

    aput-object v34, v4, v0

    const/16 v0, 0x1e

    aput-object v35, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    .line 3
    sput-object v4, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->$VALUES:[Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    .line 42
    iput-object p4, p0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    return-object p0
.end method

.method public static values()[Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;
    .locals 1

    .line 3
    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->$VALUES:[Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    invoke-virtual {v0}, [Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    return-object v0
.end method
