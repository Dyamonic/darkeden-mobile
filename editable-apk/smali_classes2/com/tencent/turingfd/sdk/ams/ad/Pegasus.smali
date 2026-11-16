.class public Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;->a:Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;->a:Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Perseus$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Aquila;

    .line 3
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Pegasus;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Aquila;->b(Landroid/content/Context;)V

    return-void
.end method
