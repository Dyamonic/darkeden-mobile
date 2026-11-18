.class final Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/taptap/sdk/login/internal/bean/Profile;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/taptap/sdk/login/internal/bean/Profile;",
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
.field final synthetic $callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
            "Lcom/taptap/sdk/login/internal/bean/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/net/HttpCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
            "Lcom/taptap/sdk/login/internal/bean/Profile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$1;->$callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, Lcom/taptap/sdk/login/internal/bean/Profile;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$1;->invoke(Lcom/taptap/sdk/login/internal/bean/Profile;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/taptap/sdk/login/internal/bean/Profile;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$1;->$callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/login/internal/net/HttpCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
