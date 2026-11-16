.class Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;
.super Ljava/lang/Object;
.source "CallBackUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onError(Lcom/juhe/juhesdk/middle/common/RealResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$response:Lcom/juhe/juhesdk/middle/common/RealResponse;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/CallBackUtil;Lcom/juhe/juhesdk/middle/common/RealResponse;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$errorMessage",
            "val$response"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;->this$0:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;->val$response:Lcom/juhe/juhesdk/middle/common/RealResponse;

    iput-object p3, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;->this$0:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;->val$response:Lcom/juhe/juhesdk/middle/common/RealResponse;

    iget v1, v1, Lcom/juhe/juhesdk/middle/common/RealResponse;->code:I

    iget-object v2, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onFailure(ILjava/lang/String;)V

    return-void
.end method
