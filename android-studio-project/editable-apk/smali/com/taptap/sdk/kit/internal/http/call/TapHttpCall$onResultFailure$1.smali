.class final Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TapHttpCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->onResultFailure(Lcom/taptap/sdk/okhttp3/Call;JLjava/lang/Throwable;Lkotlinx/coroutines/CancellableContinuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "DataBean",
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


# instance fields
.field final synthetic $call:Lcom/taptap/sdk/okhttp3/Call;

.field final synthetic $endTime:J

.field final synthetic $it:Ljava/lang/Throwable;

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
.method constructor <init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;JJLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;",
            "Lcom/taptap/sdk/okhttp3/Call;",
            "JJ",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$call:Lcom/taptap/sdk/okhttp3/Call;

    iput-wide p3, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$startTime:J

    iput-wide p5, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$endTime:J

    iput-object p7, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$it:Ljava/lang/Throwable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "succeed"

    const-string v2, "0"

    .line 164
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 165
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->moduleName$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 166
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->moduleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 167
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$call:Lcom/taptap/sdk/okhttp3/Call;

    invoke-interface {v1}, Lcom/taptap/sdk/okhttp3/Call;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 168
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$call:Lcom/taptap/sdk/okhttp3/Call;

    invoke-interface {v1}, Lcom/taptap/sdk/okhttp3/Call;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 169
    iget-wide v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$startTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 170
    iget-wide v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$endTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 163
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$it:Ljava/lang/Throwable;

    .line 173
    instance-of v2, v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    const-string v3, "http_code"

    if-eqz v2, :cond_0

    .line 174
    check-cast v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$onResultFailure$1;->$it:Ljava/lang/Throwable;

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getHttpCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    instance-of v2, v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    if-eqz v2, :cond_1

    .line 179
    check-cast v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;->getHttpCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_1
    instance-of v2, v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;

    const-string v4, "local_error_msg"

    if-eqz v2, :cond_2

    .line 183
    check-cast v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;->getHttpCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ParseDataError"

    .line 184
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_2
    instance-of v1, v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;

    if-eqz v1, :cond_3

    const-string v1, "UnknownError"

    .line 188
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object v0
.end method
