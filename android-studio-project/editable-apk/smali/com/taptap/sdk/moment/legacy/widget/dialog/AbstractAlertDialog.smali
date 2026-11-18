.class public abstract Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;
.super Lcom/taptap/sdk/moment/legacy/widget/dialog/SafeDialogFragment;
.source "AbstractAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;,
        Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$AlertClickCallback;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SafeDialogFragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    .line 91
    sget v0, Lcom/taptap/sdk/moment/R$id;->tv_alert_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    sget v1, Lcom/taptap/sdk/moment/R$id;->tv_alert_positive:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->leftEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->leftEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    iget-object v2, v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->leftEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    move-result-object v2

    iget-object v2, v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->rightEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->rightEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->rightEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 109
    sget v1, Lcom/taptap/sdk/moment/R$id;->tv_alert_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getLayoutParams()[I
.end method

.method public abstract leftEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SafeDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 51
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 77
    sget p3, Lcom/taptap/sdk/moment/R$layout;->tds_common_view_alert:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 6

    .line 56
    invoke-super {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SafeDialogFragment;->onStart()V

    .line 57
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->getLayoutParams()[I

    move-result-object v0

    .line 67
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-virtual {v2, v4, v0}, Landroid/view/Window;->setLayout(II)V

    .line 68
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/utils/HoloThemeHelper;->fixHoloDialogBlueLine(Landroid/app/Dialog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SafeDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->dismiss()V

    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method public abstract rightEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
.end method
