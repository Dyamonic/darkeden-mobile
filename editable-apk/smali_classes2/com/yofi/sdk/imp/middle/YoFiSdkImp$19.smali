.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$19;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/rich/oauth/callback/AuthPageInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getNotCustomElementBuilder()Lcom/rich/oauth/core/UIConfigBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1830
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$19;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthPageInFailure(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObj"
        }
    .end annotation

    .line 1839
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$19;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1602(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "initSDK"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "\u672a\u8fdb\u5165\u6388\u6743\u9875\u9762"

    aput-object v1, p1, v0

    .line 1840
    invoke-static {p1}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    return-void
.end method

.method public onAuthPageInSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObj"
        }
    .end annotation

    .line 1833
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$19;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1602(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "initSDK"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "\u62c9\u53d6\u6388\u6743\u9875\u6210\u529fpage in"

    aput-object v1, p1, v0

    .line 1834
    invoke-static {p1}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    return-void
.end method
