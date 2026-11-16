.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030010

    .line 18
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->initView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private initView()Landroid/view/View;
    .locals 7

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/extensions/UIExtKt;->toPx(F)I

    move-result v3

    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/extensions/UIExtKt;->toPx(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 27
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 28
    new-instance v4, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ttos_moment_loading"

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setMovieResource(I)V

    .line 30
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 33
    invoke-virtual {p0, v4}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->requestWindowFeature(I)Z

    .line 34
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 36
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/extensions/UIExtKt;->toPx(F)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/extensions/UIExtKt;->toPx(F)I

    move-result v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x106000d

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 40
    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-object v0
.end method
