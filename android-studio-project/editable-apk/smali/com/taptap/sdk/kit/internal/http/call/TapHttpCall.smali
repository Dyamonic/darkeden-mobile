.class public final Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
.super Ljava/lang/Object;
.source "TapHttpCall.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataBean:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall<",
        "TDataBean;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpCall.kt\ncom/taptap/sdk/kit/internal/http/call/TapHttpCall\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,221:1\n314#2,11:222\n*S KotlinDebug\n*F\n+ 1 TapHttpCall.kt\ncom/taptap/sdk/kit/internal/http/call/TapHttpCall\n*L\n59#1:222,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\'\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0019\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0019\u0010\u0010\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0011\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0003\u00a2\u0006\u0002\u0010\u0012J.\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;",
        "DataBean",
        "Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;",
        "param",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "httpParser",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;",
        "httpRetry",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;",
        "(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V",
        "getParam",
        "()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "enqueue",
        "delay",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "enqueueInner",
        "execute",
        "(J)Ljava/lang/Object;",
        "executeInner",
        "onResultFailure",
        "",
        "call",
        "Lcom/taptap/sdk/okhttp3/Call;",
        "startTime",
        "it",
        "",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
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
.field private final httpParser:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser<",
            "TDataBean;>;"
        }
    .end annotation
.end field

.field private final httpRetry:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

.field private final param:Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "*>;",
            "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser<",
            "TDataBean;>;",
            "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;",
            ")V"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpParser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRetry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->param:Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 21
    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->httpParser:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 22
    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->httpRetry:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    return-void
.end method

.method public static final synthetic access$enqueueInner(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueueInner(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHttpParser$p(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;)Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->httpParser:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    return-object p0
.end method

.method public static final synthetic access$onResultFailure(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;JLjava/lang/Throwable;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->onResultFailure(Lcom/taptap/sdk/okhttp3/Call;JLjava/lang/Throwable;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method private final enqueueInner(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-TDataBean;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;

    iget v1, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;

    invoke-direct {v0, p0, p3}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p3, p1, v5

    if-lez p3, :cond_4

    .line 57
    iput-object p0, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->label:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 222
    :goto_1
    iput-object p1, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$1;->label:I

    .line 223
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p3

    invoke-direct {p2, p3, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 229
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 230
    move-object p3, p2

    check-cast p3, Lkotlinx/coroutines/CancellableContinuation;

    .line 60
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->newCall$tap_kit_release()Lcom/taptap/sdk/okhttp3/Call;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 64
    invoke-interface {p3}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_5

    .line 65
    move-object v4, p3

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 68
    :cond_5
    :goto_2
    new-instance v3, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$1;

    invoke-direct {v3, v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, v3}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 71
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->enableTechnicalLog$tap_kit_release()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    sget-object v3, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    new-instance v4, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;

    invoke-direct {v4, p1, v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-string v5, "http_execute"

    invoke-virtual {v3, v5, v4}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 82
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 83
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/taptap/sdk/okhttp3/Call;

    if-eqz v2, :cond_7

    new-instance v5, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;

    invoke-direct {v5, p1, p3, v3, v4}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlinx/coroutines/CancellableContinuation;J)V

    check-cast v5, Lcom/taptap/sdk/okhttp3/Callback;

    invoke-interface {v2, v5}, Lcom/taptap/sdk/okhttp3/Call;->enqueue(Lcom/taptap/sdk/okhttp3/Callback;)V

    .line 231
    :cond_7
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p3

    .line 222
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_8

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_8
    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    return-object p3
.end method

.method private final executeInner(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TDataBean;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->param:Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->newCall$tap_kit_release()Lcom/taptap/sdk/okhttp3/Call;

    move-result-object p1

    .line 207
    invoke-interface {p1}, Lcom/taptap/sdk/okhttp3/Call;->execute()Lcom/taptap/sdk/okhttp3/Response;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->httpParser:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;->parse-IoAF18A(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;

    move-result-object p1

    .line 209
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 213
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 214
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_2
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;

    invoke-direct {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 217
    throw p1
.end method

.method private final onResultFailure(Lcom/taptap/sdk/okhttp3/Call;JLjava/lang/Throwable;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/okhttp3/Call;",
            "J",
            "Ljava/lang/Throwable;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TDataBean;>;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->param:Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->enableTechnicalLog$tap_kit_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 162
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    new-instance v9, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;JJLjava/lang/Throwable;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const-string p1, "http_performance"

    invoke-virtual {v0, p1, v9}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 194
    :cond_0
    invoke-interface {p5}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 195
    check-cast p5, Lkotlin/coroutines/Continuation;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enqueue(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-TDataBean;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;

    iget v1, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;

    invoke-direct {v0, p0, p3}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget v2, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    :try_start_1
    iput-object p0, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueueInner(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p3, v1, :cond_4

    return-object v1

    :catchall_1
    move-exception p2

    move-object p1, p0

    .line 31
    :goto_1
    iget-object p3, p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->httpRetry:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    invoke-interface {p3, p2}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;->nextRetryMillis(Ljava/lang/Throwable;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-ltz p3, :cond_5

    const/4 p2, 0x0

    .line 33
    iput-object p2, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueue$1;->label:I

    invoke-virtual {p1, v4, v5, v0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueue(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object p3

    .line 35
    :cond_5
    throw p2
.end method

.method public enqueueResult-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TDataBean;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TDataBean;"
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->executeInner(J)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 45
    iget-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->httpRetry:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    invoke-interface {p2, p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;->nextRetryMillis(Ljava/lang/Throwable;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->execute(J)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 49
    :cond_0
    throw p1
.end method

.method public executeResult-IoAF18A(J)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->executeResult-IoAF18A(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "*>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->param:Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    return-object v0
.end method
