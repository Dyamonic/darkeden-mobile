.class public Lcom/tencent/turingfd/sdk/ams/ad/Loquat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/turingfd/sdk/ams/ad/Chestnut<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Loquat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Loquat$do;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Loquat$do;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;->a:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter v0

    monitor-exit v0

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;->a()Z

    const-string v0, "1"

    return-object v0
.end method
