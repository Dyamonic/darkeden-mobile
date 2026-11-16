.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$4;
.super Ljava/lang/Object;
.source "JuheSplashActivity.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/IFlashCallback;


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

    .line 316
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$4;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation

    .line 326
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$4;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    const-string p2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {p1, p2}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 319
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    .line 320
    iput v0, p1, Landroid/os/Message;->what:I

    .line 321
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$4;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$500(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
