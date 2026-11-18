.class public final Lcom/taptap/sdk/gid/internal/GidServiceImpl;
.super Ljava/lang/Object;
.source "GidServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/common/services/GidService;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGidServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GidServiceImpl.kt\ncom/taptap/sdk/gid/internal/GidServiceImpl\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,33:1\n32#2,2:34\n*S KotlinDebug\n*F\n+ 1 GidServiceImpl.kt\ncom/taptap/sdk/gid/internal/GidServiceImpl\n*L\n29#1:34,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/taptap/sdk/gid/internal/GidServiceImpl;",
        "Lcom/taptap/sdk/common/services/GidService;",
        "()V",
        "gidCallbacks",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;",
        "getGid",
        "",
        "notifyUpdateCallbacks",
        "",
        "code",
        "",
        "gid",
        "registerCallback",
        "callback",
        "unregisterCallback",
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


# instance fields
.field private final gidCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/gid/internal/GidServiceImpl;->gidCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public getGid()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-virtual {v0}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->getCurrentGid$tap_gid_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyUpdateCallbacks(ILjava/lang/String;)V
    .locals 2

    const-string v0, "gid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/taptap/sdk/gid/internal/GidServiceImpl;->gidCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "gidCallbacks.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;

    .line 30
    invoke-interface {v1, p1, p2}, Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/taptap/sdk/gid/internal/GidServiceImpl;->gidCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/taptap/sdk/gid/internal/GidServiceImpl;->gidCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 20
    sget-object v1, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-virtual {v1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->getCurrentGid$tap_gid_release()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;->onResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/taptap/sdk/gid/internal/GidServiceImpl;->gidCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
