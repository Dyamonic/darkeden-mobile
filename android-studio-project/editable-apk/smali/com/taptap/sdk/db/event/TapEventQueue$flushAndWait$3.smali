.class final Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TapEventQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/db/event/TapEventQueue;->flushAndWait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapEventQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapEventQueue.kt\ncom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,167:1\n1851#2,2:168\n*S KotlinDebug\n*F\n+ 1 TapEventQueue.kt\ncom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3\n*L\n128#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $reportedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapEventBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapEventBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;->$reportedEvents:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    .line 126
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapTapEvent report "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;->$reportedEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " logs \u2193 \u2193 \u2193\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;->$reportedEvents:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/db/event/model/TapEventBean;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/taptap/sdk/db/event/model/TapEventBean;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "TapTapSdk"

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    sget-object p1, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/TapEventQueue;->access$getStore(Lcom/taptap/sdk/db/event/TapEventQueue;)Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->clearInFlightAndStats(Z)V

    .line 137
    sget-object p1, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/TapEventQueue;->access$getStore(Lcom/taptap/sdk/db/event/TapEventQueue;)Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->getAccumulatedDataCount()I

    move-result p1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_1

    .line 138
    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->access$getScheduledFuture$p()Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    if-nez p1, :cond_1

    .line 139
    sget-object p1, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->getSingleThreadExecutor$tap_db_release()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 140
    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->access$getFlushRunnable$p()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 139
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/db/event/TapEventQueue;->access$setScheduledFuture$p(Ljava/util/concurrent/ScheduledFuture;)V

    :cond_1
    return-void
.end method
