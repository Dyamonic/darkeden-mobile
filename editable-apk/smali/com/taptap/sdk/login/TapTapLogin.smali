.class public final Lcom/taptap/sdk/login/TapTapLogin;
.super Ljava/lang/Object;
.source "TapTapLogin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007J1\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\rH\u0007\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0006H\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/taptap/sdk/login/TapTapLogin;",
        "",
        "()V",
        "getCurrentTapAccount",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "loginWithScopes",
        "",
        "activity",
        "Landroid/app/Activity;",
        "scopes",
        "",
        "",
        "callback",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V",
        "logout",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/login/TapTapLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/TapTapLogin;

    invoke-direct {v0}, Lcom/taptap/sdk/login/TapTapLogin;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/TapTapLogin;->INSTANCE:Lcom/taptap/sdk/login/TapTapLogin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 30
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginManager;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    return-object v0
.end method

.method public static final loginWithScopes(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/TapTapAccount;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/taptap/sdk/login/internal/LoginManager;->loginWithScope(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public static final logout()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginManager;->logout()V

    return-void
.end method
