.class public Lcom/bytedance/bdtracker/q3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/r3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/r3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/q3;->a:Lcom/bytedance/bdtracker/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/q3;->a:Lcom/bytedance/bdtracker/r3;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/r3;->d:Lcom/bytedance/applog/profile/UserProfileCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    :cond_0
    return-void
.end method
