.class public Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;
.super Ljava/lang/Object;
.source "ServiceAppraiseView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;


# instance fields
.field activity:Landroid/app/Activity;

.field btn_commit:Landroid/widget/Button;

.field closeTime:Ljava/lang/String;

.field et_content:Landroid/widget/EditText;

.field isOk:I

.field score:I


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->isOk:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->score:I

    .line 37
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->activity:Landroid/app/Activity;

    const-string v0, "createTime"

    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->closeTime:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serciveappraise"

    const-string v2, "layout"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_back"

    const-string v2, "id"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$1;

    invoke-direct {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_commit"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->btn_commit:Landroid/widget/Button;

    .line 48
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$2;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "et_content"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->et_content:Landroid/widget/EditText;

    .line 56
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "radioGroup"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    .line 57
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "radio_1"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 58
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "radio_2"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 59
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "radio_3"

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 60
    new-instance v4, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$3;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$3;-><init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {p2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 75
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rg2"

    invoke-virtual {p2, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    .line 76
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "rb_yes"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 77
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rb_no"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 78
    new-instance v1, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;-><init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {p2, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->evaluateChat()V

    return-void
.end method

.method static synthetic access$100(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->setClick()V

    return-void
.end method

.method private evaluateChat()V
    .locals 7

    .line 98
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->et_content:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->closeTime:Ljava/lang/String;

    iget v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->isOk:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->score:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;

    invoke-direct {v6, p0}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;-><init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V

    invoke-static/range {v1 .. v6}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->evaluateChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method private setClick()V
    .locals 2

    .line 92
    iget v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->score:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->isOk:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->btn_commit:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
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
            "var1",
            "var2"
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
            "var1",
            "var2",
            "var3"
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
