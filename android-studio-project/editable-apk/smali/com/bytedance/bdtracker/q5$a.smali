.class public Lcom/bytedance/bdtracker/q5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/q5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/q5;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/q5;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/q5$a;->a:Lcom/bytedance/bdtracker/q5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "Oaid#init switch thread"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/q5$a;->a:Lcom/bytedance/bdtracker/q5;

    invoke-static {v0}, Lcom/bytedance/bdtracker/q5;->a(Lcom/bytedance/bdtracker/q5;)V

    return-void
.end method
