.class public Lcom/yofi/sdk/imp/middle/common/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final JSON:Lokhttp3/MediaType;

.field private static final LOG_TAG:Ljava/lang/String; = "WebAPI"

.field private static instance:Lcom/yofi/sdk/imp/middle/common/HttpUtils;


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

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->JSON:Lokhttp3/MediaType;

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

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/common/HttpUtils;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->mHandler:Landroid/os/Handler;

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

    .line 203
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 204
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private bulidRequestForPostByForm(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;
    .locals 13
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

    .line 154
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 157
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

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    const-string v1, "accessToken"

    .line 162
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "yofiPackageName"

    const-string v3, "yofiChannelId"

    const-string v4, "yofiVersion"

    const-string v5, "2.2.1"

    const-string v6, "yofiSdkVersion"

    const-string v7, "yofiSystemVersion"

    const-string v8, "yofiSystem"

    const-string v9, "yofiDeviceId"

    const-string v10, "clientId"

    const-string v11, ""

    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 164
    new-instance v12, Lokhttp3/Request$Builder;

    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    .line 165
    invoke-virtual {v12, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v10, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 169
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->ANDROID:Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;

    .line 170
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->getValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v7, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object p2

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 175
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object p2

    .line 180
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 181
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v10, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->ANDROID:Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;

    .line 184
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->getValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 185
    invoke-virtual {p1, v7, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 186
    invoke-virtual {p1, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object p2

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 189
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 192
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
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->JSON:Lokhttp3/MediaType;

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
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 124
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 126
    invoke-virtual {p2, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object p2

    .line 130
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 131
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 134
    invoke-virtual {p2, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 138
    :catch_0
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 139
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 140
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/yofi/sdk/imp/middle/common/HttpUtils;
    .locals 2

    .line 52
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->instance:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->instance:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    invoke-direct {v1}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;-><init>()V

    sput-object v1, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->instance:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

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
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->instance:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    return-object v0
.end method

.method private requestNetWork(Lokhttp3/Request;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V
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

    .line 212
    invoke-interface {p2, p1}, Lcom/yofi/sdk/imp/middle/common/MyCallBack;->onLoadingBefore(Lokhttp3/Request;)V

    .line 213
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;-><init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils;Lcom/yofi/sdk/imp/middle/common/MyCallBack;Lokhttp3/Request;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public Get(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V
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
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->bulidRequestForGet(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V

    return-void
.end method

.method public PostWithFormData(Ljava/lang/String;Ljava/util/Map;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V
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
            "Lcom/yofi/sdk/imp/middle/common/MyCallBack;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->bulidRequestForPostByForm(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1, p3}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V

    return-void
.end method

.method public PostWithJson(Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V
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
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->bulidRequestForPostByJson(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1, p3}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V

    return-void
.end method
