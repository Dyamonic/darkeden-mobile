.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$3;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp;->initSdk()V
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

    .line 225
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$3;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

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

    const-string p1, "yofiImp"

    const-string p2, "\u521d\u59cb\u5316init\u5931\u8d25"

    .line 234
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$3;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->initCb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    sget-object p2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->INIT_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget p2, p2, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->INIT_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

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

    const-string p1, "yofiImp"

    const-string v0, "\u521d\u59cb\u5316init\u6210\u529f"

    .line 228
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$3;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->initCb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    const-string v0, "success"

    invoke-interface {p1, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
