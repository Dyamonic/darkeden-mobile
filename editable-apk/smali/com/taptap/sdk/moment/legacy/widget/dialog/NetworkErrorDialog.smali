.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;
.super Landroid/app/Dialog;
.source "NetworkErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;
    }
.end annotation


# instance fields
.field private isNotch:Z

.field private refreshCallback:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;)V
    .locals 1

    const-string v0, "dialog"

    .line 32
    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->isNotch:Z

    .line 33
    iput-object p3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->refreshCallback:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;

    .line 34
    iput-boolean p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->isNotch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->refreshCallback:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;

    return-object p0
.end method

.method private initView()Landroid/view/View;
    .locals 9

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "error_background"

    invoke-static {v1, v4}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ttos_moment_close"

    invoke-static {v4, v5}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    .line 72
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    if-ne v5, v3, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v7, v7, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 76
    :cond_1
    iget-boolean v3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->isNotch:Z

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    :cond_2
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v3, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;

    invoke-direct {v3, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 92
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43520000    # 210.0f

    invoke-static {v4, v5}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x430c0000    # 140.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x42f00000    # 120.0f

    invoke-static {v7, v8}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "network_error"

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 102
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    sget v5, Lcom/taptap/sdk/moment/R$string;->moment_load_fail_hint:I

    invoke-static {v5}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ic_refresh"

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v5, 0x0

    .line 107
    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v2, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v6, v7}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "ttos_moment_loading"

    invoke-static {v4, v6}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setMovieResource(I)V

    .line 118
    invoke-virtual {v2, v5}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x4

    .line 119
    invoke-virtual {v2, v4}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setVisibility(I)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v4, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->initView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 45
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 46
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x400

    .line 48
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, -0x1

    .line 49
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 50
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "error_background"

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 54
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
