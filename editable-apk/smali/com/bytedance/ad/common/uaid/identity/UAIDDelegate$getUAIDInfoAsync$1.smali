.class final Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->getUAIDInfoAsync(Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final $callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

.field final $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->INSTANCE:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->access$checkNetWorkPermission(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "41128"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/ad/common/uaid/identity/utils/SIMUtils;->getSimOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->INSTANCE:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;

    invoke-static {v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->access$getUaidFetcherMap$p(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->getErrCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-11128"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->getInstance(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    move-result-object v1

    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1$1;-><init>(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;)V

    check-cast v2, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;

    invoke-virtual {v1, v2}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->requestCellular(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;->getResult(Lcom/bytedance/ad/common/uaid/identity/UAIDResult;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    const-string v2, "11128"

    invoke-direct {v1, v2}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;->getResult(Lcom/bytedance/ad/common/uaid/identity/UAIDResult;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    invoke-direct {v2, v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;->getResult(Lcom/bytedance/ad/common/uaid/identity/UAIDResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;->$callback:Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "unknow"

    :goto_0
    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    invoke-direct {v2, v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;->getResult(Lcom/bytedance/ad/common/uaid/identity/UAIDResult;)V

    :cond_4
    :goto_1
    return-void
.end method
