.class public final enum Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;
.super Ljava/lang/Enum;
.source "TapUpdateDialogState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "API_ERROR",
        "CONFIRM",
        "DOWNLOAD",
        "INSTALL",
        "UPDATE",
        "tap-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field public static final enum API_ERROR:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field public static final enum CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field public static final enum DOWNLOAD:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field public static final enum INSTALL:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field public static final enum NONE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field public static final enum UPDATE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;


# direct methods
.method private static final synthetic $values()[Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->NONE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->API_ERROR:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->DOWNLOAD:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->INSTALL:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->UPDATE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->NONE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 5
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const-string v1, "API_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->API_ERROR:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 6
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const-string v1, "CONFIRM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 7
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->DOWNLOAD:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 8
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const-string v1, "INSTALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->INSTALL:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 9
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const-string v1, "UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->UPDATE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    invoke-static {}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->$values()[Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->$VALUES:[Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;
    .locals 1

    const-class v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;
    .locals 1

    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->$VALUES:[Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    return-object v0
.end method
