.class public final Lcom/bytedance/bdtracker/e1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/e1;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/e1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/e1$a;->a:Lcom/bytedance/bdtracker/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/e1$a;->a:Lcom/bytedance/bdtracker/e1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/e1;->c:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->getCurrActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/e1$a;->a:Lcom/bytedance/bdtracker/e1;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/e1;->c:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 4
    invoke-virtual {v1, v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->checkViewExposureFromActivity$agent_liteChinaRelease(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
