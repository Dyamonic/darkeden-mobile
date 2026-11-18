.class public Lcom/yofi/sdk/imp/middle/view/ChatView;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;
.implements Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/imp/middle/view/ChatView$CompressTask;,
        Lcom/yofi/sdk/imp/middle/view/ChatView$ViewHolder;,
        Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YofiChatview"


# instance fields
.field private final REFRESH_NUM:I

.field private btnSelect:Landroid/widget/Button;

.field private btnSend:Landroid/widget/Button;

.field private chatHandler:Landroid/os/Handler;

.field private containerActivity:Landroid/app/Activity;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private editContent:Landroid/widget/EditText;

.field private gameId:I

.field private jgKey:Ljava/lang/String;

.field private loading:Landroid/widget/ProgressBar;

.field private lvChat:Landroid/widget/ListView;

.field private mListViewHeight:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private message:Lcom/yofi/sdk/imp/middle/data/Message;

.field private msgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private msgQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/yofi/sdk/imp/middle/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field private myAdapter:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

.field private receiveId:J

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private serverTime:J

.field private start:I

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private unReadMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yofi/sdk/imp/middle/data/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->unReadMsgList:Ljava/util/List;

    const/16 v3, 0xa

    .line 114
    iput v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->REFRESH_NUM:I

    const-string v3, ""

    .line 118
    iput-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->jgKey:Ljava/lang/String;

    .line 124
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    .line 125
    new-instance v4, Lcom/yofi/sdk/imp/middle/view/ChatView$1;

    invoke-direct {v4, v0, v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->chatHandler:Landroid/os/Handler;

    .line 312
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getSocketUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?gameId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->gameId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&accessToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->url:Ljava/lang/String;

    .line 315
    new-instance v4, Lcom/yofi/sdk/imp/middle/data/User;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getModel()Ljava/lang/String;

    move-result-object v8

    .line 316
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getOS()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v5

    iget-object v10, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPhoneNum()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sget-object v5, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->ANDROID:Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;

    .line 317
    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/common/Constants$SYSTEM_TYPE;->getValue()I

    move-result v15

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getVersion()Ljava/lang/String;

    move-result-object v16

    const-string v13, ""

    const-string v14, ""

    const/16 v17, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v17}, Lcom/yofi/sdk/imp/middle/data/User;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 319
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object v5

    iget-object v6, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->url:Ljava/lang/String;

    iget-object v7, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->chatHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v4}, Lcom/yofi/sdk/socket/SocketManager;->init(Ljava/lang/String;Landroid/os/Handler;Lcom/yofi/sdk/imp/middle/data/User;)V

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "yofi_chat"

    const-string v7, "layout"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->setContentView(I)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "loading"

    const-string v7, "id"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->loading:Landroid/widget/ProgressBar;

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "btn_back"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 328
    new-instance v5, Lcom/yofi/sdk/imp/middle/view/ChatView$2;

    invoke-direct {v5, v0, v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "btn_select"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->btnSelect:Landroid/widget/Button;

    .line 342
    new-instance v5, Lcom/yofi/sdk/imp/middle/view/ChatView$3;

    invoke-direct {v5, v0, v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$3;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "roleName"

    .line 360
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->roleName:Ljava/lang/String;

    const-string v4, "serverId"

    .line 361
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverId:Ljava/lang/String;

    const-string v4, "roleId"

    .line 362
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->roleId:Ljava/lang/String;

    const-string v4, "serverName"

    .line 363
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 365
    iput-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverName:Ljava/lang/String;

    .line 367
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->gameId:I

    .line 368
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getNickname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->senderName:Ljava/lang/String;

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "edit_content"

    invoke-virtual {v2, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->editContent:Landroid/widget/EditText;

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tv_title"

    invoke-virtual {v2, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "title_chat"

    const-string v8, "string"

    invoke-virtual {v4, v6, v8, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "btn_send"

    invoke-virtual {v2, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->btnSend:Landroid/widget/Button;

    .line 378
    new-instance v3, Lcom/yofi/sdk/imp/middle/view/ChatView$4;

    invoke-direct {v3, v0, v1}, Lcom/yofi/sdk/imp/middle/view/ChatView$4;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chat_swipe_refresh_layout"

    invoke-virtual {v2, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 412
    new-instance v3, Lcom/yofi/sdk/imp/middle/view/ChatView$5;

    invoke-direct {v3, v0}, Lcom/yofi/sdk/imp/middle/view/ChatView$5;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lv_chat"

    invoke-virtual {v2, v4, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgList:Ljava/util/List;

    .line 444
    new-instance v2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgQueue:Ljava/util/Queue;

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->queryMessage()V

    .line 448
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/imp/middle/view/ChatView$1;)V

    iput-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->myAdapter:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    .line 449
    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->btnSend:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 465
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->btnSelect:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 469
    iget-object v2, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 470
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 471
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_1

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 474
    :cond_1
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v3, v3, -0x1e0

    .line 475
    iput v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->mListViewHeight:I

    .line 476
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 477
    iget-object v3, v0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->adujstListView()V

    .line 481
    invoke-static {}, Lcom/yofi/sdk/utils/UploadUtil;->getInstance()Lcom/yofi/sdk/utils/UploadUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yofi/sdk/utils/UploadUtil;->setOnUploadProcessListener(Lcom/yofi/sdk/utils/UploadUtil$OnUploadProcessListener;)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const v2, 0x1020002

    .line 484
    invoke-virtual {v1, v2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/ChatView;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->keepAlive()V

    return-void
.end method

.method static synthetic access$100(Lcom/yofi/sdk/imp/middle/view/ChatView;)J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->receiveId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/yofi/sdk/imp/middle/view/ChatView;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->getImage()V

    return-void
.end method

.method static synthetic access$102(Lcom/yofi/sdk/imp/middle/view/ChatView;J)J
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->receiveId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/EditText;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->editContent:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->roleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->roleName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yofi/sdk/imp/middle/view/ChatView;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->gameId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->senderName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yofi/sdk/imp/middle/view/ChatView;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->start:I

    return p0
.end method

.method static synthetic access$1802(Lcom/yofi/sdk/imp/middle/view/ChatView;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->start:I

    return p1
.end method

.method static synthetic access$1900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->dataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/yofi/sdk/imp/middle/view/ChatView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->dataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/ListView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/Button;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->btnSend:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/Button;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->btnSelect:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->popPic(Lcom/yofi/sdk/imp/middle/data/Message;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/imp/middle/data/Message;)Lcom/yofi/sdk/imp/middle/data/Message;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yofi/sdk/imp/middle/view/ChatView;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->adujstListView()V

    return-void
.end method

.method static synthetic access$400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->myAdapter:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/app/Activity;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->loading:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->unReadMsgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/yofi/sdk/imp/middle/view/ChatView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->unReadMsgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/yofi/sdk/imp/middle/view/ChatView;)J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/yofi/sdk/imp/middle/view/ChatView;J)J
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/Timer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method private adujstListView()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 991
    :goto_0
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->myAdapter:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 992
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->myAdapter:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v4, v5}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 995
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 996
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 994
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 997
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    iget v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->mListViewHeight:I

    if-le v2, v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 1002
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    :cond_1
    return-void
.end method

.method private getImage()V
    .locals 3

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 490
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private keepAlive()V
    .locals 7

    .line 499
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->mTimer:Ljava/util/Timer;

    .line 500
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/ChatView$6;

    invoke-direct {v2, p0}, Lcom/yofi/sdk/imp/middle/view/ChatView$6;-><init>(Lcom/yofi/sdk/imp/middle/view/ChatView;)V

    iput-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->mTimerTask:Ljava/util/TimerTask;

    .line 517
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->mTimer:Ljava/util/Timer;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getWsHeartbeatIntervalSecond()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    const-wide/16 v3, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private listResfresh()V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->lvChat:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    .line 562
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private popPic(Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 975
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 976
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v2

    const-string v3, "path"

    if-nez v2, :cond_0

    .line 977
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/Message;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x15

    const-string v2, "FUNCTION_CODE"

    .line 981
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 982
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 983
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    const-class v1, Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 984
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 985
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private queryMessage()V
    .locals 4

    .line 956
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 958
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->getReceiveId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->receiveId:J

    const/4 v1, 0x0

    .line 959
    iput v1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->start:I

    .line 960
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v0, v1, v3}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->queryChatPage(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->dataList:Ljava/util/ArrayList;

    .line 961
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 963
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yofi/sdk/imp/middle/data/Message;

    .line 964
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v2

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->SEND:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 966
    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v2

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->PIC:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v2

    if-nez v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public initUpload(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    const-string v2, "YofiChatview"

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 576
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u56fe\u7247\u8fd4\u56de="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " resultCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    const-string v0, "_data"

    .line 579
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 580
    iget-object v6, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 582
    aget-object v0, v0, v4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 583
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u83b7\u53d6\u56fe\u7247\u5730\u5740="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 589
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 590
    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 591
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 592
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 594
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x2

    if-le v6, v3, :cond_0

    int-to-float v3, v6

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    move v3, v8

    .line 600
    :goto_0
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 601
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 602
    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, " BitmapFactory.decodeFile\u83b7\u53d6\u5931\u8d25\uff0c\u5df2file\u7684\u5f62\u5f0f\u8bfb\u53d6"

    .line 605
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v3, v9

    add-int/2addr v3, v5

    new-array v6, v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 610
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 611
    invoke-virtual {v9, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 616
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " IOException e "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 614
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " FileNotFoundException e "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_1
    invoke-static {v6, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "\u83b7\u53d6\u56fe\u7247bitmap\u6210\u529f"

    .line 623
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v0, v6, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 627
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f6c\u6362\u6210\u5b57\u8282\u6210\u529f"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    div-long v19, v2, v9

    .line 632
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Message;

    const-string v12, ""

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->SEND:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;

    .line 633
    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_TYPE;->getValue()I

    move-result v13

    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->PIC:Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;

    .line 634
    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$MESSAGE_CONTENT_TYPE;->getValue()I

    move-result v14

    const-wide/16 v15, 0x0

    iget-wide v9, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->receiveId:J

    move-object v11, v2

    move-wide/from16 v17, v9

    invoke-direct/range {v11 .. v20}, Lcom/yofi/sdk/imp/middle/data/Message;-><init>(Ljava/lang/String;IIJJJ)V

    .line 638
    sget-object v3, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->content:Lcom/yofi/sdk/imp/middle/data/Content;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/data/Content;->getId()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/yofi/sdk/imp/middle/data/Message;->setContentId(J)V

    .line 639
    invoke-virtual {v2, v0}, Lcom/yofi/sdk/imp/middle/data/Message;->setData([B)V

    .line 640
    invoke-virtual {v2, v7}, Lcom/yofi/sdk/imp/middle/data/Message;->setPath(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yofi/sdk/imp/middle/data/Message;->setFlag(I)V

    .line 642
    iget-object v3, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->adujstListView()V

    .line 644
    iget-object v3, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->myAdapter:Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/view/ChatView$MyAdapter;->notifyDataSetChanged()V

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    .line 646
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    .line 647
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 648
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    .line 649
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getContent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 650
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getData()[B

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 651
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    .line 652
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 653
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0x8

    .line 654
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getSenderId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 655
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getReceiverId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0xa

    .line 656
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getCreateTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0xb

    .line 657
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0xc

    .line 658
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getMsgId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0xd

    .line 659
    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 660
    iget-object v4, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->insertChat(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 662
    iget-object v3, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->msgQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const-string v3, "/"

    .line 664
    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    .line 665
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 666
    new-instance v3, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->receiveId:J

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getType()I

    move-result v13

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v15

    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverId:Ljava/lang/String;

    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->serverName:Ljava/lang/String;

    iget-object v4, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->roleId:Ljava/lang/String;

    iget-object v5, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->roleName:Ljava/lang/String;

    const/16 v20, 0x2

    const-string v21, ""

    iget v6, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->gameId:I

    const-wide/16 v23, 0x0

    iget-object v7, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->senderName:Ljava/lang/String;

    move-object v8, v3

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v22, v6

    move-object/from16 v25, v7

    invoke-direct/range {v8 .. v25}, Lcom/yofi/sdk/imp/middle/data/Chat;-><init>(JJILjava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yofi/sdk/socket/SocketManager;->chat(Lcom/yofi/sdk/imp/middle/data/Chat;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat view send pic exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "YoFiSdk"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    .line 673
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_5
    const/16 v2, 0x65

    if-ne v0, v2, :cond_6

    new-array v0, v5, [Ljava/lang/Object;

    .line 675
    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->message:Lcom/yofi/sdk/imp/middle/data/Message;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    .line 676
    iget-object v2, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->deleteChat(Landroid/content/Context;[Ljava/lang/Object;)Z

    .line 677
    iget-object v0, v1, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onUploadDone(ILjava/lang/String;Lcom/yofi/sdk/imp/middle/data/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "responseCode",
            "msg",
            "message"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 699
    invoke-virtual {p3, p2}, Lcom/yofi/sdk/imp/middle/data/Message;->setUploaded(I)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p3}, Lcom/yofi/sdk/imp/middle/data/Message;->getContentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p3}, Lcom/yofi/sdk/imp/middle/data/Message;->getFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    invoke-virtual {p3}, Lcom/yofi/sdk/imp/middle/data/Message;->getUploaded()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    invoke-virtual {p3}, Lcom/yofi/sdk/imp/middle/data/Message;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    .line 701
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView;->containerActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->update(Landroid/content/Context;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUploadProcess(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadSize"
        }
    .end annotation

    return-void
.end method
