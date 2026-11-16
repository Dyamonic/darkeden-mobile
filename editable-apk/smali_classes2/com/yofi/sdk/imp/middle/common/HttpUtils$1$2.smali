.class Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$string"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;->this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;->this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;->val$string:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yofi/sdk/imp/middle/common/MyCallBack;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
