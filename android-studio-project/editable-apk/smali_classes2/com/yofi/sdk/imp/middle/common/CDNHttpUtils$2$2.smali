.class Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$2;
.super Ljava/lang/Object;
.source "CDNHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$2;->this$1:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$2;->this$1:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/yofi/sdk/imp/middle/common/MyCallBack;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
