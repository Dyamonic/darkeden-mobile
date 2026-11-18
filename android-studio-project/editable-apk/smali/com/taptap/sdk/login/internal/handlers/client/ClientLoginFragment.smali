.class public final Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;
.super Landroid/app/Fragment;
.source "ClientLoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u001c\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;",
        "Landroid/app/Fragment;",
        "()V",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "onViewCreated",
        "view",
        "Companion",
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
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment$Companion;

.field private static final KEY_RESPONSE:Ljava/lang/String; = "com.taptap.sdk.response"

.field private static final REQUEST_CODE:I = 0xa

.field private static final REQ_KEY_REQUEST:Ljava/lang/String; = "com.taptap.sdk.request"


# instance fields
.field private request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->Companion:Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 62
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    .line 63
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 p1, -0x1

    const-string v0, "Fail to login"

    if-eq p2, p1, :cond_2

    .line 67
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    new-instance p3, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    invoke-direct {p3, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 68
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "com.taptap.sdk.response"

    .line 71
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 73
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    new-instance p3, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    invoke-direct {p3, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 74
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 77
    :cond_4
    sget-object p2, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->Companion:Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;->parseFromBundle(Landroid/os/Bundle;)Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/content/Context;

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-virtual {p2, p3, v0, p1}, Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginResponse(Landroid/content/Context;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/login/internal/bean/LoginResponse;)V

    .line 79
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget p3, Lcom/taptap/sdk/login/R$layout;->activty_tap_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v0, :cond_0

    .line 84
    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "request"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz p2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 47
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/login/internal/handlers/client/IntentHelper;->getAction(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.taptap.sdk.request"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    if-nez v1, :cond_4

    .line 50
    move-object p1, p0

    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;

    const-string p2, "TapLogin"

    const-string v0, "Fail to get login request"

    .line 51
    invoke-static {p2, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/client/ClientLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method
