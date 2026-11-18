.class public Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;
.super Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;
.source "SecurityJumpAlert.java"


# instance fields
.field private mCloseView:Landroid/widget/ImageView;

.field private mContentView:Landroid/view/View;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutParams()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 81
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public leftEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
    .locals 3

    .line 57
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    sget v1, Lcom/taptap/sdk/moment/R$string;->moment_dialog_cancel:I

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$2;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;)V

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->dismiss()V

    .line 93
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;-><init>()V

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->show(Landroid/app/FragmentManager;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 35
    sget p3, Lcom/taptap/sdk/moment/R$layout;->ttos_moment_security_jump_alert_content:I

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mContentView:Landroid/view/View;

    .line 36
    sget p3, Lcom/taptap/sdk/moment/R$id;->iv_alert_close:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mCloseView:Landroid/widget/ImageView;

    .line 37
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mContentView:Landroid/view/View;

    sget p3, Lcom/taptap/sdk/moment/R$id;->tv_alert_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mTitleView:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mContentView:Landroid/view/View;

    sget p3, Lcom/taptap/sdk/moment/R$id;->tv_alert_content:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mMessageView:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mCloseView:Landroid/widget/ImageView;

    new-instance p3, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$1;

    invoke-direct {p3, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mTitleView:Landroid/widget/TextView;

    sget p3, Lcom/taptap/sdk/moment/R$string;->moment_security_jump_alert_title:I

    invoke-static {p3}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget p1, Lcom/taptap/sdk/moment/R$string;->moment_security_jump_alert_message:I

    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->mMessageView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public rightEvent()Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;
    .locals 3

    .line 67
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;

    sget v1, Lcom/taptap/sdk/moment/R$string;->moment_dialog_confirm:I

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert$3;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;)V

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog$Event;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Landroid/net/Uri;)V
    .locals 2

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    .line 99
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->setArguments(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/SecurityJumpAlert;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "SecurityJumpAlert"

    .line 102
    invoke-super {p0, p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/AbstractAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
