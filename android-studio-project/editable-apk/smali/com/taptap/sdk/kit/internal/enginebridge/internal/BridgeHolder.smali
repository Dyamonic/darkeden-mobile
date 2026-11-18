.class public final Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;
.super Ljava/lang/Object;
.source "EngineBridgeReflector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010&\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00060\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00052\u0006\u0010\u000e\u001a\u00020\u0006R\"\u0010\u0003\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;",
        "",
        "()V",
        "serviceMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Ljava/lang/Class;",
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
        "getBridgeService",
        "",
        "serviceName",
        "",
        "registerService",
        "",
        "serviceClz",
        "service",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

.field private static final serviceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    .line 232
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBridgeService(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;"
        }
    .end annotation

    const-string v0, "serviceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "serviceMap.entries"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-class v4, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;

    if-eqz v3, :cond_1

    .line 244
    invoke-interface {v3}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;->value()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 242
    :cond_2
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    return-object v2

    .line 245
    :cond_3
    move-object p1, p0

    check-cast p1, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    .line 246
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_SERVICE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerService(Ljava/lang/Class;Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceClz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
