.class Lcom/yofi/sdk/imp/middle/view/ChatView$4;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 378
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 381
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1100(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 385
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_empty"

    const-string v6, "string"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 384
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long v10, v1, v4

    .line 389
    new-instance v1, Lcom/yofi/sdk/imp/middle/data/Message;

    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->SEND:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 390
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v4

    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->TEXT:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 391
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v5

    const-wide/16 v6, 0x0

    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 393
    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$100(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v8

    const-string v12, ""

    const-string v13, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJLjava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 397
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$300(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    .line 399
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 400
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 401
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 402
    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v3, v2}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertChat(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 404
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Chat;

    move-object v4, v2

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$100(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v9

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1300(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1600(Lcom/yofi/sdk/imp/middle/view/ChatView;)I

    move-result v17

    const-wide/16 v18, 0x0

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;

    move-result-object v20

    const-string v16, ""

    invoke-direct/range {v4 .. v20}, Lcom/yofi/sdk/imp/middle/data/Chat;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/socket/SocketManager;->chat(Lcom/yofi/sdk/imp/middle/data/Chat;)V

    .line 407
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$1100(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
