.class final Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/net/Network;",
        "kotlin.jvm.PlatformType",
        "networkAvailable"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final $targetUaidFetcher:Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

.field final this$0:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;


# direct methods
.method constructor <init>(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;->$targetUaidFetcher:Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final networkAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;->$targetUaidFetcher:Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;

    iget-object v1, v1, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getToken(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;

    iget-object v0, v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->getInstance(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->unregisterNetwork()V

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;

    iget-object v0, v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;->getResult(Lcom/bytedance/ad/common/uaid/identity/UAIDResult;)V

    :cond_0
    return-void
.end method
