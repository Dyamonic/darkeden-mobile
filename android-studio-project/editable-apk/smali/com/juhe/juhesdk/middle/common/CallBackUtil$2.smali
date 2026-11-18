.class Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;
.super Ljava/lang/Object;
.source "CallBackUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onSeccess(Lcom/juhe/juhesdk/middle/common/RealResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/common/CallBackUtil;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$obj"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;->this$0:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;->this$0:Lcom/juhe/juhesdk/middle/common/CallBackUtil;

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/common/CallBackUtil$2;->val$obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/juhe/juhesdk/middle/common/CallBackUtil;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
