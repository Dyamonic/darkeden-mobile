.class public final Lcom/taptap/sdk/update/internal/TapUpdateApiKt;
.super Ljava/lang/Object;
.source "TapUpdateApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0008\u0010\u0013\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0008\u001a\u00020\t8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\"\u001b\u0010\u000e\u001a\u00020\u000f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "HOST_CN",
        "",
        "HOST_IO",
        "HOST_RND_CN",
        "HOST_RND_IO",
        "INVALID_VERSION_CODE",
        "",
        "PATH_UPDATE_GAME",
        "netApi",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getNetApi",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "netApi$delegate",
        "Lkotlin/Lazy;",
        "updateScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getUpdateScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "updateScope$delegate",
        "getHost",
        "tap-update_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HOST_CN:Ljava/lang/String; = "tapsdk.tapapis.cn"

.field private static final HOST_IO:Ljava/lang/String; = "tapsdk.tapapis.com"

.field private static final HOST_RND_CN:Ljava/lang/String; = "tapsdk.api.xdrnd.cn"

.field private static final HOST_RND_IO:Ljava/lang/String; = "tapsdk.api.xdrnd.com"

.field public static final INVALID_VERSION_CODE:I = -0x1

.field public static final PATH_UPDATE_GAME:Ljava/lang/String; = "/app/v1/get-uri-by-identifier"

.field private static final netApi$delegate:Lkotlin/Lazy;

.field private static final updateScope$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->updateScope$delegate:Lkotlin/Lazy;

    .line 42
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->netApi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final getHost()Ljava/lang/String;
    .locals 2

    .line 32
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateInternal;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->getRegionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 33
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tapsdk.api.xdrnd.com"

    goto :goto_0

    :cond_0
    const-string v0, "tapsdk.tapapis.com"

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tapsdk.api.xdrnd.cn"

    goto :goto_0

    :cond_2
    const-string v0, "tapsdk.tapapis.cn"

    :goto_0
    return-object v0
.end method

.method public static final getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 42
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->netApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method

.method public static final getUpdateScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 24
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->updateScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method
