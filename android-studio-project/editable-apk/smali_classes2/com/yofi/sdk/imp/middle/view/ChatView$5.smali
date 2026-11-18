.class Lcom/yofi/sdk/imp/middle/view/ChatView$5;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 5

    .line 416
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1800(Lcom/yofi/sdk/imp/middle/view/ChatView;)I

    move-result v2

    const/16 v3, 0xa

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1802(Lcom/yofi/sdk/imp/middle/view/ChatView;I)I

    .line 418
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v4}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1800(Lcom/yofi/sdk/imp/middle/view/ChatView;)I

    move-result v4

    invoke-static {v2, v0, v4, v3}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->queryChatPage(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1902(Lcom/yofi/sdk/imp/middle/view/ChatView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 419
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2000(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v0, v1

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    .line 427
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2100(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 428
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2000(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
