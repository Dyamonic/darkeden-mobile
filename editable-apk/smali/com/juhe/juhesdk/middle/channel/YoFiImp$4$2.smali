.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$msg"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {v0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$300(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
