.class final Lcom/taptap/sdk/login/internal/net/NetworkClient$tokenHttp$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/net/NetworkClient;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
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
.field final synthetic this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$tokenHttp$2;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 3

    .line 41
    sget-object v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->Companion:Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;

    const-string v1, "TapLogin"

    const-string v2, "4.5.4"

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$tokenHttp$2;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    invoke-static {v1}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->access$getTokenDomain(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->domain(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/taptap/sdk/login/internal/net/TapSignLogin;

    invoke-direct {v1}, Lcom/taptap/sdk/login/internal/net/TapSignLogin;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->signHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->build()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient$tokenHttp$2;->invoke()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    return-object v0
.end method
