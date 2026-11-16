.class public final Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;
.super Ljava/lang/Object;
.source "ServiceFactoryCollector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceFactoryCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceFactoryCollector.kt\ncom/taptap/sdk/servicemanager/services/ServiceFactoryCollector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,46:1\n1271#2,2:47\n1285#2,4:49\n1238#2,4:55\n440#3:53\n390#3:54\n*S KotlinDebug\n*F\n+ 1 ServiceFactoryCollector.kt\ncom/taptap/sdk/servicemanager/services/ServiceFactoryCollector\n*L\n37#1:47,2\n37#1:49,4\n41#1:55,4\n41#1:53\n41#1:54\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00050\u00070\u0004JV\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u00070\u0004\"\u0004\u0008\u0000\u0010\t\"\u0004\u0008\u0001\u0010\n*\u0014\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u000b0\u00042\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u000b0\u0004H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;",
        "",
        "()V",
        "collect",
        "",
        "Ljava/lang/Class;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "",
        "merge",
        "K",
        "V",
        "",
        "other",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 47
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 50
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Collection;

    const/4 v5, 0x0

    .line 38
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    aput-object v6, v4, v5

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 39
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 50
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    .line 54
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 55
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 43
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 56
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final collect()Ljava/util/Map;
    .locals 3
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

    .line 12
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_compliance_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_core_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_db_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_gid_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_initializer_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_license_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_login_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Sdk_tap_openlog_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Base_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Core_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Third_party_payment_alipay_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Third_party_payment_alipaycn_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Third_party_payment_braintree_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Third_party_payment_stripe_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;

    const-string v2, "com.taptap.sdk.services.Third_party_payment_wechat_ServiceFactory"

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/servicemanager/utils/ReflectUtils;->provide(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/servicemanager/services/ServiceFactoryCollector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
