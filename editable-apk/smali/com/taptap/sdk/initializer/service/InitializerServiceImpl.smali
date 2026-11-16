.class public final Lcom/taptap/sdk/initializer/service/InitializerServiceImpl;
.super Ljava/lang/Object;
.source "InitializerServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/initializer/api/service/InitializerService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u000f\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/service/InitializerServiceImpl;",
        "Lcom/taptap/sdk/initializer/api/service/InitializerService;",
        "()V",
        "checkInitialize",
        "",
        "getAchievementUrl",
        "",
        "type",
        "getAppId",
        "",
        "()Ljava/lang/Integer;",
        "getReviewUrl",
        "getShareUrl",
        "tap-initializer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInitialize()Z
    .locals 5

    .line 44
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->hasInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u5f53\u524d\u5e94\u7528\u8fd8\u672a\u521d\u59cb\u5316"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x4

    const-string v2, "TapInitializer"

    const-string v3, "\u5f53\u524d\u5e94\u7528\u8fd8\u672a\u521d\u59cb\u5316: \u8bf7\u5728\u8c03\u7528 SDK \u4e1a\u52a1\u63a5\u53e3\u524d\uff0c\u5148\u8c03\u7528 [TapTapSDK.init()] \u63a5\u53e3"

    const/4 v4, 0x0

    .line 46
    invoke-static {v2, v3, v4, v0, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getGatekeeperError$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt;->showGatekeeperError(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public getAchievementUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webview"

    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getAchievementUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "uri"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getAchievementUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getTapUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_1
    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getAchievementUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getBrowserUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getAppId()Ljava/lang/Integer;
    .locals 1

    .line 15
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getAppId()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getReviewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webview"

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getReviewUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "uri"

    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getReviewUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getTapUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getReviewUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getBrowserUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getShareUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webview"

    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getShareUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "uri"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getShareUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getTapUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getUrls()Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;->getShareUrl()Lcom/taptap/sdk/initializer/gate/Url;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/Url;->getBrowserUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method
