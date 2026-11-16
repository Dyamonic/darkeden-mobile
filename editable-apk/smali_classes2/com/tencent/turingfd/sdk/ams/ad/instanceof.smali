.class public Lcom/tencent/turingfd/sdk/ams/ad/instanceof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->b:Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;

    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 3
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->b:Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;

    .line 9
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->a:[Ljava/lang/String;

    .line 10
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 12
    :try_start_1
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;

    aget-object v1, v1, v0

    invoke-direct {v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->a:I

    if-lez v1, :cond_1

    .line 13
    iput v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->d:I

    :cond_1
    if-lez v1, :cond_2

    .line 14
    iput v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;->e:I

    .line 15
    :cond_2
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;

    .line 16
    invoke-direct {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse$do;)V

    .line 17
    iget-object v2, v1, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->b:Ljava/net/URL;

    iget-object v3, v1, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->d:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;->a(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;Ljava/net/URL;Ljava/util/Map;)Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;

    .line 18
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->b:Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;

    .line 19
    iput v0, v1, Lcom/tencent/turingfd/sdk/ams/ad/synchronized$do;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
