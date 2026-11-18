.class public final Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;
.super Ljava/lang/Object;
.source "TapHttpCall.kt"

# interfaces
.implements Lcom/taptap/sdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueueInner(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3",
        "Lcom/taptap/sdk/okhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lcom/taptap/sdk/okhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lcom/taptap/sdk/okhttp3/Response;",
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "TDataBean;>;"
        }
    .end annotation
.end field

.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlinx/coroutines/CancellableContinuation;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TDataBean;>;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-wide p3, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$startTime:J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 10

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->enableTechnicalLog$tap_kit_release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 133
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    new-instance v9, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onFailure$1;

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iget-wide v5, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$startTime:J

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onFailure$1;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;JJ)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const-string p1, "http_performance"

    invoke-virtual {v0, p1, v9}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Response;)V
    .locals 11

    const-string v0, "http_performance"

    const-string v1, "call"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->access$getHttpParser$p(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;)Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;->parse-IoAF18A(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;

    move-result-object p2

    .line 87
    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iget-object v8, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iget-wide v4, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$startTime:J

    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->enableTechnicalLog$tap_kit_release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    sget-object v9, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    new-instance v10, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$1$1;

    move-object v1, v10

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$1$1;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;JJ)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v0, v10}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 103
    :cond_0
    check-cast v8, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iget-wide v3, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$startTime:J

    iget-object v6, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 106
    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->access$onResultFailure(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;JLjava/lang/Throwable;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 109
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->enableTechnicalLog$tap_kit_release()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 111
    sget-object v9, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    new-instance v10, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iget-wide v5, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$startTime:J

    move-object v1, v10

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;-><init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;Ljava/lang/Throwable;JJ)V

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v0, v10}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
