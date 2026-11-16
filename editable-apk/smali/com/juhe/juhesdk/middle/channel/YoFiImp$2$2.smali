.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$2;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->onLogoutSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$2;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "---------->\u6211\u662fhandler\u7684\u5ef6\u8fdf\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$2;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLogoutSuccess(Ljava/lang/String;)V

    return-void
.end method
