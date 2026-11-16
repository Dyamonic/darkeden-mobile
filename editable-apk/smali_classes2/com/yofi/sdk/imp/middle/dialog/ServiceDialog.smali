.class public Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;
.super Landroid/app/Dialog;
.source "ServiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sj_MyDialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog_service"

    const-string v2, "layout"

    .line 25
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btn_commit"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 29
    new-instance v0, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;-><init>(Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->setCancelable(Z)V

    return-void
.end method

.method public setDialogInterface(Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->callback:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;

    return-void
.end method
