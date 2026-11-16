.class public final Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt;
.super Ljava/lang/Object;
.source "TapHttpExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a>\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u0005H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a8\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0003\"\u0006\u0008\u0000\u0010\u000b\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u000cH\u0086\u0008\u001a\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0003*\u0006\u0012\u0002\u0008\u00030\u000c\u001a\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0003*\u0006\u0012\u0002\u0008\u00030\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "enqueueResult",
        "Lkotlin/Result;",
        "T",
        "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;",
        "onSuccess",
        "Lkotlin/Function1;",
        "",
        "(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeResult",
        "(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "toCall",
        "DataBean",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "toEventCall",
        "",
        "toOpenLogCall",
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
.method public static final enqueueResult(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;

    iget v1, v0, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;

    invoke-direct {v0, p2}, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 21
    iget v1, v4, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v4, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    move-object v1, p0

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v5, 0x0

    const/4 p0, 0x1

    const/4 p2, 0x0

    iput-object p1, v4, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->L$0:Ljava/lang/Object;

    iput v2, v4, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$enqueueResult$1;->label:I

    move-wide v2, v5

    move v5, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p0
.end method

.method public static final executeResult(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->executeResult-IoAF18A$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final synthetic toCall(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;)Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DataBean:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "*>;)",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 15
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v2, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$toCall$1;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt$toCall$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4, v3}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 18
    new-instance v2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 13
    invoke-direct {v0, p0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    return-object v0
.end method

.method public static final toEventCall(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;)Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "*>;)",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 30
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$EventParser;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$EventParser;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 31
    new-instance v2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$NoneRetry;

    invoke-direct {v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$NoneRetry;-><init>()V

    check-cast v2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 28
    invoke-direct {v0, p0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    return-object v0
.end method

.method public static final toOpenLogCall(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;)Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "*>;)",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 37
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$OpenLogParser;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$OpenLogParser;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 38
    new-instance v2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$NoneRetry;

    invoke-direct {v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$NoneRetry;-><init>()V

    check-cast v2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 35
    invoke-direct {v0, p0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    return-object v0
.end method
