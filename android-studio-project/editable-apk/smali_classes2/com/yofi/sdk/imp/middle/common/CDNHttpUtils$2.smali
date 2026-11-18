.class Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;
.super Ljava/lang/Object;
.source "CDNHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;->request_NotVerifyRespons(Lokhttp3/Request;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;

.field final synthetic val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;Lcom/yofi/sdk/imp/middle/common/MyCallBack;Lokhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$request",
            "val$callBack"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->this$0:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->val$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "call",
            "e"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->this$0:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;->access$000(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$1;

    invoke-direct {v0, p0, p2}, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$1;-><init>(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->this$0:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;->access$000(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$3;

    invoke-direct {v0, p0, p2}, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$3;-><init>(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;->this$0:Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;->access$000(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$2;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2$2;-><init>(Lcom/yofi/sdk/imp/middle/common/CDNHttpUtils$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
