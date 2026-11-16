.class public final Lcom/taptap/sdk/login/internal/LoginManager$init$1$1;
.super Lcom/taptap/sdk/login/internal/net/HttpCallback;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/LoginManager$init$1;->invoke(Lcom/taptap/sdk/login/AccessToken;)V
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
        "com/taptap/sdk/login/internal/LoginManager$init$1$1",
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
.field final synthetic $token:Lcom/taptap/sdk/login/AccessToken;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/LoginManager$init$1$1;->$token:Lcom/taptap/sdk/login/AccessToken;

    .line 71
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/HttpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/login/internal/bean/Profile;)V
    .locals 9

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/taptap/sdk/login/internal/LoginManager$init$1$1;->$token:Lcom/taptap/sdk/login/AccessToken;

    .line 74
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    new-instance v8, Lcom/taptap/sdk/login/TapTapAccount;

    .line 76
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getOpenId()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getUnionId()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getAvatar()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/Profile;->getEmail()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    .line 74
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/login/TapTapAccount;-><init>(Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/taptap/sdk/login/internal/AccountManager;->setAccount(Lcom/taptap/sdk/login/TapTapAccount;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/taptap/sdk/login/internal/bean/Profile;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/LoginManager$init$1$1;->onSuccess(Lcom/taptap/sdk/login/internal/bean/Profile;)V

    return-void
.end method
