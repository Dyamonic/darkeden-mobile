.class public Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemProperties"

.field private static getStringProperty:Ljava/lang/reflect/Method;

.field private static sSystemProperties:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.os.SystemProperties"

    .line 30
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->getStringProperty:Ljava/lang/reflect/Method;

    return-void
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 41
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;
    .locals 2

    .line 19
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->sSystemProperties:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->sSystemProperties:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    invoke-direct {v1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;-><init>()V

    sput-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->sSystemProperties:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->sSystemProperties:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    return-object v0
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 50
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 65
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->getStringProperty:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v0
.end method
