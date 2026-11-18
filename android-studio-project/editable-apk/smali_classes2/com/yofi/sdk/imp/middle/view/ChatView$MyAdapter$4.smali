.class Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;
.super Landroid/text/style/ClickableSpan;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

.field final synthetic val$msg:Lcom/yofi/sdk/imp/middle/data/Message;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$msg"
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 791
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2702(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/imp/middle/data/Message;)Lcom/yofi/sdk/imp/middle/data/Message;

    .line 792
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FUNCTION_CODE"

    const/16 v2, 0x16

    .line 794
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v1

    const-string v3, "createTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 796
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 797
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 798
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$4;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
