.class final Lcom/taptap/sdk/login/internal/LoginManager$init$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/LoginManager;->init(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "exception",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$init$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/LoginManager$init$2;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/LoginManager$init$2;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager$init$2;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$init$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/LoginManager$init$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    instance-of v0, p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid_grant"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    sget-object p1, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/AccountManager;->clearCache()V

    :cond_0
    return-void
.end method
