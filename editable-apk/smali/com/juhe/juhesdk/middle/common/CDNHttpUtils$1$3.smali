.class Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;
.super Ljava/lang/Object;
.source "CDNHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$response"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;->this$1:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;->this$1:Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1;->val$callBack:Lcom/juhe/juhesdk/middle/common/MyCallBack;

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/CDNHttpUtils$1$3;->val$response:Lokhttp3/Response;

    invoke-interface {v0, v1}, Lcom/juhe/juhesdk/middle/common/MyCallBack;->onError(Lokhttp3/Response;)V

    return-void
.end method
