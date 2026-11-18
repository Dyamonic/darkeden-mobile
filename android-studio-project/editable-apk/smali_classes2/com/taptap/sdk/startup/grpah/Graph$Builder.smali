.class public final Lcom/taptap/sdk/startup/grpah/Graph$Builder;
.super Ljava/lang/Object;
.source "Graph.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/startup/grpah/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/taptap/sdk/startup/grpah/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Graph.kt\ncom/taptap/sdk/startup/grpah/Graph$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n*L\n1#1,105:1\n1#2:106\n1#2:109\n73#3,2:107\n*S KotlinDebug\n*F\n+ 1 Graph.kt\ncom/taptap/sdk/startup/grpah/Graph$Builder\n*L\n101#1:109\n101#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00018\u00018\u00010\tJ!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u000c\u001a\u00028\u00012\u0006\u0010\r\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u000eJ\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0010R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/startup/grpah/Graph$Builder;",
        "T",
        "Lcom/taptap/sdk/startup/grpah/Node;",
        "",
        "()V",
        "edges",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "build",
        "Lcom/taptap/sdk/startup/grpah/Graph;",
        "kotlin.jvm.PlatformType",
        "putEdge",
        "from",
        "to",
        "(Lcom/taptap/sdk/startup/grpah/Node;Lcom/taptap/sdk/startup/grpah/Node;)Lcom/taptap/sdk/startup/grpah/Graph$Builder;",
        "edge",
        "Lcom/taptap/sdk/startup/grpah/Edge;",
        "tap-initializer_release"
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
.field private final edges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->edges:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final build()Lcom/taptap/sdk/startup/grpah/Graph;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/startup/grpah/Graph<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/taptap/sdk/startup/grpah/Graph;

    iget-object v1, p0, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->edges:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "unmodifiableMap(this.edges)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/startup/grpah/Graph;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final putEdge(Lcom/taptap/sdk/startup/grpah/Edge;)Lcom/taptap/sdk/startup/grpah/Graph$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/startup/grpah/Edge<",
            "TT;>;)",
            "Lcom/taptap/sdk/startup/grpah/Graph$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "edge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/taptap/sdk/startup/grpah/Edge;->getFrom()Lcom/taptap/sdk/startup/grpah/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/startup/grpah/Edge;->getTo()Lcom/taptap/sdk/startup/grpah/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->putEdge(Lcom/taptap/sdk/startup/grpah/Node;Lcom/taptap/sdk/startup/grpah/Node;)Lcom/taptap/sdk/startup/grpah/Graph$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putEdge(Lcom/taptap/sdk/startup/grpah/Node;Lcom/taptap/sdk/startup/grpah/Node;)Lcom/taptap/sdk/startup/grpah/Graph$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/taptap/sdk/startup/grpah/Graph$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/startup/grpah/Graph$Builder;

    iget-object v1, v0, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->edges:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 107
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 108
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :cond_1
    :goto_0
    const-string p1, "edges.getOrPut(from, ::CopyOnWriteArraySet)"

    .line 101
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
