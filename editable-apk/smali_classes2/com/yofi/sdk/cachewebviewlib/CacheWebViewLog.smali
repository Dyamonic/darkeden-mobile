.class Lcom/yofi/sdk/cachewebviewlib/CacheWebViewLog;
.super Ljava/lang/Object;
.source "CacheWebViewLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheWebView"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    const-string v0, "CacheWebView"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "log",
            "show"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p0}, Lcom/yofi/sdk/cachewebviewlib/CacheWebViewLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
