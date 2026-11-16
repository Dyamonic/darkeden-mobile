.class public Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;
.super Ljava/lang/Object;
.source "CDNHttpUtils.java"


# static fields
.field public static final JSON:Lokhttp3/MediaType;

.field private static instance:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 26
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 33
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bulidRequestForGet(Ljava/lang/String;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 88
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 90
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    .line 93
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 94
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;
    .locals 2

    .line 40
    sget-object v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    invoke-direct {v1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;-><init>()V

    sput-object v1, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    return-object v0
.end method

.method private requestNetWork(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "request",
            "callBack"
        }
    .end annotation

    .line 103
    invoke-interface {p2, p1}, Lcom/juhe/juhesdk/middle/common/MyCallBack;->onLoadingBefore(Lokhttp3/Request;)V

    .line 104
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;-><init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;Lcom/juhe/juhesdk/middle/common/MyCallBack;Lokhttp3/Request;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private request_NotVerifyRespons(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "request",
            "callBack"
        }
    .end annotation

    .line 141
    invoke-interface {p2, p1}, Lcom/juhe/juhesdk/middle/common/MyCallBack;->onLoadingBefore(Lokhttp3/Request;)V

    .line 142
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$2;-><init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;Lcom/juhe/juhesdk/middle/common/MyCallBack;Lokhttp3/Request;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public Get(Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "callBack"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->bulidRequestForGet(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V

    return-void
.end method

.method public Get_NotVerifyRespons(Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "callBack"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->bulidRequestForGet(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->request_NotVerifyRespons(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V

    return-void
.end method
