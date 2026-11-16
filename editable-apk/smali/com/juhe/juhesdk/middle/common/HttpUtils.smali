.class public Lcom/juhe/juhesdk/middle/common/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final JSON:Lokhttp3/MediaType;

.field private static final LOG_TAG:Ljava/lang/String; = "JuheWebAPI"

.field private static instance:Lcom/juhe/juhesdk/middle/common/HttpUtils;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=utf-8"

    .line 38
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 45
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/middle/common/HttpUtils;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private bulidRequestForGet(Ljava/lang/String;)Lokhttp3/Request;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 213
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 214
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private bulidRequestForPostByForm(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "parms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 151
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 154
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 159
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "1"

    .line 164
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 165
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "1.0.3"

    .line 167
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/juhe/juhesdk/utils/CommonUtils;->getChannelId()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/juhe/juhesdk/utils/CommonUtils;->getmDeviceId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "os"

    .line 171
    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_version"

    .line 172
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_version"

    .line 173
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_model"

    .line 174
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    .line 175
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sub_channel"

    .line 176
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    .line 177
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 181
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, ""

    .line 185
    :goto_1
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    const-string v2, "accessToken"

    .line 186
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "baseData"

    const-string v4, "clientId"

    if-eqz p2, :cond_1

    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 188
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 189
    invoke-virtual {v5, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v2, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 196
    :cond_1
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 197
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 198
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1, v4, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 200
    invoke-virtual {p1, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private bulidRequestForPostByJson(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "json"
        }
    .end annotation

    const-string v0, "accessToken"

    const-string v1, "clientId"

    .line 116
    sget-object v2, Lcom/juhe/juhesdk/middle/common/HttpUtils;->JSON:Lokhttp3/MediaType;

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 119
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 121
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 122
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 123
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 124
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 125
    invoke-virtual {p2, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 129
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 130
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 132
    invoke-virtual {p2, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 133
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 136
    :catch_0
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 137
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 138
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/juhe/juhesdk/middle/common/HttpUtils;
    .locals 2

    .line 52
    sget-object v0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/HttpUtils;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/juhe/juhesdk/middle/common/HttpUtils;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/juhe/juhesdk/middle/common/HttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/HttpUtils;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/juhe/juhesdk/middle/common/HttpUtils;

    invoke-direct {v1}, Lcom/juhe/juhesdk/middle/common/HttpUtils;-><init>()V

    sput-object v1, Lcom/juhe/juhesdk/middle/common/HttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/HttpUtils;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->instance:Lcom/juhe/juhesdk/middle/common/HttpUtils;

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

    .line 222
    invoke-interface {p2, p1}, Lcom/juhe/juhesdk/middle/common/MyCallBack;->onLoadingBefore(Lokhttp3/Request;)V

    .line 223
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/common/HttpUtils$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/juhe/juhesdk/middle/common/HttpUtils$1;-><init>(Lcom/juhe/juhesdk/middle/common/HttpUtils;Lcom/juhe/juhesdk/middle/common/MyCallBack;Lokhttp3/Request;)V

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

    .line 70
    invoke-direct {p0, p1}, Lcom/juhe/juhesdk/middle/common/HttpUtils;->bulidRequestForGet(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/juhe/juhesdk/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V

    return-void
.end method

.method public PostWithFormData(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "parms",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/juhe/juhesdk/middle/common/MyCallBack;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/juhe/juhesdk/middle/common/HttpUtils;->bulidRequestForPostByForm(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1, p3}, Lcom/juhe/juhesdk/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V

    return-void
.end method

.method public PostWithJson(Ljava/lang/String;Ljava/lang/String;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "json",
            "callBack"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/juhe/juhesdk/middle/common/HttpUtils;->bulidRequestForPostByJson(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1, p3}, Lcom/juhe/juhesdk/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V

    return-void
.end method
