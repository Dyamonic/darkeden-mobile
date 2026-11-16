.class public Lcom/tencent/turingfd/sdk/ams/ad/Grape;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grape;->a:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grape;->a:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
