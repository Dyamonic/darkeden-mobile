.class public final Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;
.super Lcom/taptap/sdk/kit/internal/exception/TapTapException;
.source "TapHttpException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/TapHttpException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoServerError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "httpCode",
        "",
        "httpBody",
        "",
        "(ILjava/lang/String;)V",
        "getHttpBody",
        "()Ljava/lang/String;",
        "getHttpCode",
        "()I",
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
.field private final httpBody:Ljava/lang/String;

.field private final httpCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoServerError(code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->httpCode:I

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->httpBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getHttpBody()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->httpBody:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->httpCode:I

    return v0
.end method
