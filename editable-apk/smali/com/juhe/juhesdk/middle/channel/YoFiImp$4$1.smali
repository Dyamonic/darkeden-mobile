.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$1;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "error"
        }
    .end annotation

    .line 285
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;

    iget-object p2, p2, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payCallback:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->YOFI_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget-object v1, v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "payfailed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "yofiImp"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 278
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payCallback:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    const-string v0, "pay success"

    invoke-interface {p1, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    const-string p1, "yofiImp"

    .line 279
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
