.class public final Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "PhoneLoginFragment.kt"

# interfaces
.implements Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J1\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1",
        "Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;",
        "cancelLogin",
        "",
        "continueWebLogin",
        "token",
        "",
        "preferredLoginType",
        "scopes",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V",
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
.field final synthetic this$0:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLogin()V
    .locals 2

    .line 59
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->setResultCallback(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;)V

    .line 60
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    invoke-static {v1}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public continueWebLogin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    .line 34
    sget-object v1, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->setResultCallback(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;)V

    .line 35
    iget-object v1, v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    invoke-static {v1}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment$onViewCreated$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;

    .line 36
    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v4, v3, Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;

    :cond_0
    if-eqz v2, :cond_2

    .line 37
    new-instance v13, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    .line 38
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getClientId()Ljava/lang/String;

    move-result-object v5

    if-nez p3, :cond_1

    .line 40
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getScopes()[Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_1
    move-object/from16 v6, p3

    .line 41
    :goto_0
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getVersionCode()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 43
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getRegionType()I

    move-result v10

    .line 44
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getPreApproved()Z

    move-result v11

    .line 47
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getLoginVersion()Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getResponseType()Ljava/lang/String;

    move-result-object v15

    .line 49
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v16

    .line 50
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object v17

    .line 51
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const v20, 0x8020

    const/16 v21, 0x0

    move-object v3, v13

    move-object/from16 v12, p1

    move-object v1, v13

    move-object/from16 v13, p2

    .line 37
    invoke-direct/range {v3 .. v21}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    invoke-interface {v2, v1}, Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;->fallbackToWeb(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    :cond_2
    return-void
.end method
