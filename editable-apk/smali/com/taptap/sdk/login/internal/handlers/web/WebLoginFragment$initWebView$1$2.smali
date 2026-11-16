.class public final Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;
.super Landroid/webkit/WebViewClient;
.source "WebLoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->initWebView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "shouldOverrideUrlLoading",
        "",
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
.field final synthetic this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    .line 180
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->access$endLoadingAnimation(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    .line 187
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 188
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-static {p2}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    return v0

    .line 191
    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    if-nez p1, :cond_5

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "tapoauth"

    invoke-static {p1, v4, v0, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 194
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 195
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    .line 196
    iget-object v2, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-virtual {v2}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-static {v3}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-result-object v3

    new-instance v11, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    const-string v4, "state"

    .line 197
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    move-object v5, v4

    const/4 v6, 0x0

    const-string v4, "code"

    .line 199
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "error"

    .line 200
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v11

    move-object v10, p2

    .line 196
    invoke-direct/range {v4 .. v10}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;-><init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 195
    invoke-virtual {v0, v2, v3, v11}, Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginResponse(Landroid/content/Context;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/login/internal/bean/LoginResponse;)V

    .line 205
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v1

    :cond_5
    :goto_2
    return v0
.end method
