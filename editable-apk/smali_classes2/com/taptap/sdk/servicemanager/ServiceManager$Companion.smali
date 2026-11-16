.class public final Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;
.super Ljava/lang/Object;
.source "ServiceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/servicemanager/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0003J%\u0010\u0006\u001a\u0004\u0018\u0001H\u0007\"\u0008\u0008\u0000\u0010\u0007*\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\r\"\u0008\u0008\u0000\u0010\u0007*\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\nR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/taptap/sdk/servicemanager/ServiceManager;",
        "getInstance",
        "getService",
        "T",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "interfaceClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "getServices",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance(Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;)Lcom/taptap/sdk/servicemanager/ServiceManager;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;->getInstance()Lcom/taptap/sdk/servicemanager/ServiceManager;

    move-result-object p0

    return-object p0
.end method

.method private final getInstance()Lcom/taptap/sdk/servicemanager/ServiceManager;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 103
    invoke-static {}, Lcom/taptap/sdk/servicemanager/ServiceManager;->access$getINSTANCE$cp()Lcom/taptap/sdk/servicemanager/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/taptap/sdk/servicemanager/ServiceManager;->access$getINSTANCE$cp()Lcom/taptap/sdk/servicemanager/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/taptap/sdk/servicemanager/ServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/servicemanager/ServiceManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    sget-object v1, Lcom/taptap/sdk/servicemanager/ServiceManager;->Companion:Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;

    invoke-static {v0}, Lcom/taptap/sdk/servicemanager/ServiceManager;->access$setINSTANCE$cp(Lcom/taptap/sdk/servicemanager/ServiceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getService(Ljava/lang/Class;)Lcom/taptap/sdk/servicemanager/ServiceManager$Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "interfaceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;->getServices(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/servicemanager/ServiceManager$Service;

    return-object p1
.end method

.method public final getServices(Ljava/lang/Class;)Ljava/util/Set;
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

    const-string v0, "interfaceClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/taptap/sdk/servicemanager/ServiceManager$Companion;->getInstance()Lcom/taptap/sdk/servicemanager/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taptap/sdk/servicemanager/ServiceManager;->access$getServiceByReflect(Lcom/taptap/sdk/servicemanager/ServiceManager;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Set<T of com.taptap.sdk.servicemanager.ServiceManager.Companion.getServices>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
