.class Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 765
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 770
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result p1

    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->PIC:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 771
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;->this$1:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter$2;->val$msg:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2600(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/imp/middle/data/Message;)V

    :cond_0
    return-void
.end method
