.class public final Lcom/taptap/sdk/servicemanager/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/servicemanager/ServiceManager$Service;,
        Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManager.kt\ncom/taptap/sdk/servicemanager/ServiceManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n359#2,3:125\n362#2,4:141\n1603#3,9:128\n1851#3:137\n1852#3:139\n1612#3:140\n1#4:138\n*S KotlinDebug\n*F\n+ 1 ServiceManager.kt\ncom/taptap/sdk/servicemanager/ServiceManager\n*L\n75#1:125,3\n75#1:141,4\n76#1:128,9\n76#1:137\n76#1:139\n76#1:140\n76#1:138\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J<\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0007\"\u0008\u0008\u0000\u0010\r*\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u00052\u0014\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u0007H\u0002J&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0007\"\u0008\u0008\u0000\u0010\r*\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0005H\u0002R0\u0010\u0003\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u00070\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0008\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00070\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/taptap/sdk/servicemanager/ServiceManager;",
        "",
        "()V",
        "serviceClassCache",
        "",
        "Ljava/lang/Class;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "",
        "serviceImplCache",
        "",
        "__inject",
        "",
        "getOrPutServiceImplSet",
        "T",
        "interfaceClass",
        "implClassSet",
        "getServiceByReflect",
        "Companion",
        "Service",
        "tap-servicemanager_release"
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
.field public static final Companion:Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;

.field private static volatile INSTANCE:Lcom/taptap/sdk/servicemanager/ServiceManager;


# instance fields
.field private serviceClassCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;+",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private serviceImplCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/servicemanager/ServiceManager;->Companion:Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->serviceClassCache:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->serviceImplCache:Ljava/util/Map;

    .line 24
    invoke-direct {p0}, Lcom/taptap/sdk/servicemanager/ServiceManager;->__inject()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/servicemanager/ServiceManager;-><init>()V

    return-void
.end method

.method private final __inject()V
    .locals 1

    .line 31
    new-instance v0, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;

    invoke-direct {v0}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;-><init>()V

    invoke-virtual {v0}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->collect()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->serviceClassCache:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/taptap/sdk/servicemanager/ServiceManager;
    .locals 1

    .line 8
    sget-object v0, Lcom/taptap/sdk/servicemanager/ServiceManager;->INSTANCE:Lcom/taptap/sdk/servicemanager/ServiceManager;

    return-object v0
.end method

.method public static final synthetic access$getServiceByReflect(Lcom/taptap/sdk/servicemanager/ServiceManager;Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/taptap/sdk/servicemanager/ServiceManager;->getServiceByReflect(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/taptap/sdk/servicemanager/ServiceManager;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->INSTANCE:Lcom/taptap/sdk/servicemanager/ServiceManager;

    return-void
.end method

.method private static final getInstance()Lcom/taptap/sdk/servicemanager/ServiceManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/servicemanager/ServiceManager;->Companion:Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;

    invoke-static {v0}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;->access$getInstance(Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;)Lcom/taptap/sdk/servicemanager/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method private final getOrPutServiceImplSet(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->serviceImplCache:Ljava/util/Map;

    .line 125
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 76
    check-cast p2, Ljava/lang/Iterable;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 137
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/Class;

    .line 76
    invoke-static {v2}, Lcom/taptap/sdk/servicemanager/ServiceManager;->getOrPutServiceImplSet$createServiceImplByReflect(Ljava/lang/Class;)Lcom/taptap/sdk/servicemanager/ServiceManager$Service;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 128
    check-cast v1, Ljava/lang/Iterable;

    .line 77
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 141
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_2
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 80
    :catchall_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    const-string p1, "null cannot be cast to non-null type kotlin.collections.Set<T of com.taptap.sdk.servicemanager.ServiceManager.getOrPutServiceImplSet>"

    .line 74
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final getOrPutServiceImplSet$createServiceImplByReflect(Ljava/lang/Class;)Lcom/taptap/sdk/servicemanager/ServiceManager$Service;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/taptap/sdk/servicemanager/ServiceManager$Service;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/taptap/sdk/servicemanager/ServiceManager$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private final getServiceByReflect(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->serviceImplCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/servicemanager/ServiceManager;->serviceClassCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/servicemanager/ServiceManager;->getOrPutServiceImplSet(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, p1

    .line 38
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method
