.class public final Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;
.super Lcom/taptap/sdk/login/internal/net/HttpCallback;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginWithToken(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
        "Lcom/taptap/sdk/login/internal/bean/Profile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1",
        "Lcom/taptap/sdk/login/internal/net/HttpCallback;",
        "Lcom/taptap/sdk/login/internal/bean/Profile;",
        "onFail",
        "",
        "exception",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "onSuccess",
        "result",
        "tap-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $onSuccessCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

.field final synthetic $token:Lcom/taptap/sdk/login/AccessToken;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/AccessToken;Lkotlin/jvm/functions/Function0;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->$token:Lcom/taptap/sdk/login/AccessToken;

    iput-object p2, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->$onSuccessCallback:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->$request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    .line 259
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/HttpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->$request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    new-instance v1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string v2, "Fail to fetch profile"

    invoke-direct {v1, v2}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/login/internal/bean/Profile;)V
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/taptap/sdk/login/TapTapAccount;

    .line 262
    iget-object v2, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->$token:Lcom/taptap/sdk/login/AccessToken;

    .line 263
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getOpenId()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getUnionId()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getEmail()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    .line 261
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/login/TapTapAccount;-><init>(Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object p1, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/login/internal/AccountManager;->setAccount(Lcom/taptap/sdk/login/TapTapAccount;)V

    .line 270
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->$onSuccessCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 271
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    .line 272
    sget-object v1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v1

    .line 274
    sget-object v2, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v2}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v2

    const-string v3, "login_type"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 273
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "loginWithScopes"

    .line 271
    invoke-virtual {p1, v3, v1, v2}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackSuccess$tap_login_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/LoginManager;->access$setHandlingResponse$p(Z)V

    .line 278
    invoke-static {}, Lcom/taptap/sdk/login/internal/LoginManager;->access$getLoginCallback$p()Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onSuccess(Ljava/lang/Object;)V

    .line 279
    :cond_0
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/LoginManager;->access$setLoginCallback$p(Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Lcom/taptap/sdk/login/internal/bean/Profile;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;->onSuccess(Lcom/taptap/sdk/login/internal/bean/Profile;)V

    return-void
.end method
