.class public final Lcom/taptap/sdk/login/internal/service/AuthorizationServiceImpl;
.super Ljava/lang/Object;
.source "AuthorizationServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/common/services/AuthorizationService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/service/AuthorizationServiceImpl;",
        "Lcom/taptap/sdk/common/services/AuthorizationService;",
        "()V",
        "obtainAuthorization",
        "",
        "url",
        "method",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/AccountManager;->getAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 20
    sget-object v1, Lcom/taptap/sdk/login/internal/util/CodeUtil;->INSTANCE:Lcom/taptap/sdk/login/internal/util/CodeUtil;

    .line 23
    invoke-virtual {v0}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/login/AccessToken;->getKid()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/login/AccessToken;->getMacKey()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/taptap/sdk/login/internal/util/CodeUtil;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
