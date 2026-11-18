.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$1;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp;->login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$1;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$1;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {v0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$000(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V

    return-void
.end method
