.class public final enum Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOGIN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

.field public static final enum PHONE:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

.field public static final enum QQ:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

.field public static final enum TAPTAP:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

.field public static final enum TOURIST:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

.field public static final enum WECHAT:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

.field public static final enum WEIBO:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 113
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const-string v1, "TOURIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->TOURIST:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    new-instance v1, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const-string v3, "PHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->PHONE:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    new-instance v3, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const-string v5, "WECHAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->WECHAT:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    new-instance v5, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const-string v7, "QQ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->QQ:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    new-instance v7, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const-string v9, "WEIBO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->WEIBO:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    new-instance v9, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const-string v11, "TAPTAP"

    const/4 v12, 0x5

    const/4 v13, 0x7

    invoke-direct {v9, v11, v12, v13}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->TAPTAP:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 112
    sput-object v11, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->$VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 112
    const-class v0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;
    .locals 1

    .line 112
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->$VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    invoke-virtual {v0}, [Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 126
    iput p1, p0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->value:I

    return-void
.end method
