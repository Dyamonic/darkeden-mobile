.class public Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAssetsDir:Ljava/lang/String;

.field private mCacheControl:Lokhttp3/CacheControl;

.field private mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

.field private mCacheFile:Ljava/io/File;

.field private mCacheSize:J

.field private mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

.field private mConnectTimeout:J

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDns:Lokhttp3/Dns;

.field private mIsSuffixMod:Z

.field private mReadTimeout:J

.field private mResourceInterceptor:Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTrustAllHostname:Z

.field private mX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x6400000

    .line 500
    iput-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheSize:J

    const-wide/16 v0, 0x14

    .line 501
    iput-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mConnectTimeout:J

    .line 502
    iput-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mReadTimeout:J

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDebug:Z

    .line 506
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/CacheType;->FORCE:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mTrustAllHostname:Z

    const/4 v1, 0x0

    .line 511
    iput-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 512
    iput-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 515
    iput-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mAssetsDir:Ljava/lang/String;

    .line 516
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mIsSuffixMod:Z

    .line 517
    iput-object v1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDns:Lokhttp3/Dns;

    .line 521
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mContext:Landroid/content/Context;

    .line 522
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CacheWebViewCache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheFile:Ljava/io/File;

    .line 523
    new-instance p1, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    invoke-direct {p1}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;-><init>()V

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lokhttp3/CacheControl;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z
    .locals 0

    .line 497
    iget-boolean p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mTrustAllHostname:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mResourceInterceptor:Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z
    .locals 0

    .line 497
    iget-boolean p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mIsSuffixMod:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lokhttp3/Dns;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDns:Lokhttp3/Dns;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/io/File;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)J
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lcom/yofi/sdk/cachewebviewlib/CacheType;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)J
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mConnectTimeout:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)J
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mReadTimeout:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Landroid/content/Context;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z
    .locals 0

    .line 497
    iget-boolean p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDebug:Z

    return p0
.end method

.method static synthetic access$900(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/lang/String;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mAssetsDir:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;
    .locals 1

    .line 615
    new-instance v0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;-><init>(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)V

    return-object v0
.end method

.method public isAssetsSuffixMod(Z)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suffixMod"
        }
    .end annotation

    .line 599
    iput-boolean p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mIsSuffixMod:Z

    return-object p0
.end method

.method public setAssetsDir(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 605
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mAssetsDir:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setCacheExtensionConfig(Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 583
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheExtensionConfig:Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    :cond_0
    return-object p0
.end method

.method public setCachePath(Ljava/io/File;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 554
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheFile:Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method public setCacheSize(J)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 561
    iput-wide p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheSize:J

    :cond_0
    return-object p0
.end method

.method public setCacheType(Lcom/yofi/sdk/cachewebviewlib/CacheType;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheType"
        }
    .end annotation

    .line 594
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheType:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    return-object p0
.end method

.method public setCatchControl(Lokhttp3/CacheControl;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheControl"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 547
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheControl:Lokhttp3/CacheControl;

    :cond_0
    return-object p0
.end method

.method public setConnectTimeoutSecond(J)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 575
    iput-wide p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mConnectTimeout:J

    :cond_0
    return-object p0
.end method

.method public setDebug(Z)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 589
    iput-boolean p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDebug:Z

    return-object p0
.end method

.method public setDns(Lokhttp3/Dns;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dns"
        }
    .end annotation

    .line 611
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDns:Lokhttp3/Dns;

    return-void
.end method

.method public setReadTimeoutSecond(J)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 568
    iput-wide p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mReadTimeout:J

    :cond_0
    return-object p0
.end method

.method public setResourceInterceptor(Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceInterceptor"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mResourceInterceptor:Lcom/yofi/sdk/cachewebviewlib/ResourceInterceptor;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sslSocketFactory",
            "trustManager"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 539
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 540
    iput-object p2, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    :cond_0
    return-object p0
.end method

.method public setTrustAllHostname()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->mTrustAllHostname:Z

    return-object p0
.end method
