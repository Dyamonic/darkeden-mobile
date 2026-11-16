.class Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;
.super Ljava/lang/Object;
.source "TdsActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->registerCallback(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$000(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$000(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$000(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$100(Landroid/app/Activity;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$200()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$300()Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$302(Z)Z

    .line 70
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->access$400(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;)V

    :cond_0
    return-void
.end method
