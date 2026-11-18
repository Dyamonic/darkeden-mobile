.class Lcom/juhe/juhesdk/middle/common/RequestUtil$2;
.super Ljava/lang/Object;
.source "RequestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/RequestUtil;->urlHttpPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/common/RequestUtil;

.field final synthetic val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

.field final synthetic val$headerMap:Ljava/util/Map;

.field final synthetic val$jsonStr:Ljava/lang/String;

.field final synthetic val$paramsMap:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/RequestUtil;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/middle/common/CallBackUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callBack",
            "val$headerMap",
            "val$jsonStr",
            "val$paramsMap",
            "val$url"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->this$0:Lcom/juhe/juhesdk/middle/common/RequestUtil;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$paramsMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$jsonStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$headerMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 72
    new-instance v0, Lcom/juhe/juhesdk/middle/common/RealRequest;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/common/RealRequest;-><init>()V

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->this$0:Lcom/juhe/juhesdk/middle/common/RequestUtil;

    iget-object v3, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$paramsMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$jsonStr:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->access$100(Lcom/juhe/juhesdk/middle/common/RequestUtil;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->this$0:Lcom/juhe/juhesdk/middle/common/RequestUtil;

    iget-object v4, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$paramsMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$jsonStr:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/juhe/juhesdk/middle/common/RequestUtil;->access$200(Lcom/juhe/juhesdk/middle/common/RequestUtil;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$headerMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/juhe/juhesdk/middle/common/RealRequest;->postData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/juhe/juhesdk/middle/common/RealResponse;

    move-result-object v0

    .line 73
    iget v1, v0, Lcom/juhe/juhesdk/middle/common/RealResponse;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-virtual {v1, v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onSeccess(Lcom/juhe/juhesdk/middle/common/RealResponse;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/RequestUtil$2;->val$callBack:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    invoke-virtual {v1, v0}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onError(Lcom/juhe/juhesdk/middle/common/RealResponse;)V

    :goto_0
    return-void
.end method
