.class public final Lcom/taptap/sdk/login/ui/TapTapLoginActivity;
.super Landroid/app/Activity;
.source "TapTapLoginActivity.kt"

# interfaces
.implements Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016J\"\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u0012\u0010\u0012\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\u0015\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/taptap/sdk/login/ui/TapTapLoginActivity;",
        "Landroid/app/Activity;",
        "Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;",
        "()V",
        "impl",
        "Lcom/taptap/sdk/login/internal/LoginActivityImpl;",
        "loginRequest",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "fallbackToWeb",
        "",
        "request",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field private final impl:Lcom/taptap/sdk/login/internal/LoginActivityImpl;

.field private loginRequest:Lcom/taptap/sdk/login/internal/bean/LoginRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    new-instance v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/LoginActivityImpl;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->impl:Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    return-void
.end method


# virtual methods
.method public fallbackToWeb(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->impl:Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->fallbackToWeb(Landroid/app/Activity;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->impl:Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 33
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    iput-object v0, p0, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->loginRequest:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->impl:Lcom/taptap/sdk/login/internal/LoginActivityImpl;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->onCreate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 38
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v1, p0, Lcom/taptap/sdk/login/ui/TapTapLoginActivity;->loginRequest:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->onActivityDestroy(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    return-void
.end method
