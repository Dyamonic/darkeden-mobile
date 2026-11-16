.class final Lcom/taptap/sdk/startup/grpah/Graph$nodes$2;
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
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Graph.kt\ncom/taptap/sdk/startup/grpah/Graph$nodes$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1785#2,3:106\n*S KotlinDebug\n*F\n+ 1 Graph.kt\ncom/taptap/sdk/startup/grpah/Graph$nodes$2\n*L\n26#1:106,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002\u0018\u00010\u00040\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
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

    iput-object p1, p0, Lcom/taptap/sdk/startup/grpah/Graph$nodes$2;->this$0:Lcom/taptap/sdk/startup/grpah/Graph;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/taptap/sdk/startup/grpah/Graph$nodes$2;->invoke()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/taptap/sdk/startup/grpah/Graph$nodes$2;->this$0:Lcom/taptap/sdk/startup/grpah/Graph;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/startup/grpah/Edge;

    .line 27
    invoke-virtual {v2}, Lcom/taptap/sdk/startup/grpah/Edge;->getFrom()Lcom/taptap/sdk/startup/grpah/Node;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v2}, Lcom/taptap/sdk/startup/grpah/Edge;->getTo()Lcom/taptap/sdk/startup/grpah/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
