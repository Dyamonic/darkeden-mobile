.class public final Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;->fetchNewToken(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1",
        "Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;",
        "onFailure",
        "",
        "onResponse",
        "response",
        "",
        "uaid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final $context:Landroid/content/Context;

.field final $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final $randomKey:Ljava/lang/String;

.field final this$0:Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;


# direct methods
.method constructor <init>(Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$randomKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v0

    const-string v1, "51128"

    invoke-virtual {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 9

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ad/common/uaid/identity/utils/EncryptUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$randomKey:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/bytedance/ad/common/uaid/identity/utils/EncryptUtils;->aesCipher(Z[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "accessCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data.getString(\"accessCode\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "01128"

    move-object v4, p1

    move-object v3, v0

    goto :goto_0

    :catch_0
    const-string p1, "51128"

    :cond_0
    move-object v3, p1

    move-object v4, v0

    :goto_0
    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/SIMUtils;->getCurrentSimSubId(Landroid/content/Context;)I

    move-result v6

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->this$0:Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;

    invoke-virtual {p1}, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v2, "2"

    const-string v5, "2"

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
