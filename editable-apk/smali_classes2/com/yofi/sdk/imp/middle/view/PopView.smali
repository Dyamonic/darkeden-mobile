.class public Lcom/yofi/sdk/imp/middle/view/PopView;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IContainerView;


# instance fields
.field private containerActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
    .locals 4
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PopView;->containerActivity:Landroid/app/Activity;

    .line 29
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofi_pop"

    const-string v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv_pop"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "path"

    .line 33
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 40
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bg_layout"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 41
    new-instance p2, Lcom/yofi/sdk/imp/middle/view/PopView$1;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/imp/middle/view/PopView$1;-><init>(Lcom/yofi/sdk/imp/middle/view/PopView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p1, Lcom/yofi/sdk/imp/middle/view/PopView$2;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/imp/middle/view/PopView$2;-><init>(Lcom/yofi/sdk/imp/middle/view/PopView;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/view/PopView;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/view/PopView;->containerActivity:Landroid/app/Activity;

    return-object p0
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

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PopView;->containerActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
