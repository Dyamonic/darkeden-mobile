.class public Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_CELLULAR:I = 0x2

.field public static final NETWORK_TYPE_DUAL:I = 0x3

.field public static final NETWORK_TYPE_OHTER:I = 0x5

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_VPN:I = 0x4

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field private static volatile instance:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;


# instance fields
.field private callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private lostState:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private network:Landroid/net/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->network:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$102(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->lostState:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;
    .locals 2

    const-class v0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    sget-object v1, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->instance:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->instance:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    invoke-direct {v1, p0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->instance:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->instance:Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    return-object p0
.end method

.method private static isDataMobileEnabled(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-lt v2, v3, :cond_6

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->isDataMobileEnabled(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    return v4

    :cond_3
    if-eqz v1, :cond_4

    return v7

    :cond_4
    if-eqz v8, :cond_5

    return v5

    :cond_5
    return v6

    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v7, :cond_8

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->isDataMobileEnabled(Landroid/net/ConnectivityManager;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    return v7

    :cond_8
    if-nez v1, :cond_9

    return v5

    :cond_9
    return v6

    :catch_0
    :cond_a
    :goto_1
    return v0
.end method

.method public requestCellular(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :catch_0
    invoke-interface {p1, v1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;->networkAvailable(Landroid/net/Network;)V

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->network:Landroid/net/Network;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->lostState:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->network:Landroid/net/Network;

    invoke-interface {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;->networkAvailable(Landroid/net/Network;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    iput-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_2
    :goto_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$1;-><init>(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;)V

    iput-object v2, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    :try_start_1
    iget-object v3, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-void
.end method

.method public unregisterNetwork()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->callback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->network:Landroid/net/Network;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
