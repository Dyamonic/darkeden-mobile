.class public final Lcom/taptap/sdk/startup/utils/TaskFactoryCollector;
.super Ljava/lang/Object;
.source "TaskFactoryCollector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/taptap/sdk/startup/utils/TaskFactoryCollector;",
        "",
        "()V",
        "collect",
        "",
        "Lcom/taptap/sdk/startup/task/Task;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 12
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_achievement_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 13
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_compliance_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 14
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_core_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 15
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_db_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 16
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_gid_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 17
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_license_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 18
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_login_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 19
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_moment_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 20
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_openlog_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 21
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_review_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 22
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_share_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 23
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Sdk_tap_update_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 24
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Core_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 25
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Iap_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 26
    sget-object v2, Lcom/taptap/sdk/startup/utils/ReflectUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ReflectUtils;

    const-string v3, "com.taptap.sdk.initialize.Checkout_TaskFactory"

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/startup/utils/ReflectUtils;->create(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method
