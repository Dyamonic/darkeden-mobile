.class public final Lcom/bytedance/bdtracker/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/w;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Lcom/bytedance/bdtracker/c$a;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/c$a;-><init>(Lcom/bytedance/bdtracker/c;Lcom/bytedance/bdtracker/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
