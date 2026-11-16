.class Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;Ljava/io/IOException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$e"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;->this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;->this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->val$callBack:Lcom/yofi/sdk/imp/middle/common/MyCallBack;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;->this$1:Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1;->val$request:Lokhttp3/Request;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/common/HttpUtils$1$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/yofi/sdk/imp/middle/common/MyCallBack;->onFailure(Lokhttp3/Request;Ljava/lang/Exception;)V

    return-void
.end method
