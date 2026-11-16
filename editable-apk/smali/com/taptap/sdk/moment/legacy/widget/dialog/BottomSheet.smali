.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;
.super Landroid/app/DialogFragment;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BottomSheet"

.field private static sheetWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;

.field private mTvCancel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;)Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mListener:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;

    return-object p0
.end method

.method private changeContainerParam(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x43b18000    # 355.0f

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x1

    .line 167
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 172
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method private constructorTextView(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;
    .locals 7

    .line 178
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "#333333"

    .line 179
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x800013

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "ttos_moment_download"

    invoke-static {v4, v5}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v3, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 188
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static dismissWhenShow()V
    .locals 2

    .line 194
    sget-object v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->sheetWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method private initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ll_container"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    const-string v0, "value"

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->constructorTextView(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "tv_bottom_cancel"

    invoke-static {p2, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/taptap/sdk/moment/R$string;->moment_dialog_cancel:I

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$3;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$3;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "ll_root"

    invoke-static {p2, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$4;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$4;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 151
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x43b18000    # 355.0f

    invoke-static {p2, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p2, 0x1

    .line 153
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 158
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mTvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-void
.end method

.method public static varargs newInstance(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;[Ljava/lang/String;)Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;-><init>()V

    .line 48
    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->setArguments(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->setOnItemClickListener(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;)V

    .line 50
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->sheetWeakReference:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private settingDialog()V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x8

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 106
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    new-instance v3, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$1;

    invoke-direct {v3, p0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;Landroid/view/Window;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 112
    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/utils/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->changeContainerParam(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "BottomSheetStyle"

    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    const-string v0, "ttos_moment_dialog_bottom_sheet"

    invoke-static {p3, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->dismiss()V

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->settingDialog()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet;->mListener:Lcom/taptap/sdk/moment/legacy/widget/dialog/BottomSheet$OnItemClickListener;

    return-void
.end method
