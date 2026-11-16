.class Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;
.super Ljava/lang/Object;
.source "CDNHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->requestNetWork(Lokhttp3/Request;Lcom/juhe/juhesdk/middle/common/MyCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

.field final synthetic val$callBack:Lcom/juhe/juhesdk/middle/common/MyCallBack;

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;Lcom/juhe/juhesdk/middle/common/MyCallBack;Lokhttp3/Request;)V
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

    .line 104
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->this$0:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->val$callBack:Lcom/juhe/juhesdk/middle/common/MyCallBack;

    iput-object p3, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->val$request:Lokhttp3/Request;

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

    .line 107
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->this$0:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->access$000(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$1;

    invoke-direct {v0, p0, p2}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$1;-><init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;Ljava/io/IOException;)V

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

    .line 116
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p2, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->this$0:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    invoke-static {p2}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->access$000(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$2;

    invoke-direct {v0, p0, p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$2;-><init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->this$0:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;->access$000(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;

    invoke-direct {v0, p0, p2}, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;-><init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
