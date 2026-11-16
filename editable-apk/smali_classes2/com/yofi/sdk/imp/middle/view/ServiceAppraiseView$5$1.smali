.class Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5$1;
.super Ljava/lang/Object;
.source "ServiceAppraiseView.java"

# interfaces
.implements Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->activity:Landroid/app/Activity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 111
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5$1;->this$1:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
