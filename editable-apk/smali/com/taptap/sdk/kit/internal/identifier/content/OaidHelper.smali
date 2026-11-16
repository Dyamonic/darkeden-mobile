.class Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;
.super Ljava/lang/Object;
.source "OaidHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper$IdentifyListenerHandler;
    }
.end annotation


# static fields
.field private static volatile OAID:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "OaidHelper"

.field private static volatile certString:Ljava/lang/String;

.field private static volatile hasInit:Z

.field private static idSupplier:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static identifyListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static jLibrary:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static loadCertMethod:Ljava/lang/reflect/Method;

.field private static midSDKHelper:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 22
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->idSupplier:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->OAID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    sput-object p0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->OAID:Ljava/lang/String;

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "OaidHelper"

    .line 69
    :try_start_0
    sget-boolean v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->hasInit:Z

    if-nez v2, :cond_0

    .line 70
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->init(Landroid/content/Context;)V

    .line 72
    :cond_0
    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->midSDKHelper:Ljava/lang/Class;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->idSupplier:Ljava/lang/Class;

    if-nez v2, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 77
    sget-object v3, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->OAID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 78
    invoke-static {p0, v3, v2}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->getOAIDReflect(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CountDownLatch await exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "CountDownLatch await"

    .line 87
    invoke-static {v1, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->OAID:Ljava/lang/String;

    return-object p0

    .line 80
    :cond_2
    sget-object p0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->OAID:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "OAID \u8bfb\u53d6\u7c7b\u521b\u5efa\u5931\u8d25"

    .line 73
    invoke-static {v1, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getOAIDReflect(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;)V
    .locals 11

    const-string v0, "OaidHelper"

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->jLibrary:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const-string v5, "InitEntry"

    new-array v6, v4, [Ljava/lang/Class;

    .line 115
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v3

    .line 116
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    new-instance v1, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper$IdentifyListenerHandler;

    invoke-direct {v1, p2}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper$IdentifyListenerHandler;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 119
    sget-object v5, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->midSDKHelper:Ljava/lang/Class;

    const-string v6, "InitSdk"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p0, v6, v3

    .line 121
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v8, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    aput-object v8, v4, v3

    invoke-static {v7, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v10

    .line 121
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MdidSdkHelper ResultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xf63e6

    if-eq v1, v2, :cond_3

    const v2, 0xf63e2

    if-eq v1, v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 125
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->getOAIDReflect(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;)V

    if-nez p1, :cond_2

    .line 127
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-void

    .line 136
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper$1;

    invoke-direct {v2, p2}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAIDReflect exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    .line 149
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->getOAIDReflect(Landroid/content/Context;ILjava/util/concurrent/CountDownLatch;)V

    if-nez p1, :cond_4

    .line 151
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->initInvokeListener()V

    .line 38
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->midSDKHelper:Ljava/lang/Class;

    const/4 v1, 0x1

    const-string v2, "OaidHelper"

    if-eqz v0, :cond_4

    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->idSupplier:Ljava/lang/Class;

    if-nez v0, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->loadCertMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 45
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->certString:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "not set OAID certInfo before init, so try to load assets certInfo"

    .line 47
    invoke-static {v2, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->loadPemFromAssetFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "load OAID certInfo from asset is fail"

    .line 50
    invoke-static {v2, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    sget-object v3, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->loadCertMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitCert exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_3
    :goto_0
    sput-boolean v1, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->hasInit:Z

    return-void

    :cond_4
    :goto_1
    const-string p0, "OAID read class create failed"

    .line 39
    invoke-static {v2, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sput-boolean v1, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->hasInit:Z

    return-void
.end method

.method private static initInvokeListener()V
    .locals 7

    const-string v0, "com.bun.miitmdid.core.JLibrary"

    const-string v1, "OaidHelper"

    :try_start_0
    const-string v2, "start load msaoaidsec"

    .line 189
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msaoaidsec"

    .line 190
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load msaoaidsec failed, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v2, "start reflection MdidSdkHelper"

    .line 195
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 196
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->midSDKHelper:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "InitCert"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 204
    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->loadCertMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "not found InitCert method, so not need load cert"

    .line 206
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_3
    const-string v2, "com.bun.miitmdid.interfaces.IIdentifierListener"

    .line 210
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    const-string v2, "com.bun.miitmdid.interfaces.IdSupplier"

    .line 211
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->idSupplier:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    const-string v2, "1.0.22/23 version not found"

    .line 214
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    const-string v2, "com.bun.supplier.IIdentifierListener"

    .line 219
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    const-string v2, "com.bun.supplier.IdSupplier"

    .line 220
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->idSupplier:Ljava/lang/Class;

    .line 221
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->jLibrary:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    const-string v2, "1.0.13 - 1.0.21 version not found"

    .line 224
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    const-string v2, "com.bun.miitmdid.core.IIdentifierListener"

    .line 229
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->identifyListener:Ljava/lang/Class;

    const-string v2, "com.bun.miitmdid.supplier.IdSupplier"

    .line 230
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->idSupplier:Ljava/lang/Class;

    .line 231
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->jLibrary:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    const-string v0, "1.0.5 - 1.0.13 version not found"

    .line 233
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflection MdidSdkHelper failed, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static loadPemFromAssetFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OaidHelper"

    :try_start_0
    const-string v1, "start loadPemFromAssetFile"

    .line 245
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cert.pem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 248
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 253
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPemFromAssetFile failed, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static setCertString(Ljava/lang/String;)V
    .locals 0

    .line 263
    sput-object p0, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->certString:Ljava/lang/String;

    return-void
.end method
