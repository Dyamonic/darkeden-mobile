.class Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/HttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/yofi/sdk/imp/middle/common/MyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

.field final synthetic val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils;Lcom/yofi/sdk/imp/middle/common/MyCallBack;Lokhttp3/Request;)V
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

    .line 213
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->this$0:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->val$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "call",
            "e"
        }
    .end annotation

    .line 219
    :try_start_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebAPI"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5931\u8d25url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nerror=\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->this$0:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->access$000(Lcom/yofi/sdk/imp/middle/common/HttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;

    invoke-direct {v0, p0, p2}, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;-><init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
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

    .line 238
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 241
    :try_start_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WebAPI"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u6210\u529furl ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nonResponse=\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n requstHeader=\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->this$0:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->access$000(Lcom/yofi/sdk/imp/middle/common/HttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;

    invoke-direct {p2, p0, v0}, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$2;-><init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->this$0:Lcom/yofi/sdk/imp/middle/common/HttpUtils;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/HttpUtils;->access$000(Lcom/yofi/sdk/imp/middle/common/HttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$3;

    invoke-direct {v0, p0, p2}, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$3;-><init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
