.class public final Lcom/taptap/sdk/kit/internal/extensions/NetExtKt;
.super Ljava/lang/Object;
.source "NetExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "isBusinessError",
        "",
        "",
        "isNoHostError",
        "isServerError",
        "isTokenExpired",
        "tap-kit_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isBusinessError(Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    if-eqz v0, :cond_1

    .line 24
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "business_code_error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getCode()Ljava/lang/Integer;

    move-result-object p0

    const v0, 0x30d41

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final isNoHostError(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of p0, p0, Ljava/net/UnknownHostException;

    return p0
.end method

.method public static final isServerError(Ljava/lang/Throwable;)Z
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    const/16 v1, 0x258

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getHttpCode()I

    move-result v0

    if-gt v2, v0, :cond_0

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_4

    .line 9
    :cond_1
    instance-of v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->getHttpCode()I

    move-result p0

    if-gt v2, p0, :cond_2

    if-ge p0, v1, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v4

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :cond_4
    :goto_2
    return v3
.end method

.method public static final isTokenExpired(Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    if-eqz v0, :cond_1

    .line 18
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v1, "business_code_error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getCode()Ljava/lang/Integer;

    move-result-object p0

    const v0, 0x30d40

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
