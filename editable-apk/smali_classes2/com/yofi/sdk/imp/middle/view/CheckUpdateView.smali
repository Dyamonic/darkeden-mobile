.class public Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;
.super Ljava/lang/Object;
.source "CheckUpdateView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;


# instance fields
.field private mActivity:Lcom/yofi/sdk/activity/ContainerActivity;

.field private final updateContent:Ljava/lang/String;

.field private final updateType:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V
    .locals 6
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->mActivity:Lcom/yofi/sdk/activity/ContainerActivity;

    const-string v0, "DOWNLOAD_URL"

    .line 32
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->url:Ljava/lang/String;

    const-string v0, "UPDATE_NEED_TYPE"

    .line 33
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->updateType:I

    const-string v1, "UPDATE_CONTENT"

    .line 34
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->updateContent:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "check_update"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tv_content"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn_ok"

    invoke-virtual {p2, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 47
    invoke-static {p2}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 48
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "btn_cancel"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 58
    invoke-static {v1}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 59
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$2;

    invoke-direct {v2, p0, p1}, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;Lcom/yofi/sdk/activity/ContainerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "btn_sure"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/yofi/sdk/activity/ContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 68
    invoke-static {p1}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 69
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$3;

    invoke-direct {v2, p0}, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$3;-><init>(Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->POSSIBLE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->beginDownd()V

    return-void
.end method

.method private beginDownd()V
    .locals 5

    .line 88
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "/h5/download"

    const-string v2, "v1"

    const-string v3, "sdk/api/"

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?url="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;->mActivity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
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
    .locals 0
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
