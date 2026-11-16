.class public Lcom/yofi/sdk/activity/YouFeiWebViewActivity;
.super Lcom/yofi/sdk/activity/YofiBaseActivity;
.source "YouFeiWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;,
        Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final YoFiTAG:Ljava/lang/String; = "YoFiImpWebvieTag"


# instance fields
.field private callBack:Ljava/lang/String;

.field private codeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpErrorCode:I

.field private isLoginOut:Z

.field private isURLOnReceivedHttpError:Z

.field private mUiListener:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

.field private mUrlType:I

.field private mWebView:Landroid/webkit/WebView;

.field private receiver:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/yofi/sdk/activity/YofiBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mUrlType:I

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->codeSet:Ljava/util/Set;

    .line 87
    iput-boolean v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->isURLOnReceivedHttpError:Z

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->httpErrorCode:I

    return-void
.end method

.method static synthetic access$100(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->isURLOnReceivedHttpError:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/util/Set;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->codeSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->isURLOnReceivedHttpError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getmUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->httpErrorCode:I

    return p0
.end method

.method static synthetic access$302(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->httpErrorCode:I

    return p1
.end method

.method static synthetic access$400(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->scanAndDeleteCacheFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->showFloatButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->sendToWeb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    return-object p0
.end method

.method public static getClipboardContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "clipboard"

    .line 895
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 899
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 903
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getmUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "YoFiImpWebvieTag"

    const-string v1, "\u5f00\u59cb\u83b7\u53d6sdk\u5730\u5740"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    iget v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mUrlType:I

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getWebUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 222
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 224
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v1, "appcache"

    .line 226
    invoke-virtual {p0, v1, v2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-string v1, "geolocation"

    .line 227
    invoke-virtual {p0, v1, v2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 228
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 229
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "SDKBridge"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v0, v2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->isAssetsSuffixMod(Z)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 232
    invoke-virtual {v0, v2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setDebug(Z)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 233
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache_path_name"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCachePath(Ljava/io/File;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    const-wide/32 v2, -0x80000000

    .line 234
    invoke-virtual {v1, v2, v3}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCacheSize(J)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    const-wide/16 v2, 0x1e

    .line 235
    invoke-virtual {v1, v2, v3}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setConnectTimeoutSecond(J)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v2, v3}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setReadTimeoutSecond(J)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    sget-object v2, Lcom/yofi/sdk/cachewebviewlib/CacheType;->FORCE:Lcom/yofi/sdk/cachewebviewlib/CacheType;

    .line 237
    invoke-virtual {v1, v2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCacheType(Lcom/yofi/sdk/cachewebviewlib/CacheType;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    new-instance v2, Lokhttp3/CacheControl$Builder;

    invoke-direct {v2}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 242
    invoke-virtual {v2}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0x14

    .line 250
    invoke-virtual {v2, v4, v3}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCatchControl(Lokhttp3/CacheControl;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 254
    new-instance v1, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    invoke-direct {v1}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;-><init>()V

    const-string v2, "json"

    .line 255
    invoke-virtual {v1, v2}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "wave"

    .line 256
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "ttf"

    .line 257
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "bin"

    .line 258
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "atlas"

    .line 259
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "mp3"

    .line 260
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "ogg"

    .line 261
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "zip"

    .line 262
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v2

    const-string v3, "mem"

    .line 263
    invoke-virtual {v2, v3}, Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;

    const-string v2, ""

    .line 266
    invoke-virtual {v0, v2}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setAssetsDir(Ljava/lang/String;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 267
    invoke-virtual {v0, v1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCacheExtensionConfig(Lcom/yofi/sdk/cachewebviewlib/config/CacheExtensionConfig;)Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 270
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->init(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$Builder;)V

    .line 271
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->initAssetsData()V

    .line 272
    invoke-direct {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getmUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u52a0\u8f7dYofiSdk\u5730\u5740\uff1a"

    .line 273
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$2;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setSyOneKeyLoginNativeCallJs(Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method private scanAndDeleteCacheFile()V
    .locals 12

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 319
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getCachePath()Ljava/io/File;

    move-result-object v4

    .line 320
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 323
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 324
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    div-long/2addr v8, v2

    sub-long v8, v0, v8

    const-wide/32 v10, 0x278d00

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 326
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendToWeb(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 833
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 834
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 835
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "javascript:%s(%d,%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 836
    iget-object v2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 837
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$15;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "YoFi_Web_HttpError_Dialog"

    const-string v4, "style"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u63d0\u793a"

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    const-string v1, "\u91cd\u8bd5"

    .line 342
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showFloatButton(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessToken"
        }
    .end annotation

    .line 642
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsShowFloatButton()Ljava/lang/Boolean;

    move-result-object v0

    .line 643
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 646
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x4

    const-string v4, "FUNCTION_CODE"

    .line 647
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "ACCESS_TOKEN"

    .line 648
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    const-string v3, "GRAVITY"

    .line 649
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 651
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$10;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$10;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-static {v1, v0, p1}, Lcom/yofi/sdk/YoFiSDK;->execute(Landroid/app/Activity;Landroid/content/Intent;Lcom/yofi/sdk/IFlashCallback;)V

    :cond_0
    return-void
.end method

.method private tapTpaLogin()V
    .locals 2

    const-string v0, "public_profile"

    .line 718
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 720
    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$12;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$12;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-static {p0, v0, v1}, Lcom/taptap/sdk/login/TapTapLogin;->loginWithScopes(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method


# virtual methods
.method public bindSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 497
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 498
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "param"

    .line 499
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bindSuccess"

    .line 500
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "phone"

    .line 501
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getBindCallBack()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const-string v0, ""

    .line 505
    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 508
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public closeWebView(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 518
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 519
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "closeWebView"

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 522
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$7;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$7;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 531
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 454
    :cond_0
    invoke-super {p0, p1}, Lcom/yofi/sdk/activity/YofiBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getHeader(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 361
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/utils/CommonUtils;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/utils/CommonUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yofi/sdk/utils/CommonUtils;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/yofi/sdk/utils/CommonUtils;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getTouristUser()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getTouristPassword()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v0, v4

    move-object v1, v5

    move v4, v7

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    .line 374
    :goto_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "callback"

    .line 375
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "clientId"

    .line 377
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "appKey"

    .line 378
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "isShowGuest"

    .line 379
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowGuest()Z

    move-result v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "isShowTaptap"

    .line 380
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowTapTap()Z

    move-result v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "isShowQQ"

    .line 381
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowQQ()Z

    move-result v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "isShowSyOneKeyLogin"

    .line 382
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin()Z

    move-result v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "isShowThirdLogin"

    .line 383
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin()Z

    move-result v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "yofiSystem"

    const-string v8, "1"

    .line 384
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "yofiSystemVersion"

    .line 385
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "yofiSdkVersion"

    const-string v8, "2.2.1"

    .line 386
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "yofiVersion"

    .line 387
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "yofiDeviceId"

    .line 388
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "yofiMac"

    .line 389
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "yofiAndroidId"

    .line 390
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "yofiChannelId"

    .line 391
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "yofiOaid"

    .line 392
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getOaid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "yofiPackageName"

    .line 393
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "yofiLogout"

    .line 394
    iget-boolean v3, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->isLoginOut:Z

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "loginWithoutAccount"

    .line 395
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginWithoutAccount()Z

    move-result v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "guestLoginName"

    .line 396
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "guestLoginPassword"

    .line 397
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "guestLoginType"

    .line 398
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "baseUrl"

    .line 399
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "javascript:%s(%d,%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    const/4 v2, 0x1

    .line 400
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YouFeiWebViewActivity"

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeader: ===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 403
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$5;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public getPasteData(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 865
    invoke-static {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getClipboardContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 867
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "callback"

    .line 868
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 869
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "content"

    .line 870
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v0, "javascript:%s(%d)"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 873
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "javascript:%s(%d,%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 875
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 878
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 880
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$16;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public localPhoneLogin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 668
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "callback"

    .line 669
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    .line 670
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->txOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public loginSuccess(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const-string v0, "isAuthentication"

    const-string v1, "isRegGame"

    const-string v2, "nickname"

    const-string v3, "age"

    const-string v4, "phone"

    const-string v5, "userId"

    const-string v6, "loginType"

    const-string v7, "loginSuccess"

    const-string v8, "accessToken"

    const-string v9, "uuid"

    .line 539
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 540
    invoke-virtual {v10, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v11, "param"

    .line 541
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 542
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "js\u8c03\u7528\u767b\u5f55\u6210\u529f"

    .line 544
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v7

    .line 547
    :goto_0
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ""

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v11

    .line 548
    :goto_1
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v11

    .line 549
    :goto_2
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v11

    .line 550
    :goto_3
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v11

    .line 551
    :goto_4
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object v12, v11

    .line 552
    :goto_5
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 553
    :cond_6
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    goto :goto_6

    :cond_7
    move v2, v7

    .line 554
    :goto_6
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_8
    move v0, v13

    .line 556
    :goto_7
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setNickname(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setUserId(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setUuid(Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setAccessToken(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setLoginOut(Z)V

    .line 561
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setHasLoginSuccess(Z)V

    .line 562
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->heartbeat()V

    .line 563
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setAge(I)V

    .line 565
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v1

    if-nez p1, :cond_9

    move v3, v13

    goto :goto_8

    :cond_9
    move v3, v7

    :goto_8
    invoke-virtual {v1, v3}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setTourist(Z)V

    .line 566
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setAuthen(Z)V

    const-string v0, "YoFiSdk"

    .line 568
    invoke-virtual {p0, v0, v7}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "logout"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasLoginSuccess"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    if-eqz v0, :cond_a

    .line 574
    invoke-static {p0}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->getContentId(Landroid/content/Context;)J

    move-result-wide v0

    .line 575
    sget-object v3, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v3, v0, v1}, Lcom/yofi/sdk/imp/middle/data/Content;->setId(J)V

    goto :goto_9

    .line 577
    :cond_a
    new-instance v0, Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-static {p0}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->getContentId(Landroid/content/Context;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/yofi/sdk/imp/middle/data/Content;-><init>(J)V

    sput-object v0, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    .line 579
    :goto_9
    invoke-static {p0}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->getMaxMsgId(Landroid/content/Context;)V

    .line 581
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "code"

    .line 582
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    invoke-virtual {v4, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v1, "ok"

    .line 584
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "isGuest"

    if-nez p1, :cond_b

    .line 586
    :try_start_2
    invoke-virtual {v4, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_a

    .line 588
    :cond_b
    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 590
    :goto_a
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;

    move-object v0, p1

    move-object v1, p0

    move-object v3, v12

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 625
    :cond_c
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$9;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$9;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    .line 635
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-void
.end method

.method public logout(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 462
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 463
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "logout"

    .line 464
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 466
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$6;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$6;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const-string v0, "YoFiImpWebvieTag"

    .line 807
    invoke-super {p0, p1, p2, p3}, Lcom/yofi/sdk/activity/YofiBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 809
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult----requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "----resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :goto_0
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mUiListener:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

    if-eqz v0, :cond_0

    .line 826
    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Lcom/yofi/sdk/activity/YofiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->requestWindowFeature(I)Z

    .line 97
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    iput-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->receiver:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "WECHAT_BROADCAST"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->receiver:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;)V

    iput-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mUiListener:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

    :cond_0
    const-string v0, "yofi_webview"

    const-string v1, "layout"

    .line 107
    invoke-static {p0, v0, v1}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->setContentView(I)V

    .line 109
    invoke-static {p0}, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 111
    invoke-static {}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLoginOut"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->isLoginOut:Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->isLoginOut:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "urlType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mUrlType:I

    const-string v0, "wv"

    const-string v1, "id"

    .line 116
    invoke-static {p0, v0, v1}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 117
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 119
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 120
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 121
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 122
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFormData()V

    .line 124
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    invoke-direct {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 434
    invoke-super {p0}, Lcom/yofi/sdk/activity/YofiBaseActivity;->onDestroy()V

    .line 435
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->receiver:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mWebView:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 422
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yofi/sdk/activity/YofiBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 427
    invoke-super {p0}, Lcom/yofi/sdk/activity/YofiBaseActivity;->onResume()V

    .line 428
    invoke-static {}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    return-void
.end method

.method public qqLogin(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 782
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "callback"

    .line 783
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    .line 785
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p1, p0}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 786
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 787
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v0, "get_simple_userinfo"

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->mUiListener:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_0

    .line 791
    :cond_0
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$14;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$14;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public sdkMaidian(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 852
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 853
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "param"

    .line 854
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 855
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->sdkStage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 857
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public taptapLogin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 704
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "callback"

    .line 705
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->tapTpaLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public wxLogin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 757
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "callback"

    .line 758
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->callBack:Ljava/lang/String;

    .line 760
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 761
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v0, "snsapi_userinfo"

    .line 762
    iput-object v0, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 763
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    goto :goto_0

    .line 766
    :cond_0
    new-instance p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$13;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$13;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
