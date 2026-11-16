.class final Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->getUAIDInfoSync(Landroid/content/Context;J)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
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
.field final $context:Landroid/content/Context;

.field final $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final $targetUaidFetcher:Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;


# direct methods
.method constructor <init>(Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$targetUaidFetcher:Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final networkAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$targetUaidFetcher:Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    iget-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getToken(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->getInstance(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->unregisterNetwork()V

    iget-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
