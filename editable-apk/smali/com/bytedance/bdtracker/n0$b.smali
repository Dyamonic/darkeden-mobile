.class public Lcom/bytedance/bdtracker/n0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/n0;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Lcom/bytedance/bdtracker/b$e;

.field public final synthetic c:Lcom/bytedance/bdtracker/e4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/n0;Ljava/lang/Throwable;Lcom/bytedance/bdtracker/b$e;Lcom/bytedance/bdtracker/e4;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/bdtracker/n0$b;->a:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/bytedance/bdtracker/n0$b;->b:Lcom/bytedance/bdtracker/b$e;

    iput-object p4, p0, Lcom/bytedance/bdtracker/n0$b;->c:Lcom/bytedance/bdtracker/e4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/n0$b;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/p2;->b(Lcom/bytedance/bdtracker/m2;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/n0$b;->b:Lcom/bytedance/bdtracker/b$e;

    invoke-interface {v0, p1}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/n0$b;->c:Lcom/bytedance/bdtracker/e4;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/x3;)V

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->flush()V

    :cond_1
    return-void
.end method
