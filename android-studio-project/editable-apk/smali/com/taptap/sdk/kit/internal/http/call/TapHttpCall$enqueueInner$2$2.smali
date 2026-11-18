.class final Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapHttpCall.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueueInner(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $call:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/taptap/sdk/okhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall<",
            "TDataBean;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/taptap/sdk/okhttp3/Call;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    .line 74
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->moduleName$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->moduleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_code"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/taptap/sdk/okhttp3/Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/taptap/sdk/okhttp3/Call;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 77
    iget-object v3, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/taptap/sdk/okhttp3/Call;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/taptap/sdk/okhttp3/Call;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/taptap/sdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "method"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 78
    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall$enqueueInner$2$2;->this$0:Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->getParam()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getTechnicalLogParam$tap_kit_release()Ljava/lang/String;

    move-result-object v2

    const-string v3, "param"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
