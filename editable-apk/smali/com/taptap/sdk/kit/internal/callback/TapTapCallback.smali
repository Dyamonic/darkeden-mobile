.class public interface abstract Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;
.super Ljava/lang/Object;
.source "TapTapCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/callback/TapTapCallback$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0015\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "RESULT",
        "",
        "onCancel",
        "",
        "onFail",
        "exception",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "onSuccess",
        "result",
        "(Ljava/lang/Object;)V",
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


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method
