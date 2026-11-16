.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;
.super Landroid/app/DialogFragment;
.source "Alert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$OnClickListener;,
        Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Alert"


# instance fields
.field private mStub:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;)Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "content"

    .line 36
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "positive"

    .line 37
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "negative"

    .line 38
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cancelable"

    .line 39
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    new-instance p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->setArguments(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, p5}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->setClickStub(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;)V

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->mStub:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_negative"

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->mStub:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;->onNegative()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_positive"

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->mStub:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;->onPositive()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "iv_alert_close"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 131
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->mStub:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;->onNegative()V

    .line 134
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "com_taptap_sdk_moment_alert_dialog_style"

    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "ttos_moment_dialog_alert"

    invoke-static {p3, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 64
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "tv_alert_content"

    invoke-static {p2, v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tv_negative"

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tv_positive"

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "tv_alert_title"

    invoke-static {v2, v3}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    sget v3, Lcom/taptap/sdk/moment/R$id;->iv_alert_close:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v3, "title"

    .line 79
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "content"

    .line 80
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "positive"

    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_1
    sget p2, Lcom/taptap/sdk/moment/R$string;->moment_dialog_confirm:I

    invoke-static {p2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p2, "negative"

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_2

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v0, v2}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 92
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 p2, 0x1

    const-string v0, "cancelable"

    .line 94
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 95
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$1;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/ScreenHelper;->fullScreenImmersive(Landroid/view/Window;)V

    .line 109
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 110
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$2;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;Landroid/view/Window;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_3
    return-void
.end method

.method public setClickStub(Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->mStub:Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;

    return-void
.end method
