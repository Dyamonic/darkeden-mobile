.class public final enum Lcom/taptap/sdk/update/download/StatusUtil$Status;
.super Ljava/lang/Enum;
.source "StatusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/StatusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/update/download/StatusUtil$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/update/download/StatusUtil$Status;

.field public static final enum COMPLETED:Lcom/taptap/sdk/update/download/StatusUtil$Status;

.field public static final enum IDLE:Lcom/taptap/sdk/update/download/StatusUtil$Status;

.field public static final enum PENDING:Lcom/taptap/sdk/update/download/StatusUtil$Status;

.field public static final enum RUNNING:Lcom/taptap/sdk/update/download/StatusUtil$Status;

.field public static final enum UNKNOWN:Lcom/taptap/sdk/update/download/StatusUtil$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 120
    new-instance v0, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/download/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/update/download/StatusUtil$Status;->PENDING:Lcom/taptap/sdk/update/download/StatusUtil$Status;

    .line 121
    new-instance v1, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taptap/sdk/update/download/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taptap/sdk/update/download/StatusUtil$Status;->RUNNING:Lcom/taptap/sdk/update/download/StatusUtil$Status;

    .line 122
    new-instance v3, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    const-string v5, "COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taptap/sdk/update/download/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taptap/sdk/update/download/StatusUtil$Status;->COMPLETED:Lcom/taptap/sdk/update/download/StatusUtil$Status;

    .line 123
    new-instance v5, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    const-string v7, "IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taptap/sdk/update/download/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taptap/sdk/update/download/StatusUtil$Status;->IDLE:Lcom/taptap/sdk/update/download/StatusUtil$Status;

    .line 125
    new-instance v7, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/taptap/sdk/update/download/StatusUtil$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/taptap/sdk/update/download/StatusUtil$Status;->UNKNOWN:Lcom/taptap/sdk/update/download/StatusUtil$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taptap/sdk/update/download/StatusUtil$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 119
    sput-object v9, Lcom/taptap/sdk/update/download/StatusUtil$Status;->$VALUES:[Lcom/taptap/sdk/update/download/StatusUtil$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/update/download/StatusUtil$Status;
    .locals 1

    .line 119
    const-class v0, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/update/download/StatusUtil$Status;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/update/download/StatusUtil$Status;
    .locals 1

    .line 119
    sget-object v0, Lcom/taptap/sdk/update/download/StatusUtil$Status;->$VALUES:[Lcom/taptap/sdk/update/download/StatusUtil$Status;

    invoke-virtual {v0}, [Lcom/taptap/sdk/update/download/StatusUtil$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/update/download/StatusUtil$Status;

    return-object v0
.end method
