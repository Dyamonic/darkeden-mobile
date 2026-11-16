.class public Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptor.java"

# interfaces
.implements Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    }
.end annotation


# static fields
.field public static final KEY_CACHE:Ljava/lang/String; = "WebResourceInterceptor-Key-Cache"

.field private static final TAG:Ljava/lang/String; = "YoFiCacheTag"

.field private static final TAGSAME:Ljava/lang/String; = "YoFiCacheSameTag"


# instance fields
.field private cacheControl:Lokhttp3/CacheControl;

.field private fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filemapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetsDir:Ljava/lang/String;

.field private mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

.field private mCacheFile:Ljava/io/File;

.field private mCacheSize:J

.field private mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

.field private mConnectTimeout:J

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDns:Lokhttp3/Dns;

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mIsSuffixMod:Z

.field private mOrigin:Ljava/lang/String;

.field private mReadTimeout:J

.field private mReferer:Ljava/lang/String;

.field private mResourceInterceptor:Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTrustAllHostname:Z

.field private mUserAgent:Ljava/lang/String;

.field private mX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mTrustAllHostname:Z

    .line 65
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 67
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mDns:Lokhttp3/Dns;

    .line 69
    iput-boolean v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mIsSuffixMod:Z

    .line 75
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mHttpClient:Lokhttp3/OkHttpClient;

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$000(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->cacheControl:Lokhttp3/CacheControl;

    .line 86
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$100(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    .line 87
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$200(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    .line 88
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$300(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheSize:J

    .line 89
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$400(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lcom/yofi/sdk/cachewebviewlib/CacheType;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    .line 90
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$500(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mConnectTimeout:J

    .line 91
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$600(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReadTimeout:J

    .line 92
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$700(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$800(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    .line 94
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$900(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1000(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 96
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1100(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 97
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1200(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mTrustAllHostname:Z

    .line 98
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1300(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mResourceInterceptor:Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

    .line 99
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1400(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mIsSuffixMod:Z

    .line 100
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1500(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lokhttp3/Dns;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mDns:Lokhttp3/Dns;

    .line 101
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->fileMap:Ljava/util/Map;

    .line 103
    invoke-direct {p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->initHttpClient()V

    .line 104
    invoke-direct {p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->isEnableAssets()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->initAssetsLoader()V

    :cond_0
    return-void
.end method

.method private buildHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    const-string v2, "Origin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    const-string v2, "Referer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mResourceInterceptor:Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;->interceptor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 184
    :cond_2
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->canCache(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private getBytes(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "bytes="

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 311
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private getFileMapper(Ljava/io/InputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    const/4 v0, 0x0

    .line 646
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 648
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 649
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 655
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->jsonToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->filemapper:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 656
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    iget-boolean v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    invoke-static {p1, v1}, Lcom/yofi/sdk/cachewebviewlib/CacheWebViewLog;->d(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method private initAssetsLoader()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->init(Landroid/content/Context;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->setDir(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mIsSuffixMod:Z

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->isAssetsSuffixMod(Z)Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    return-void
.end method

.method private initHttpClient()V
    .locals 4

    .line 119
    new-instance v0, Lokhttp3/Cache;

    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    iget-wide v2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheSize:J

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 120
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mConnectTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReadTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/cachewebviewlib/HttpCacheInterceptor;

    invoke-direct {v1}, Lcom/yofi/sdk/cachewebviewlib/HttpCacheInterceptor;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 126
    iget-boolean v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mTrustAllHostname:Z

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$1;-><init>(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mDns:Lokhttp3/Dns;

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 140
    :cond_2
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private interceptRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "headers"
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
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    sget-object v2, Lcom/yofi/sdk/cachewebviewlib/CacheType;->NORMAL:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->checkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->isEnableAssets()Z

    move-result v1

    const-string v2, ""

    const-string v4, "YoFiCacheTag"

    if-eqz v1, :cond_2

    .line 330
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getResByUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8d70AssetsCache = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string v3, "from assets: %s"

    .line 335
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    invoke-static {v0, v3}, Lcom/yofi/sdk/cachewebviewlib/CacheWebViewLog;->d(Ljava/lang/String;Z)V

    .line 336
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v3, Landroid/webkit/WebResourceResponse;

    invoke-direct {v3, v0, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 339
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->setwebResourceResponseHeader(Landroid/webkit/WebResourceResponse;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 346
    :cond_2
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 352
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 353
    new-instance v6, Landroid/webkit/WebResourceResponse;

    invoke-direct {v6, v5, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8d70downloadCache = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v6, v1, p1, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->setwebResourceResponseHeader(Landroid/webkit/WebResourceResponse;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 360
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 369
    :cond_3
    :try_start_1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 370
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 371
    iget-object v5, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    invoke-virtual {v5, v0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->isHtml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WebResourceInterceptor-Key-Cache"

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    invoke-virtual {v6}, Lcom/yofi/sdk/cachewebviewlib/CacheType;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->addHeader(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 378
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->cacheControl:Lokhttp3/CacheControl;

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 379
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d70download\u4e0b\u8f7d = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0, v0, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->requestContent(Lokhttp3/Request;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method private isEnableAssets()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private jsonToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 674
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 676
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 284
    fill-array-data v1, :array_0

    :try_start_0
    const-string v2, "MD5"

    .line 286
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 288
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v2, 0x20

    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 292
    aget-byte v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 293
    aget-char v7, v1, v7

    aput-char v7, v2, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 294
    aget-char v5, v1, v5

    aput-char v5, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private requestContent(Lokhttp3/Request;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, "verifyUrl"

    const/4 v1, 0x0

    .line 397
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u8bf7\u6c42requestUrl= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xce

    if-eq v2, v3, :cond_0

    return-object v1

    .line 404
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 406
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ed3\u675f\u8bf7\u6c42responseUrl= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v2}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->isMd5NameFromUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    new-instance v0, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 413
    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->getCopy()Ljava/io/InputStream;

    move-result-object p1

    .line 414
    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->getCopy()Ljava/io/InputStream;

    move-result-object v3

    .line 415
    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/utils/CopyInputStream;->getCopy()Ljava/io/InputStream;

    move-result-object v0

    .line 418
    invoke-static {v2}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getFileMd5NameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/MD5Utils;->getInputStreamMd5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/16 v6, 0xa

    .line 420
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, ",fileMd5="

    const-string v7, ",fileNameMd5="

    const-string v8, "YoFiCacheSameTag"

    if-nez v5, :cond_1

    .line 422
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "md5nosame="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 427
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "md5same="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getUrlPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 431
    iget-object v4, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/yofi/sdk/cachewebviewlib/utils/FileUtil;->createFile(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 433
    invoke-static {v2}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 434
    new-instance v3, Landroid/webkit/WebResourceResponse;

    invoke-direct {v3, p1, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :try_start_2
    invoke-virtual {p0, v3, v0, v2, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->setwebResourceResponseHeader(Landroid/webkit/WebResourceResponse;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-object v1, v3

    nop

    :catch_1
    :cond_2
    return-object v1
.end method


# virtual methods
.method public addHeader(Lokhttp3/Request$Builder;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reqBuilder",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearCache()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/utils/FileUtil;->deleteDirs(Ljava/lang/String;Z)V

    .line 243
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->clear()V

    return-void
.end method

.method public enableForce(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 250
    sget-object p1, Lcom/yofi/sdk/cachewebviewlib/CacheType;->FORCE:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    goto :goto_0

    .line 252
    :cond_0
    sget-object p1, Lcom/yofi/sdk/cachewebviewlib/CacheType;->NORMAL:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    :goto_0
    return-void
.end method

.method public getCacheFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/utils/OKHttpFile;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    return-object v0
.end method

.method public getJson(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "context"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    .line 631
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 632
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 634
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 638
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 640
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initAssetsData()V
    .locals 1

    .line 263
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->getInstance()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;->initData()Lcom/yofi/sdk/cachewebviewlib/AssetsLoader;

    return-void
.end method

.method public interceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->interceptRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->buildHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->interceptRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method isValidUrl(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 621
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webView",
            "url"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 205
    invoke-static {p2}, Lcom/yofi/sdk/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webView",
            "url",
            "additionalHttpHeaders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 236
    invoke-static {p2}, Lcom/yofi/sdk/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "userAgent"
        }
    .end annotation

    .line 211
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 215
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "additionalHttpHeaders",
            "userAgent"
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 225
    invoke-static {p1}, Lcom/yofi/sdk/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method setwebResourceResponseHeader(Landroid/webkit/WebResourceResponse;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webResourceResponse",
            "inputStream",
            "url",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebResourceResponse;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 459
    invoke-static {p3}, Lcom/yofi/sdk/cachewebviewlib/utils/MimeTypeMapUtils;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->isMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MediaRequestHeader= "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "YoFiCacheTag"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "Range"

    .line 464
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 472
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p4

    if-nez p4, :cond_0

    .line 474
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 479
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->getBytes(Ljava/lang/String;)I

    move-result p3

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Range"

    .line 482
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 484
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/16 p2, 0xce

    const-string p3, "Partial Content"

    .line 487
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 488
    invoke-virtual {p1, p4}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    :cond_1
    return-object p1
.end method
