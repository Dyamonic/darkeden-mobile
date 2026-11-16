.class public final Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;
.super Ljava/lang/Object;
.source "TapGAIDUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdServiceConnection;,
        Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0017\u001a\u00020\u000e2\u0014\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u000e0\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;",
        "",
        "()V",
        "CONNECTION_RESULT_SUCCESS",
        "",
        "TAG",
        "",
        "gaid",
        "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
        "isQuerying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "waitingList",
        "",
        "Lkotlin/Function1;",
        "",
        "getAndroidId",
        "context",
        "Landroid/content/Context;",
        "getAndroidIdViaReflection",
        "getAndroidIdViaService",
        "getGAID",
        "isGooglePlayServicesAvailable",
        "",
        "queryGAID",
        "callback",
        "GoogleAdInfo",
        "GoogleAdServiceConnection",
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
.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

.field private static final TAG:Ljava/lang/String; = "TapGAIDUtil"

.field private static gaid:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

.field private static isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static waitingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->waitingList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAndroidId(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->getAndroidId(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWaitingList$p()Ljava/util/List;
    .locals 1

    .line 33
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->waitingList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$isQuerying$p()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 33
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$setGaid$p(Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->gaid:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    return-void
.end method

.method private final getAndroidId(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->getAndroidIdViaReflection(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->getAndroidIdViaService(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    const/4 p1, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object v0
.end method

.method private final getAndroidIdViaReflection(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    .locals 7

    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 128
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 127
    invoke-static {v1, v2, v4}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 130
    invoke-static {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 131
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_3

    goto :goto_0

    .line 136
    :cond_3
    new-instance v3, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v6, v4, v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-array v4, v6, [Ljava/lang/Object;

    .line 137
    invoke-static {p1, v1, v4}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->setAndroidAdvertiserIdValue(Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    .line 138
    invoke-static {p1, v2, v1}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_4
    invoke-virtual {v3, v6}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->setTrackingLimited(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_5
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 141
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "TapGAIDUtil"

    const-string v2, "getAndroidIdViaReflection"

    invoke-static {v1, v2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final getAndroidIdViaService(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    .locals 6

    .line 98
    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdServiceConnection;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdServiceConnection;-><init>()V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 102
    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 108
    :try_start_1
    new-instance v1, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdInfo;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 109
    new-instance v3, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5, v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdInfo;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->setAndroidAdvertiserIdValue(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$GoogleAdInfo;->isTrackingLimited()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->setTrackingLimited(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "TapGAIDUtil"

    const-string v4, "getAndroidIdViaService"

    .line 114
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v4, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :goto_0
    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :catch_1
    :cond_0
    :goto_1
    return-object v2
.end method

.method private final isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 91
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v4, "isGooglePlayServicesAvailable"

    .line 90
    invoke-static {v2, v4, v1}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 93
    invoke-static {v2, v1, v4}, Lcom/taptap/sdk/kit/internal/utils/TapReflectionUtil;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 94
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method


# virtual methods
.method public final getGAID()Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    .locals 1

    .line 71
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->gaid:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->getAndroidId(Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v0

    return-object v0
.end method

.method public final queryGAID(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->gaid:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->waitingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 50
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_2
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    monitor-exit p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    new-instance p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;-><init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0

    throw p1
.end method
