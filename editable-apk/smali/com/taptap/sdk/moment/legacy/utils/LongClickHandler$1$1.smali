.class Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;
.super Ljava/lang/Object;
.source "LongClickHandler.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/permission/RequestPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->onClick(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;->this$1:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;->this$1:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->access$000(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;->this$1:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->access$000(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;->onFinally(Z)V

    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;->this$1:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->this$0:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1$1;->this$1:Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;

    iget-object p2, p2, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->access$100(Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;Landroid/app/Activity;)V

    return-void
.end method
