.class public Lcom/bytedance/ads/convert/BDConvert;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;,
        Lcom/bytedance/ads/convert/BDConvert$SingletonInner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BDConvert"

.field public static initTime:J = -0x1L


# instance fields
.field private appContext:Landroid/content/Context;

.field private broadcastManager:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

.field private final clickIdReceiver:Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;

.field private eventReporter:Lcom/bytedance/ads/convert/utils/EventReporter;

.field private mUseIdentityOpt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;-><init>(Lcom/bytedance/ads/convert/BDConvert;Lcom/bytedance/ads/convert/BDConvert$1;)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/BDConvert;->clickIdReceiver:Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/ads/convert/BDConvert;->mUseIdentityOpt:Z

    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/ads/convert/BDConvert;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/ads/convert/BDConvert;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getClickId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/ads/convert/utils/ClickIdSPUtil;->fetchClickId(Landroid/content/Context;)Lcom/bytedance/ads/convert/BDConvertInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/bytedance/ads/convert/BDConvertInfo;->clickId:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/bytedance/ads/convert/BDConvert;
    .locals 1

    invoke-static {}, Lcom/bytedance/ads/convert/BDConvert$SingletonInner;->access$200()Lcom/bytedance/ads/convert/BDConvert;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInstance()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 3

    const-string v0, "BDConvert"

    const-string v1, "BDConvert init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ads/convert/BDConvert;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ads/convert/utils/EventReporterV3;->postEventInternal(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/bytedance/ads/convert/BDConvert;->mUseIdentityOpt:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->INSTANCE:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;

    iget-object v1, p0, Lcom/bytedance/ads/convert/BDConvert;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->getUAIDInfoAsync(Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/ads/convert/BDConvert;->broadcastManager:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

    iget-object v1, p0, Lcom/bytedance/ads/convert/BDConvert;->clickIdReceiver:Lcom/bytedance/ads/convert/BDConvert$ClickIdReceiver;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;-><init>(Landroid/content/Context;Lcom/bytedance/ads/convert/IClickIdReceiver;)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/BDConvert;->broadcastManager:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->register()V

    :cond_1
    new-instance p1, Lcom/bytedance/ads/convert/BDConvert$1;

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2}, Lcom/bytedance/ads/convert/BDConvert$1;-><init>(Lcom/bytedance/ads/convert/BDConvert;Lcom/bytedance/applog/IHeaderCustomTimelyCallback;Lcom/bytedance/applog/IAppLogInstance;)V

    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V

    new-instance p1, Lcom/bytedance/ads/convert/utils/EventReporterV2;

    iget-object v0, p0, Lcom/bytedance/ads/convert/BDConvert;->appContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/bytedance/ads/convert/utils/EventReporterV2;-><init>(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/utils/EventReporterV2;->init()V

    new-instance p1, Lcom/bytedance/ads/convert/utils/EventReporter;

    iget-object v0, p0, Lcom/bytedance/ads/convert/BDConvert;->appContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/bytedance/ads/convert/BDConvert;->mUseIdentityOpt:Z

    invoke-direct {p1, v0, p2, v1}, Lcom/bytedance/ads/convert/utils/EventReporter;-><init>(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;Z)V

    iput-object p1, p0, Lcom/bytedance/ads/convert/BDConvert;->eventReporter:Lcom/bytedance/ads/convert/utils/EventReporter;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/utils/EventReporter;->init()V

    return-void
.end method

.method public useIdentityOpt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/ads/convert/BDConvert;->mUseIdentityOpt:Z

    return-void
.end method
