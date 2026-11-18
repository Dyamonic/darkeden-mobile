.class public final Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;
.super Landroid/app/Dialog;
.source "TapUpdateLoadingDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "ivLoading",
        "Landroid/widget/ImageView;",
        "getIvLoading",
        "()Landroid/widget/ImageView;",
        "ivLoading$delegate",
        "Lkotlin/Lazy;",
        "loadingAnimation",
        "Landroid/view/animation/RotateAnimation;",
        "getLoadingAnimation",
        "()Landroid/view/animation/RotateAnimation;",
        "loadingAnimation$delegate",
        "dismiss",
        "",
        "show",
        "tap-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ivLoading$delegate:Lkotlin/Lazy;

.field private final loadingAnimation$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog$ivLoading$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog$ivLoading$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->ivLoading$delegate:Lkotlin/Lazy;

    .line 20
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog$loadingAnimation$2;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog$loadingAnimation$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->loadingAnimation$delegate:Lkotlin/Lazy;

    .line 36
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 39
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x11

    .line 41
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_0
    sget p1, Lcom/taptap/sdk/update/R$layout;->tapupdate_dialog_loading:I

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->setContentView(I)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private final getIvLoading()Landroid/widget/ImageView;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->ivLoading$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivLoading>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getLoadingAnimation()Landroid/view/animation/RotateAnimation;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->loadingAnimation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getLoadingAnimation()Landroid/view/animation/RotateAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/utils/UIUtilKt;->setNotFocusable(Landroid/view/Window;)V

    .line 53
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 54
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/utils/UIUtilKt;->hideNavBar(Landroid/view/Window;)V

    .line 55
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/utils/UIUtilKt;->clearNotFocusable(Landroid/view/Window;)V

    .line 56
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getIvLoading()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->getLoadingAnimation()Landroid/view/animation/RotateAnimation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
