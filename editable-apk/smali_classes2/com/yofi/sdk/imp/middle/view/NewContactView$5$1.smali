.class Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;
.super Ljava/lang/Object;
.source "NewContactView.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/NewContactView$5;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$content",
            "val$dialog"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 367
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {p2}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->dismiss()V

    .line 369
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 370
    invoke-virtual {v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error_code_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 371
    invoke-virtual {v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    .line 370
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 369
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {p2, p1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "id"

    const-string v3, "contentId"

    .line 270
    iget-object v4, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->dismiss()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "code"

    .line 277
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v9, "msg"

    .line 278
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v9, "data"

    .line 279
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 280
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    move-wide v9, v4

    .line 283
    :goto_0
    :try_start_2
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v4, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide v9, v4

    goto :goto_1

    :catch_2
    move-exception v0

    move-wide v9, v4

    move v8, v6

    .line 287
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_2
    if-nez v8, :cond_4

    .line 291
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$900(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v3, 0xe

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/16 v19, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yofi/sdk/imp/middle/data/Message;

    .line 292
    invoke-virtual {v2, v9, v10}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 294
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v3, v6

    .line 295
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    .line 296
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v3, v11

    .line 297
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v8

    .line 298
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v8

    aput-object v8, v3, v18

    .line 299
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v17

    .line 300
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v16

    .line 301
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v15

    .line 302
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v14

    .line 303
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v13

    .line 304
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v12

    .line 305
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v11, 0xb

    aput-object v8, v3, v11

    .line 306
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v11, 0xc

    aput-object v8, v3, v11

    .line 307
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v3, v8

    .line 308
    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v2, v2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v2, v3}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insert(Landroid/content/Context;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 310
    :cond_2
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$900(Lcom/yofi/sdk/imp/middle/view/NewContactView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v32, v20, v22

    .line 312
    new-instance v0, Lcom/yofi/sdk/imp/middle/data/Message;

    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->val$content:Ljava/lang/String;

    sget-object v20, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->SEND:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    invoke-virtual/range {v20 .. v20}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v26

    sget-object v20, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->TEXT:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual/range {v20 .. v20}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v27

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v33}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJ)V

    .line 313
    invoke-virtual {v0, v9, v10}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 314
    invoke-virtual {v0, v4, v5}, Lcom/yofi/sdk/imp/middle/data/Message;->setMsgId(J)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 316
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 317
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v19

    .line 318
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    .line 319
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 320
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v3

    aput-object v3, v2, v18

    .line 321
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v17

    .line 322
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v16

    .line 323
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v15

    .line 324
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    .line 325
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    .line 326
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    .line 327
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 328
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    .line 329
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    .line 330
    iget-object v3, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v3, v3, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v3, v2}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insert(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 332
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    if-nez v2, :cond_3

    .line 333
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-direct {v2, v9, v10}, Lcom/yofi/sdk/imp/middle/data/Content;-><init>(J)V

    sput-object v2, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    goto :goto_4

    .line 335
    :cond_3
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v2, v9, v10}, Lcom/yofi/sdk/imp/middle/data/Content;->setId(J)V

    .line 336
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v2, v6}, Lcom/yofi/sdk/imp/middle/data/Content;->setFlag(I)V

    :goto_4
    new-array v2, v8, [Ljava/lang/Object;

    .line 338
    sget-object v3, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/data/Content;->getFlag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v19

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 339
    iget-object v3, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v3, v3, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v3, v2}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertContent(Landroid/content/Context;[Ljava/lang/Object;)V

    :try_start_3
    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "createTime"

    .line 342
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v19

    .line 343
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v0, v2}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->updateCreateTime(Landroid/content/Context;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 349
    :catch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x14

    const-string v4, "FUNCTION_CODE"

    .line 351
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 353
    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v2, v2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    const-class v3, Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 354
    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v2, v2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v2, v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 355
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v0, v6, v6}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->overridePendingTransition(II)V

    .line 356
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->setResult(I)V

    .line 357
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->finish()V

    goto :goto_5

    .line 359
    :cond_4
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v2, v2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 360
    invoke-virtual {v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error_code_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v4, v4, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    .line 361
    invoke-virtual {v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    .line 360
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    .line 359
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/NewContactView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/NewContactView$5;

    iget-object v2, v2, Lcom/yofi/sdk/imp/middle/view/NewContactView$5;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-static {v2, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_5
    return-void
.end method
