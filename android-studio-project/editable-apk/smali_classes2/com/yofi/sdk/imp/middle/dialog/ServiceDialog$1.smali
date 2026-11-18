.class Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;
.super Ljava/lang/Object;
.source "ServiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->callback:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->dismiss()V

    .line 34
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->callback:Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;

    invoke-interface {p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;->onCancel()V

    :cond_0
    return-void
.end method
