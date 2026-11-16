.class public Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;
.super Landroid/app/DialogFragment;
.source "PermissionDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "PermissionDialog"


# instance fields
.field private mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;)Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 28
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "content"

    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cancel"

    .line 30
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "confirm"

    .line 31
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;

    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;-><init>()V

    .line 33
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, p4}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->setPermissionCallback(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 46
    sget v0, Lcom/taptap/sdk/moment/R$style;->tds_common_permission_dialog:I

    invoke-virtual {p0, p1, v0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 52
    sget p3, Lcom/taptap/sdk/moment/R$layout;->tds_common_permission_forward_setting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$1;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 66
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 67
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 68
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/taptap/sdk/moment/R$id;->tv_permission_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lcom/taptap/sdk/moment/R$id;->tv_permission_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "content"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v0, Lcom/taptap/sdk/moment/R$id;->bt_permission_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    sget v1, Lcom/taptap/sdk/moment/R$id;->bt_permission_ok:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "cancel"

    .line 83
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "confirm"

    .line 84
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance p2, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$2;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$2;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance p2, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$3;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$3;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget p2, Lcom/taptap/sdk/moment/R$id;->iv_permission_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$4;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog$4;-><init>(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->dismiss()V

    return-void
.end method

.method public setPermissionCallback(Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialog;->mCallback:Lcom/taptap/sdk/moment/legacy/utils/permission/PermissionDialogCallback;

    return-void
.end method
