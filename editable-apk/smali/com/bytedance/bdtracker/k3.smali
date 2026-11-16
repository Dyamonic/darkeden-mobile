.class public final Lcom/bytedance/bdtracker/k3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u001e\u0010\u0015\u001a\u00020\u000f*\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0012H\u0002J\u0014\u0010\u0019\u001a\u00020\u000f*\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/bytedance/applog/oneid/OneIDManager;",
        "",
        "engine",
        "Lcom/bytedance/applog/engine/Engine;",
        "(Lcom/bytedance/applog/engine/Engine;)V",
        "appLogInstance",
        "Lcom/bytedance/applog/AppLogInstance;",
        "kotlin.jvm.PlatformType",
        "getEngine",
        "()Lcom/bytedance/applog/engine/Engine;",
        "logger",
        "Lcom/bytedance/applog/log/IAppLogLogger;",
        "mainHandler",
        "Landroid/os/Handler;",
        "bind",
        "",
        "identities",
        "",
        "",
        "callback",
        "Lcom/bytedance/applog/oneid/IDBindCallback;",
        "reportFail",
        "code",
        "",
        "message",
        "reportSuccess",
        "result",
        "Lcom/bytedance/applog/oneid/IDBindResult;",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/bdtracker/d;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/bytedance/applog/log/IAppLogLogger;

.field public final d:Lcom/bytedance/bdtracker/d0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 2

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/k3;->d:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, p1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iput-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/d;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/k3;->b:Landroid/os/Handler;

    .line 3
    iget-object p1, p1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    const-string v0, "engine.appLog"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    iput-object p1, p0, Lcom/bytedance/bdtracker/k3;->c:Lcom/bytedance/applog/log/IAppLogLogger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/oneid/IDBindCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "identities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/w;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Lcom/bytedance/bdtracker/k3$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/bdtracker/k3$a;-><init>(Lcom/bytedance/bdtracker/k3;Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
