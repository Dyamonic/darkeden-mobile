.class final Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapUpdateApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/internal/TapUpdateApiKt;
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 3

    .line 43
    sget-object v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->Companion:Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;

    const-string v1, "TapUpdate"

    const-string v2, "4.5.4"

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->connectTimeout(J)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->writeTimeout(J)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->readTimeout(J)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->domain(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpCompress$None;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpCompress$None;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->compressHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->signHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->build()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$netApi$2;->invoke()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    return-object v0
.end method
