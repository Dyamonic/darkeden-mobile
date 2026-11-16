.class final Lcom/taptap/sdk/startup/grpah/Graph$entries$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Graph.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/grpah/Graph;-><init>(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lcom/taptap/sdk/startup/grpah/Edge<",
        "TT;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Graph.kt\ncom/taptap/sdk/startup/grpah/Graph$entries$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1785#2,2:106\n1851#2,2:108\n1787#2:110\n*S KotlinDebug\n*F\n+ 1 Graph.kt\ncom/taptap/sdk/startup/grpah/Graph$entries$2\n*L\n15#1:106,2\n16#1:108,2\n15#1:110\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u0002H\u0003 \u0004*\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u0002H\u0003 \u0004*\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00050\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/taptap/sdk/startup/grpah/Edge;",
        "T",
        "kotlin.jvm.PlatformType",
        "",
        "Lcom/taptap/sdk/startup/grpah/Node;",
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
.field final synthetic this$0:Lcom/taptap/sdk/startup/grpah/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/startup/grpah/Graph<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/startup/grpah/Graph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/startup/grpah/Graph<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/startup/grpah/Graph$entries$2;->this$0:Lcom/taptap/sdk/startup/grpah/Graph;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/taptap/sdk/startup/grpah/Graph$entries$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/grpah/Edge<",
            "TT;>;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/startup/grpah/Graph$entries$2;->this$0:Lcom/taptap/sdk/startup/grpah/Graph;

    invoke-static {v0}, Lcom/taptap/sdk/startup/grpah/Graph;->access$getEdges$p(Lcom/taptap/sdk/startup/grpah/Graph;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 108
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taptap/sdk/startup/grpah/Node;

    .line 17
    new-instance v5, Lcom/taptap/sdk/startup/grpah/Edge;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taptap/sdk/startup/grpah/Node;

    invoke-direct {v5, v6, v4}, Lcom/taptap/sdk/startup/grpah/Edge;-><init>(Lcom/taptap/sdk/startup/grpah/Node;Lcom/taptap/sdk/startup/grpah/Node;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
