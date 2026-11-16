.class public Lcom/tencent/turingfd/sdk/ams/ad/Lyra$do;
.super Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Lyra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/turingfd/sdk/ams/ad/Chestnut<",
        "Lcom/tencent/turingfd/sdk/ams/ad/Lyra;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;

    .line 2
    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;-><init>()V

    return-object v0
.end method
