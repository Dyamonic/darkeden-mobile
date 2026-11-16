.class public final Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;
.super Lcom/taptap/sdk/login/internal/net/HttpCallback;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginWithCode(Ljava/lang/String;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
        "Lcom/taptap/sdk/login/AccessToken;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1",
        "Lcom/taptap/sdk/login/internal/net/HttpCallback;",
        "Lcom/taptap/sdk/login/AccessToken;",
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
.field final synthetic $onSuccessCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;->$request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    iput-object p2, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;->$onSuccessCallback:Lkotlin/jvm/functions/Function0;

    .line 236
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/HttpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;->$request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    new-instance v1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string v2, "Fail to login"

    invoke-direct {v1, v2}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/login/AccessToken;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;->$request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    iget-object v2, p0, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;->$onSuccessCallback:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1, v1, v2}, Lcom/taptap/sdk/login/internal/LoginManager;->access$handleLoginWithToken(Lcom/taptap/sdk/login/internal/LoginManager;Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p1, Lcom/taptap/sdk/login/AccessToken;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;->onSuccess(Lcom/taptap/sdk/login/AccessToken;)V

    return-void
.end method
