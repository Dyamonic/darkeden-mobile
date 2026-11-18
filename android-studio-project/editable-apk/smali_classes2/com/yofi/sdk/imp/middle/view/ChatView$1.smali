.class Lcom/yofi/sdk/imp/middle/view/ChatView$1;
.super Landroid/os/Handler;
.source "ChatView.java"


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

    .line 125
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 50
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xf

    const/4 v9, 0x7

    const-wide/16 v11, 0x3e8

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v10, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v6, :cond_8

    if-eq v2, v10, :cond_3

    if-eq v2, v15, :cond_2

    if-eq v2, v14, :cond_1

    if-eq v2, v13, :cond_0

    goto/16 :goto_4

    .line 130
    :cond_0
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$000(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    goto/16 :goto_4

    .line 302
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 303
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$600(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 297
    :cond_2
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$802(Lcom/yofi/sdk/imp/middle/view/ChatView;J)J

    goto/16 :goto_4

    .line 253
    :cond_3
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$702(Lcom/yofi/sdk/imp/middle/view/ChatView;Ljava/util/List;)Ljava/util/List;

    move v1, v5

    .line 254
    :goto_0
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 256
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Chat;->getMsgType()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 257
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getContent()Ljava/lang/String;

    move-result-object v17

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->RECEIVE:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 258
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v18

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->TEXT:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 259
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v19

    const-wide/16 v20, 0x0

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 261
    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getSenderId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    div-long v24, v24, v11

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJ)V

    goto/16 :goto_1

    .line 264
    :cond_4
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Chat;->getMsgType()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 265
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getContent()Ljava/lang/String;

    move-result-object v27

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->RECEIVE:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 266
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v28

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->PIC:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 267
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v29

    const-wide/16 v30, 0x0

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 269
    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getSenderId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v34, v16, v11

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v37

    const-string v36, ""

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v37}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_5
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getContent()Ljava/lang/String;

    move-result-object v39

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->RECEIVE:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 273
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v40

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->END:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 274
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v41

    const-wide/16 v42, 0x0

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 276
    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getSenderId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v46, v16, v11

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v49

    const-string v48, ""

    move-object/from16 v38, v2

    invoke-direct/range {v38 .. v49}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJLjava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_1
    sget-object v8, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 281
    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v11

    invoke-static {v8, v11, v12}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$102(Lcom/yofi/sdk/imp/middle/view/ChatView;J)J

    .line 282
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v8

    sget-object v11, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->END:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual {v11}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v11

    if-eq v8, v11, :cond_6

    .line 283
    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$300(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    .line 285
    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 287
    :cond_6
    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    const-wide/16 v11, 0x0

    invoke-static {v8, v11, v12}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$102(Lcom/yofi/sdk/imp/middle/view/ChatView;J)J

    :goto_2
    new-array v8, v3, [Ljava/lang/Object;

    .line 290
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v5

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v6

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v11

    aput-object v11, v8, v15

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v14

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v13

    .line 291
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v4

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v12, 0x9

    aput-object v11, v8, v12

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v12, 0xa

    aput-object v11, v8, v12

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v8, v12

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v12, 0xc

    aput-object v11, v8, v12

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xd

    aput-object v11, v8, v12

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xe

    aput-object v2, v8, v11

    .line 292
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v2, v8}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertChat(Landroid/content/Context;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v11, 0x3e8

    goto/16 :goto_0

    .line 294
    :cond_7
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$600(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 137
    :cond_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/yofi/sdk/imp/middle/data/Chat;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v16, 0x3e8

    div-long v34, v11, v16

    .line 139
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getSenderId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$102(Lcom/yofi/sdk/imp/middle/view/ChatView;J)J

    .line 140
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getMsgType()I

    move-result v2

    if-ne v2, v7, :cond_9

    .line 141
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getContent()Ljava/lang/String;

    move-result-object v27

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->RECEIVE:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 142
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v28

    sget-object v1, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->TEXT:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 143
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v29

    const-wide/16 v30, 0x0

    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 145
    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$100(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v32

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v35}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJ)V

    .line 148
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 149
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    .line 150
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v3

    aput-object v3, v1, v15

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v14

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v13

    .line 151
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v1, v5

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v1, v5

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v1, v5

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0xc

    aput-object v3, v1, v5

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 152
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v2, v1}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertChat(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 153
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$300(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    .line 154
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 156
    :cond_9
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getMsgType()I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 157
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->RECEIVE:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 158
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v28

    sget-object v8, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->PIC:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 159
    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v29

    const-wide/16 v30, 0x0

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 161
    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$100(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v32

    .line 162
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v37

    const-string v27, ""

    const-string v36, ""

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v37}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJLjava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v8, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v8}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 164
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yofi/sdk/imp/middle/data/Message;->setData([B)V

    .line 165
    invoke-virtual {v2, v7}, Lcom/yofi/sdk/imp/middle/data/Message;->setFlag(I)V

    .line 166
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$300(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    .line 168
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    new-array v1, v3, [Ljava/lang/Object;

    .line 170
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v5

    .line 171
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 172
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v6

    .line 173
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    .line 174
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v3

    aput-object v3, v1, v15

    .line 175
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v14

    .line 176
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v13

    .line 177
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    .line 178
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    .line 179
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 180
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 181
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v1, v5

    .line 182
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0xc

    aput-object v3, v1, v5

    .line 183
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xd

    aput-object v3, v1, v5

    .line 184
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 185
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertChat(Landroid/content/Context;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 188
    :cond_a
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Chat;->getCreateTime()Ljava/lang/Long;

    move-result-object v1

    .line 215
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v8, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 216
    invoke-virtual {v8}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "service_btn"

    const-string v12, "string"

    invoke-virtual {v3, v11, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 215
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 218
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->END:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 219
    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v18

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->END:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 220
    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v19

    const-wide/16 v20, 0x0

    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    .line 222
    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$100(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v22

    .line 223
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJ)V

    .line 224
    sget-object v1, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 225
    invoke-virtual {v2, v7}, Lcom/yofi/sdk/imp/middle/data/Message;->setFlag(I)V

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v5

    .line 228
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 229
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v6

    .line 230
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    .line 231
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v3

    aput-object v3, v1, v15

    .line 232
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v14

    .line 233
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v13

    .line 234
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    .line 235
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    .line 236
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 237
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 238
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v1, v5

    .line 239
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0xc

    aput-object v3, v1, v5

    .line 240
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0xd

    aput-object v3, v1, v5

    .line 242
    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertChat(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 243
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$300(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    .line 245
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    .line 248
    :goto_3
    iget-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$600(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_4
    return-void
.end method
