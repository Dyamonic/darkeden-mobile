.class Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$1;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptor.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;->initHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor$1;->this$0:Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hostname",
            "session"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
