.class public final Lcom/taptap/sdk/update/internal/TapUpdateInternal;
.super Ljava/lang/Object;
.source "TapUpdateInternal.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapUpdateInternal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapUpdateInternal.kt\ncom/taptap/sdk/update/internal/TapUpdateInternal\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,80:1\n37#2,2:81\n13543#3,2:83\n*S KotlinDebug\n*F\n+ 1 TapUpdateInternal.kt\ncom/taptap/sdk/update/internal/TapUpdateInternal\n*L\n54#1:81,2\n54#1:83,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J&\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u001c\u001a\u00020\u0018J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0016J\u000e\u0010 \u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0016J\u0016\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/taptap/sdk/update/internal/TapUpdateInternal;",
        "",
        "()V",
        "clientId",
        "",
        "getClientId",
        "()Ljava/lang/String;",
        "setClientId",
        "(Ljava/lang/String;)V",
        "clientToken",
        "getClientToken",
        "setClientToken",
        "hasInitialed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "regionType",
        "",
        "getRegionType",
        "()I",
        "setRegionType",
        "(I)V",
        "updateCallbacks",
        "",
        "Lcom/taptap/sdk/update/TapTapUpdateCallback;",
        "checkInit",
        "",
        "init",
        "context",
        "Landroid/content/Context;",
        "notifyUpdateCancel",
        "registerPackageInstallReceiver",
        "registerUpdateCallback",
        "callback",
        "unregisterUpdateCallback",
        "updateGame",
        "activity",
        "Landroid/app/Activity;",
        "tap-update_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateInternal;

.field private static clientId:Ljava/lang/String;

.field private static clientToken:Ljava/lang/String;

.field private static hasInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static regionType:I

.field private static final updateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/TapTapUpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateInternal;

    const-string v0, ""

    .line 16
    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientId:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientToken:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->hasInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->updateCallbacks:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkInit()V
    .locals 2

    .line 60
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->hasInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/exception/TapSdkException;

    const-string v1, "TapUpdate must be initialed, call init() first !"

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/exception/TapSdkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final registerPackageInstallReceiver(Landroid/content/Context;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->checkInit()V

    .line 65
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    new-instance v1, Lcom/taptap/sdk/update/internal/TapUpdatePackageReceiver;

    invoke-direct {v1}, Lcom/taptap/sdk/update/internal/TapUpdatePackageReceiver;-><init>()V

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 73
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register package install receiver error, cause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "TapUpdateLog"

    const/4 v2, 0x0

    .line 74
    invoke-static {v1, p1, v2, v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientToken()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegionType()I
    .locals 1

    .line 18
    sget v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->regionType:I

    return v0
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInitialize()V

    .line 24
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->hasInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    sput-object p2, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientId:Ljava/lang/String;

    .line 26
    sput-object p3, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientToken:Ljava/lang/String;

    .line 27
    sput p4, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->regionType:I

    .line 28
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->registerPackageInstallReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final notifyUpdateCancel()V
    .locals 4

    .line 53
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->checkInit()V

    .line 54
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->updateCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/taptap/sdk/update/TapTapUpdateCallback;

    .line 82
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 83
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    check-cast v3, Lcom/taptap/sdk/update/TapTapUpdateCallback;

    .line 55
    invoke-interface {v3}, Lcom/taptap/sdk/update/TapTapUpdateCallback;->onCancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerUpdateCallback(Lcom/taptap/sdk/update/TapTapUpdateCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->checkInit()V

    .line 43
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->updateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sput-object p1, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientId:Ljava/lang/String;

    return-void
.end method

.method public final setClientToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->clientToken:Ljava/lang/String;

    return-void
.end method

.method public final setRegionType(I)V
    .locals 0

    .line 18
    sput p1, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->regionType:I

    return-void
.end method

.method public final unregisterUpdateCallback(Lcom/taptap/sdk/update/TapTapUpdateCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->updateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateGame(Landroid/app/Activity;Lcom/taptap/sdk/update/TapTapUpdateCallback;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->checkInit()V

    .line 33
    sget-object v0, Lcom/taptap/sdk/update/utils/UIUtil;->INSTANCE:Lcom/taptap/sdk/update/utils/UIUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/utils/UIUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0, p2}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->registerUpdateCallback(Lcom/taptap/sdk/update/TapTapUpdateCallback;)V

    .line 38
    sget-object p2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->startUpdateGame(Landroid/app/Activity;)V

    return-void
.end method
