.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;
.super Landroid/os/Handler;
.source "JuheSplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juhe/juhesdk/activity/JuheSplashActivity;
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

    .line 133
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param1Message"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "targetClassName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$000(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YoFiSdk"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$000(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    const-string v0, "\u8bf7\u914d\u7f6e\u95ea\u5c4f\u8df3\u8f6c\u9875"

    invoke-static {p1, v0}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    const-string v2, "yofi"

    invoke-static {v1, v2}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$102(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$100(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$200(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "22"

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    const-string v2, "ym"

    invoke-static {v1, v2}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$102(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$100(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$200(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$300(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    :goto_0
    return-void
.end method
