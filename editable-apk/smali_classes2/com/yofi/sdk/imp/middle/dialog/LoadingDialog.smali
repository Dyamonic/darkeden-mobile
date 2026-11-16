.class public Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;

.field private mHandler:Landroid/os/Handler;

.field private message:Ljava/lang/String;

.field progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sj_MyDialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->message:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "msg",
            "callback"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sj_MyDialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->message:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->message:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->callback:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;)Landroid/os/Handler;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->callback:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;->onCancel()V

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yofi_progressbar"

    const-string v2, "layout"

    .line 33
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 41
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    .line 43
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;-><init>(Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;Landroid/widget/ProgressBar;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 59
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->callback:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$Callback;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method
