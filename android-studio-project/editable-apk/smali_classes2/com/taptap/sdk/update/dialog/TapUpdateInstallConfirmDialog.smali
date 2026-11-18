.class public final Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;
.super Landroid/app/Dialog;
.source "TapUpdateInstallConfirmDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$Companion;,
        Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0017H\u0014J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\n\u001a\u0004\u0008\u0011\u0010\u000eR\u001b\u0010\u0013\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\n\u001a\u0004\u0008\u0014\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "flRootContainer",
        "Landroid/widget/FrameLayout;",
        "getFlRootContainer",
        "()Landroid/widget/FrameLayout;",
        "flRootContainer$delegate",
        "Lkotlin/Lazy;",
        "mNegativeButton",
        "Landroid/widget/TextView;",
        "getMNegativeButton",
        "()Landroid/widget/TextView;",
        "mNegativeButton$delegate",
        "mPositiveButton",
        "getMPositiveButton",
        "mPositiveButton$delegate",
        "mTitle",
        "getMTitle",
        "mTitle$delegate",
        "initView",
        "",
        "onStart",
        "setupWindowAttribute",
        "isLandscape",
        "",
        "switchState",
        "type",
        "Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;",
        "Companion",
        "TapUpdateConfirmDialogType",
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


# static fields
.field public static final Companion:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$Companion;

.field private static final DEFAULT_HEIGHT:F = 128.0f

.field private static final DEFAULT_WIDTH:F = 320.0f


# instance fields
.field private final context:Landroid/content/Context;

.field private final flRootContainer$delegate:Lkotlin/Lazy;

.field private final mNegativeButton$delegate:Lkotlin/Lazy;

.field private final mPositiveButton$delegate:Lkotlin/Lazy;

.field private final mTitle$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->Companion:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$flRootContainer$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$flRootContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->flRootContainer$delegate:Lkotlin/Lazy;

    .line 30
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$mTitle$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$mTitle$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->mTitle$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$mNegativeButton$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$mNegativeButton$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->mNegativeButton$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$mPositiveButton$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$mPositiveButton$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->mPositiveButton$delegate:Lkotlin/Lazy;

    .line 35
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 37
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 39
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 45
    :cond_0
    sget v0, Lcom/taptap/sdk/update/R$layout;->tapupdate_dialog_confrim:I

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->setCancelable(Z)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private final getFlRootContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->flRootContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-flRootContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getMNegativeButton()Landroid/widget/TextView;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->mNegativeButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mNegativeButton>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getMPositiveButton()Landroid/widget/TextView;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->mPositiveButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mPositiveButton>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getMTitle()Landroid/widget/TextView;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->mTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-mTitle>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initView(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMNegativeButton()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMNegativeButton()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateInstallConfirmDialog$XFu_S-I3WOxmA6eP2b_YIvUip6I;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateInstallConfirmDialog$XFu_S-I3WOxmA6eP2b_YIvUip6I;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMPositiveButton()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateInstallConfirmDialog$Hxo6YTgbS3pH2EFL-JMnGQbV0Bk;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateInstallConfirmDialog$Hxo6YTgbS3pH2EFL-JMnGQbV0Bk;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initView$lambda$1(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->dismiss()V

    .line 71
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    .line 72
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMPositiveButton()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "\u5b89\u88c5\u5b8c\u6210"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    .line 71
    invoke-virtual {p1, p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallConfirmCancelButtonClick(Z)V

    return-void
.end method

.method private static final initView$lambda$2(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object p2, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    .line 78
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMPositiveButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\u5b89\u88c5\u5b8c\u6210"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 77
    invoke-virtual {p2, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallConfirmPositiveButtonClick(Z)V

    .line 80
    invoke-static {p1}, Lcom/taptap/sdk/update/extension/BizExtKt;->isTapInstalled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    sget-object p2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->installSuccess(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->dismiss()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMPositiveButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "\u91cd\u65b0\u5b89\u88c5"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->dismiss()V

    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_FAIL:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->switchState(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;)V

    .line 88
    sget-object p0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackNotInstallDialogVisible()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$Hxo6YTgbS3pH2EFL-JMnGQbV0Bk(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->initView$lambda$2(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$XFu_S-I3WOxmA6eP2b_YIvUip6I(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->initView$lambda$1(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;Landroid/view/View;)V

    return-void
.end method

.method private final setupWindowAttribute(Landroid/content/Context;Z)V
    .locals 4

    .line 113
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getFlRootContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x41700000    # 15.0f

    .line 118
    invoke-static {v1}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result v1

    .line 119
    invoke-static {p1}, Lcom/taptap/sdk/update/utils/UIUtilKt;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 120
    invoke-static {p1}, Lcom/taptap/sdk/update/utils/UIUtilKt;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v1, -0x2

    const/high16 v3, 0x43a00000    # 320.0f

    if-eqz p2, :cond_2

    .line 123
    invoke-static {v3}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result p2

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    const/high16 v2, 0x43000000    # 128.0f

    .line 125
    invoke-static {v2}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result v2

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    move v1, p1

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {v3}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result p1

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    .line 136
    :goto_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getFlRootContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 61
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->setupWindowAttribute(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public final switchState(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    if-ne p1, v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "TapTap \u662f\u5426\u5df2\u7ecf\u5b89\u88c5\u5b8c\u6210\uff1f"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMPositiveButton()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u5b89\u88c5\u5b8c\u6210"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;->INSTALL_FAIL:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog$TapUpdateConfirmDialogType;

    if-ne p1, v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "TapTap \u5c1a\u672a\u5b89\u88c5\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u5b89\u88c5\u3002"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->getMPositiveButton()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u91cd\u65b0\u5b89\u88c5"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
