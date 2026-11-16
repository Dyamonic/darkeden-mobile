.class public Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;
.super Ljava/lang/Object;
.source "TapTapCheckUpdateView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;


# instance fields
.field private mActivity:Lcom/yofi/sdk/activity/ContainerActivity;

.field private final updateContent:Ljava/lang/String;

.field private final updateType:I


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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;->mActivity:Lcom/yofi/sdk/activity/ContainerActivity;

    const-string v0, "UPDATE_NEED_TYPE"

    .line 34
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;->updateType:I

    const-string v1, "UPDATE_CONTENT"

    .line 35
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;->updateContent:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "taptap_check_update"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/ContainerActivity;->setContentView(I)V

    .line 42
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

    .line 44
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
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

    .line 51
    invoke-static {p2}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 52
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
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

    .line 62
    invoke-static {v1}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 63
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView$2;

    invoke-direct {v2, p0, p1}, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;Lcom/yofi/sdk/activity/ContainerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
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

    .line 72
    invoke-static {p1}, Lcom/yofi/sdk/widget/WidgetUtil;->setButtonStateChangeListener(Landroid/view/View;)V

    .line 73
    new-instance v2, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView$3;

    invoke-direct {v2, p0}, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView$3;-><init>(Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget-object v2, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->POSSIBLE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;->beginDownd()V

    return-void
.end method

.method private beginDownd()V
    .locals 2

    .line 89
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;->mActivity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->tapTapOpenUpdate(Landroid/app/Activity;)V

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
