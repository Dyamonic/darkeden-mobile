.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;
.super Ljava/lang/Object;
.source "TapHttpRetry.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkDefault"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0003\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;",
        "backoff",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V",
        "nextRetryMillis",
        "",
        "e",
        "",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V
    .locals 1

    const-string v0, "backoff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;->backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-void
.end method


# virtual methods
.method public nextRetryMillis(Ljava/lang/Throwable;)J
    .locals 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    const/16 v1, 0x258

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 26
    check-cast p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getHttpCode()I

    move-result v0

    if-gt v2, v0, :cond_0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 27
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;->backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->nextBackoffMillis()J

    move-result-wide v0

    goto/16 :goto_3

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;->backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->nextBackoffMillis()J

    move-result-wide v0

    goto :goto_3

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid_time"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    sget-object v0, Lcom/taptap/sdk/kit/internal/http/TapTime;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapTime;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getResponse()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getNow()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapTime;->calibrateServerTime(Ljava/lang/Integer;)V

    .line 36
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;->backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->canInvalidTimeRetry()Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_3

    .line 43
    :cond_3
    instance-of v0, p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    if-eqz v0, :cond_5

    .line 44
    check-cast p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->getHttpCode()I

    move-result p1

    if-gt v2, p1, :cond_4

    if-ge p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz v3, :cond_7

    .line 45
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;->backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->nextBackoffMillis()J

    move-result-wide v0

    goto :goto_3

    .line 49
    :cond_5
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    instance-of v3, p1, Ljava/net/SocketTimeoutException;

    :goto_2
    if-eqz v3, :cond_7

    .line 50
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;->backoff:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->nextBackoffMillis()J

    move-result-wide v0

    goto :goto_3

    :cond_7
    const-wide/16 v0, -0x1

    :goto_3
    return-wide v0
.end method
