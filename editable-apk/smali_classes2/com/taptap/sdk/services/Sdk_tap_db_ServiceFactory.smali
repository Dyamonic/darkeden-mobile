.class public final Lcom/taptap/sdk/services/Sdk_tap_db_ServiceFactory;
.super Ljava/lang/Object;
.source "Sdk_tap_db_ServiceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdk_tap_db_ServiceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sdk_tap_db_ServiceFactory.kt\ncom/taptap/sdk/services/Sdk_tap_db_ServiceFactory\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,20:1\n359#2,7:21\n*S KotlinDebug\n*F\n+ 1 Sdk_tap_db_ServiceFactory.kt\ncom/taptap/sdk/services/Sdk_tap_db_ServiceFactory\n*L\n15#1:21,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u00070\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/services/Sdk_tap_db_ServiceFactory;",
        "",
        "()V",
        "provide",
        "",
        "Ljava/lang/Class;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "",
        "tap-db_release"
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provide()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;>;>;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 15
    const-class v1, Lcom/taptap/sdk/core/DBService;

    const-class v2, Lcom/taptap/sdk/core/DBService;

    .line 21
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 15
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 24
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    check-cast v3, Ljava/util/Set;

    const-class v2, Lcom/taptap/sdk/db/internal/DBServiceImpl;

    .line 15
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
