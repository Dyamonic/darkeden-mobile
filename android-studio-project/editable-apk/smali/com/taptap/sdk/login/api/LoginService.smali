.class public interface abstract Lcom/taptap/sdk/login/api/LoginService;
.super Ljava/lang/Object;
.source "LoginService.kt"

# interfaces
.implements Lcom/taptap/sdk/servicemanager/ServiceManager$Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J9\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH&\u00a2\u0006\u0002\u0010\rJ9\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cH&\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0010\u001a\u00020\u0003H&J1\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H&\u00a2\u0006\u0002\u0010\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J9\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH&\u00a2\u0006\u0002\u0010\rJ9\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000cH&\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u001a\u001a\u00020\u0003H&J\"\u0010\u001b\u001a\u00020\u00032\u0018\u0010\u000b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0004\u0012\u00020\u00030\u001cH&J\u0008\u0010\u001d\u001a\u00020\u0003H&\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/taptap/sdk/login/api/LoginService;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "authWithScope",
        "",
        "activity",
        "Landroid/app/Activity;",
        "scopes",
        "",
        "",
        "isPreApproved",
        "",
        "callback",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V",
        "authWithScopeInternal",
        "Lcom/taptap/sdk/login/AccessToken;",
        "cancelLogin",
        "continueWebLogin",
        "token",
        "preferredLoginType",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V",
        "getAccount",
        "getCurrentTapAccount",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "loginWithScope",
        "loginWithScopeInternal",
        "logout",
        "registerClientLoginCallback",
        "Lkotlin/Function1;",
        "removeClientLoginCallback",
        "tap-login-api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract authWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract authWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/AccessToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelLogin()V
.end method

.method public abstract continueWebLogin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;
.end method

.method public abstract loginWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/TapTapAccount;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logout()V
.end method

.method public abstract registerClientLoginCallback(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeClientLoginCallback()V
.end method
