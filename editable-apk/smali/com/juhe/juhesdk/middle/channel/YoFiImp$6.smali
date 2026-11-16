.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$6;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp;->exitGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$6;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "whichButton"
        }
    .end annotation

    .line 360
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 361
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$6;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$300(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeExitGame(Landroid/content/Context;)V

    return-void
.end method
