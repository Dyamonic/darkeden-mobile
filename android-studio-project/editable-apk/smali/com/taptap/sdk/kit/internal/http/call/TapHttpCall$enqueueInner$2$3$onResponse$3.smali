.class final Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TapHttpCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3;->onResponse(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Response;)V
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

.field final synthetic $startTime:J

.field final synthetic $t:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lcom/taptap/sdk/okhttp3/Call;Ljava/lang/Throwable;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;",
            "Lcom/taptap/sdk/okhttp3/Call;",
            "Ljava/lang/Throwable;",
            "JJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$call:Lcom/taptap/sdk/okhttp3/Call;

    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$t:Ljava/lang/Throwable;

    iput-wide p4, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$startTime:J

    iput-wide p6, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$endTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "succeed"

    const-string v2, "0"

    .line 113
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 114
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->moduleName$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 115
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->moduleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 116
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$call:Lcom/taptap/sdk/okhttp3/Call;

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

    .line 117
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$call:Lcom/taptap/sdk/okhttp3/Call;

    invoke-interface {v1}, Lcom/taptap/sdk/okhttp3/Call;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 118
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$t:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local_error_msg"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 119
    iget-wide v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$startTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 120
    iget-wide v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$3$onResponse$3;->$endTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 112
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
