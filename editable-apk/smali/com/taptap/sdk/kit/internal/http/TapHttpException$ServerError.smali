.class public final Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;
.super Lcom/taptap/sdk/kit/internal/exception/TapTapException;
.source "TapHttpException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/TapHttpException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "httpCode",
        "",
        "response",
        "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;",
        "error",
        "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;",
        "(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;)V",
        "getError",
        "()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;",
        "getHttpCode",
        "()I",
        "getResponse",
        "()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;",
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
.field private final error:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

.field private final httpCode:I

.field private final response:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "*>;",
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;",
            ")V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    .line 14
    iput p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->httpCode:I

    .line 15
    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->response:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    .line 16
    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->error:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    return-void
.end method


# virtual methods
.method public final getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->error:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    return-object v0
.end method

.method public final getHttpCode()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->httpCode:I

    return v0
.end method

.method public final getResponse()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "*>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->response:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    return-object v0
.end method
