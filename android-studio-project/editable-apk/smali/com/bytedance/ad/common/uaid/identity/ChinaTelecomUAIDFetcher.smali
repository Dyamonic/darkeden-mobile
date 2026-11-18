.class public final Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;
.super Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;",
        "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;",
        "config",
        "Lcom/bytedance/ad/common/uaid/identity/Config;",
        "(Lcom/bytedance/ad/common/uaid/identity/Config;)V",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "fetchNewToken",
        "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;",
        "context",
        "Landroid/content/Context;",
        "network",
        "Landroid/net/Network;",
        "Companion",
        "uaid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final CARRIER:Ljava/lang/String; = "2"

.field public static final Companion:Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$Companion;

.field private static final TELECOM_URL:Ljava/lang/String; = "https://id6.me/gw/preuniq.do"

.field public static final VENDOR:Ljava/lang/String; = "2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;->Companion:Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V

    return-void
.end method


# virtual methods
.method public fetchNewToken(Landroid/content/Context;Landroid/net/Network;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/ad/common/uaid/identity/utils/EncryptUtils;->produceRandomStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://id6.me/gw/preuniq.do"

    invoke-static {v1, v0}, Lcom/bytedance/ad/common/uaid/identity/utils/RequestBodyUtils;->packTelecom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher$fetchNewToken$1;-><init>(Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    check-cast v3, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;

    const/4 p1, 0x0

    invoke-static {p2, v1, p1, v3}, Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils;->doPost(Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ad/common/uaid/identity/utils/HttpUtils$OnResponseListener;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method
