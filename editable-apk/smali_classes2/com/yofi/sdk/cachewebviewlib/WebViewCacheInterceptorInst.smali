.class public Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptorInst.java"

# interfaces
.implements Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;


# static fields
.field private static volatile webViewCacheInterceptorInst:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;


# instance fields
.field private mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;
    .locals 2

    .line 29
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->webViewCacheInterceptorInst:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->webViewCacheInterceptorInst:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    invoke-direct {v1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;-><init>()V

    sput-object v1, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->webViewCacheInterceptorInst:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->webViewCacheInterceptorInst:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-interface {v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->clearCache()V

    return-void
.end method

.method public enableForce(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->enableForce(Z)V

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

    .line 105
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    invoke-interface {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->getCacheFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    invoke-interface {v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->getCachePath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->build()Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    :cond_0
    return-void
.end method

.method public initAssetsData()V
    .locals 1

    .line 113
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

    .line 41
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    invoke-interface {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->interceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

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

    .line 49
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    invoke-interface {v0, p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
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

    .line 57
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

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

    .line 81
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

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

    .line 65
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
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

    .line 73
    iget-object v0, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->mInterceptor:Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/yofi/sdk/cachewebviewlib/WebViewRequestInterceptor;->loadUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
