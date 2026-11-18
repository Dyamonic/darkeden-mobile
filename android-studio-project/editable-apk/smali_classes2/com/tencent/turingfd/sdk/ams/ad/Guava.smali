.class public Lcom/tencent/turingfd/sdk/ams/ad/Guava;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/tencent/turingfd/sdk/ams/ad/protected$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/protected;->a()Lcom/tencent/turingfd/sdk/ams/ad/protected$do;

    move-result-object v0

    return-object v0
.end method
