.class public final Lcom/taptap/sdk/initialize/Sdk_tap_gid_TaskFactory;
.super Ljava/lang/Object;
.source "Sdk_tap_gid_TaskFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/taptap/sdk/initialize/Sdk_tap_gid_TaskFactory;",
        "",
        "()V",
        "create",
        "",
        "Lcom/taptap/sdk/startup/task/Task;",
        "tap-gid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 10
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v12, Lcom/taptap/sdk/startup/task/Task;

    .line 11
    const-class v4, Lcom/taptap/sdk/gid/internal/GidInitializeTask;

    const-string v2, "com.taptap.sdk.openlog.internal.OpenLogInitializeTask"

    .line 15
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const-string v3, "GidInitializeTask"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x60

    const/4 v11, 0x0

    move-object v2, v12

    .line 10
    invoke-direct/range {v2 .. v11}, Lcom/taptap/sdk/startup/task/Task;-><init>(Ljava/lang/String;Ljava/lang/Class;ZILjava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
