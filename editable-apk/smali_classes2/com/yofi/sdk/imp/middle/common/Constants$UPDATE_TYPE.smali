.class public final enum Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UPDATE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

.field public static final enum NONE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

.field public static final enum NOTPOSSIBLE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

.field public static final enum POSSIBLE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 221
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->NONE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    new-instance v1, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    const-string v3, "NOTPOSSIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->NOTPOSSIBLE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    new-instance v3, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    const-string v5, "POSSIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->POSSIBLE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 220
    sput-object v5, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->$VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

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

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 226
    iput p3, p0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 220
    const-class v0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;
    .locals 1

    .line 220
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->$VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    invoke-virtual {v0}, [Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->value:I

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

    .line 234
    iput p1, p0, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->value:I

    return-void
.end method
