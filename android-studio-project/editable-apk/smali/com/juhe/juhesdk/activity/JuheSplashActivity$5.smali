.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$5;
.super Ljava/lang/Object;
.source "JuheSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheSplashActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$5;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x7d0

    .line 334
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 338
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 339
    iput v1, v0, Landroid/os/Message;->what:I

    .line 340
    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$5;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$500(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
