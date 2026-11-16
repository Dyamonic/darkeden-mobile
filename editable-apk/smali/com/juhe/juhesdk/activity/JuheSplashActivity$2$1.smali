.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;
.super Ljava/lang/Object;
.source "JuheSplashActivity.java"

# interfaces
.implements Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 202
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {p1}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeExitGame(Landroid/content/Context;)V

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

    .line 190
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    new-instance v0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;)V

    invoke-virtual {p1, v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
