.class final Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginResponse(Landroid/content/Context;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/login/internal/bean/LoginResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $response:Lcom/taptap/sdk/login/internal/bean/LoginResponse;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/bean/LoginResponse;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;->$response:Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    iput-object p2, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;->$response:Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getServerUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;->$context:Landroid/content/Context;

    .line 205
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "name"

    .line 206
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v2, Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;->INSTANCE:Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;

    .line 209
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/taptap/sdk/login/R$string;->login_account_logged_tip:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr\u2026account_logged_tip, name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2, v3, v0}, Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
