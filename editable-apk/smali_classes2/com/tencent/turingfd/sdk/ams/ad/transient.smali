.class public Lcom/tencent/turingfd/sdk/ams/ad/transient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->a:Ljava/util/Set;

    return-void
.end method

.method public static a()I
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/transient;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->T0:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->U0:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->V0:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->W0:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->X0:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;->Y0:[I

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
