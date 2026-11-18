.class public final enum Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

.field public static final enum PRIVATE:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

.field public static final enum USER:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

.field public static final enum YOFI:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

.field public static final enum fcmPolicy:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 131
    new-instance v0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->USER:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    new-instance v1, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->PRIVATE:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    new-instance v3, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    const-string v5, "YOFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->YOFI:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    new-instance v5, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    const-string v7, "fcmPolicy"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->fcmPolicy:Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 130
    sput-object v7, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->$VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

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

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput p3, p0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 130
    const-class v0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;
    .locals 1

    .line 130
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->$VALUES:[Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    invoke-virtual {v0}, [Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->value:I

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

    .line 144
    iput p1, p0, Lcom/yofi/sdk/imp/middle/common/Constants$PROFILE_TYPE;->value:I

    return-void
.end method
