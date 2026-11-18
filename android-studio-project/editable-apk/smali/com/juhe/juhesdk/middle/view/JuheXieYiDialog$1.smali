.class Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$1;
.super Ljava/lang/Object;
.source "JuheXieYiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$1;->this$0:Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 35
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$1;->this$0:Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->access$000(Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;)Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;->onSuccess(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog$1;->this$0:Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->dismiss()V

    return-void
.end method
