.class public final Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;
.super Landroid/app/Fragment;
.source "PhoneLoginFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;",
        "Landroid/app/Fragment;",
        "()V",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
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
.field private request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget p3, Lcom/taptap/sdk/login/R$layout;->activty_tap_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    .line 28
    sget-object p1, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    new-instance p2, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;-><init>(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;)V

    check-cast p2, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->setResultCallback(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;)V

    return-void
.end method
