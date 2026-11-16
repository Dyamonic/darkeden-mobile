.class public final Lcom/bytedance/bdtracker/b1;
.super Lcom/bytedance/bdtracker/a1;
.source ""


# instance fields
.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "checkTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/bdtracker/a1;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/b1;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/a1;->a:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/bytedance/bdtracker/b1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/a1;->a:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lcom/bytedance/bdtracker/b1;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
