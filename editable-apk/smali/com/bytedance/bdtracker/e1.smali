.class public final Lcom/bytedance/bdtracker/e1;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bytedance/applog/exposure/task/ViewExposureTask;",
        "",
        "manager",
        "Lcom/bytedance/applog/exposure/ViewExposureManager;",
        "(Lcom/bytedance/applog/exposure/ViewExposureManager;)V",
        "checkStrategy",
        "Lcom/bytedance/applog/exposure/task/BaseCheckExposureStrategy;",
        "getCheckStrategy",
        "()Lcom/bytedance/applog/exposure/task/BaseCheckExposureStrategy;",
        "setCheckStrategy",
        "(Lcom/bytedance/applog/exposure/task/BaseCheckExposureStrategy;)V",
        "checkTask",
        "Ljava/lang/Runnable;",
        "check",
        "",
        "updateExposureCheckStrategy",
        "exposureCheckType",
        "Lcom/bytedance/applog/exposure/ExposureCheckType;",
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
.field public final a:Ljava/lang/Runnable;

.field public b:Lcom/bytedance/bdtracker/a1;

.field public final c:Lcom/bytedance/applog/exposure/ViewExposureManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/e1;->c:Lcom/bytedance/applog/exposure/ViewExposureManager;

    new-instance p1, Lcom/bytedance/bdtracker/e1$a;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/e1$a;-><init>(Lcom/bytedance/bdtracker/e1;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/e1;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/bdtracker/b1;

    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/b1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/e1;->b:Lcom/bytedance/bdtracker/a1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/applog/exposure/ExposureCheckType;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/bdtracker/d1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :goto_0
    new-instance p1, Lcom/bytedance/bdtracker/b1;

    iget-object v0, p0, Lcom/bytedance/bdtracker/e1;->a:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Lcom/bytedance/bdtracker/b1;-><init>(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/bytedance/bdtracker/c1;

    iget-object v0, p0, Lcom/bytedance/bdtracker/e1;->a:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Lcom/bytedance/bdtracker/c1;-><init>(Ljava/lang/Runnable;)V

    :goto_1
    iput-object p1, p0, Lcom/bytedance/bdtracker/e1;->b:Lcom/bytedance/bdtracker/a1;

    return-void
.end method
