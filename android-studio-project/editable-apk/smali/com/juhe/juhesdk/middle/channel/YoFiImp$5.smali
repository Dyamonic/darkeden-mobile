.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp;->getServerState(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

.field final synthetic val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cb"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "error"
        }
    .end annotation

    .line 325
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-interface {v0, p1}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
