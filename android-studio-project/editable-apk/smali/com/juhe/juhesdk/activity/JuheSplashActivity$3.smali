.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;
.super Ljava/lang/Object;
.source "JuheSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheSplashActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 256
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "mumuImp"

    const-string v1, "\u95ea\u5c4f\u5df2\u663e\u793a"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetClassName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$000(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YoFiSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$000(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    const-string v1, "\u8bf7\u914d\u7f6e\u95ea\u5c4f\u8df3\u8f6c\u9875"

    invoke-static {v0, v1}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$300(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    return-void
.end method
