.class public Lcom/bytedance/ads/convert/utils/EventReporterV2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/applog/IOaidObserver;
.implements Lcom/bytedance/applog/IDataObserver;


# static fields
.field private static final PPE:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "Convert:EventReporterV2"

.field private static final URL:Ljava/lang/String; = "https://analytics.oceanengine.com/sdk/app/"

.field private static hasPost:Ljava/lang/Boolean;

.field public static oaid:Ljava/lang/String;


# instance fields
.field private appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

.field private context:Landroid/content/Context;

.field private didLoadTime:J

.field private oaidLoadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->PPE:Ljava/lang/Boolean;

    const-string v1, ""

    sput-object v1, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaid:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->hasPost:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaidLoadTime:J

    iput-wide v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->didLoadTime:J

    iput-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ads/convert/utils/EventReporterV2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/ads/convert/utils/EventReporterV2;)Lcom/bytedance/applog/IAppLogInstance;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bytedance/ads/convert/utils/EventReporterV2;Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->postEventInternal(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    return-void
.end method

.method private postEventInternal(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v0, "Convert:EventReporterV2"

    const-string v1, "try post event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->hasPost:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-interface {p2}, Lcom/bytedance/applog/IAppLogInstance;->getDid()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    if-nez p1, :cond_2

    :try_start_2
    const-string p1, "Convert:EventReporterV2"

    const-string p2, "context is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/bytedance/ads/convert/utils/EventReporterV2;->hasPost:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/applog/convert/IPIDProvider;->getClientAnpi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->readClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;

    move-result-object v3

    iget-object v4, v3, Lcom/bytedance/ads/convert/BDConvertInfo;->clickId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/bytedance/ads/convert/BDConvertInfo;->getSource()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/bytedance/ads/convert/BDConvertInfo;->clickIdNature:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/ads/convert/utils/AndroidIdUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Lcom/bytedance/ads/convert/BDConvertInfo;->humeChannelId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/ads/convert/utils/AppUniqueIdUtils;->getAppUniqueId(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)Lcom/bytedance/ads/convert/hume/readapk/Pair;

    move-result-object p2

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "app_package"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v9, "app_version"

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "app_install_time"

    iget-wide v10, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    :goto_1
    :try_start_6
    const-string v1, "client_tun"

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "click_id"

    invoke-virtual {v8, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    const-string v2, "1.3.1.9"

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "open_udid"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_unique_id_source"

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_unique_id"

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/hume/readapk/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "memory"

    invoke-static {p1}, Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "disk"

    invoke-static {}, Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;->getDiskTotalBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "boot_time_sec"

    invoke-static {}, Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;->getBootTimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "os_version"

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "oaid"

    sget-object v0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaid:Ljava/lang/String;

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "os_name"

    const-string v0, "android"

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "app_channel"

    invoke-virtual {v8, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ipv6"

    invoke-static {}, Lcom/bytedance/applog/convert/IPIDProvider;->getAllIPV6Address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_id_source"

    invoke-virtual {v8, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_id_nature"

    invoke-virtual {v8, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "applog_sdk_version"

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "pkg_info"

    invoke-static {p1}, Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;->getZDataP(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v8, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "header"

    invoke-virtual {p1, p2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "event_name"

    const-string v0, "launch_app"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "local_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sdk_init_time"

    sget-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "oaid_callback_time"

    iget-wide v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaidLoadTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "did_callback_time"

    iget-wide v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->didLoadTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "event_version"

    const-string v0, "2"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/bytedance/ads/convert/utils/EventReporterV2$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/ads/convert/utils/EventReporterV2$3;-><init>(Lcom/bytedance/ads/convert/utils/EventReporterV2;Lorg/json/JSONObject;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Convert:EventReporterV2"

    const-string v1, "create request params failed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/applog/AppLog;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    invoke-static {p0}, Lcom/bytedance/applog/AppLog;->setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V

    :goto_0
    const-string v0, "Convert:EventReporterV2"

    const-string v1, "set appLog observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/bytedance/ads/convert/utils/EventReporterV2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/utils/EventReporterV2$1;-><init>(Lcom/bytedance/ads/convert/utils/EventReporterV2;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Convert:EventReporterV2"

    const-string p2, "onIdLoaded: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->didLoadTime:J

    iget-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->postEvent(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    :cond_0
    return-void
.end method

.method public onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    .locals 2

    const-string v0, "Convert:EventReporterV2"

    const-string v1, "onOaidLoaded: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/bytedance/applog/IOaidObserver$Oaid;->id:Ljava/lang/String;

    sput-object p1, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->oaidLoadTime:J

    iget-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->getDid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/ads/convert/utils/EventReporterV2;->appLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->postEvent(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    :cond_0
    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public postEvent(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/ads/convert/utils/EventReporterV2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/ads/convert/utils/EventReporterV2$2;-><init>(Lcom/bytedance/ads/convert/utils/EventReporterV2;Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->postEventInternal(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    :goto_0
    return-void
.end method
