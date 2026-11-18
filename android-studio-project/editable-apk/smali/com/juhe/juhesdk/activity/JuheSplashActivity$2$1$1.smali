.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;
.super Ljava/lang/Object;
.source "JuheSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;->this$2:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;->this$2:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;

    iget-object v0, v0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    iget-object v0, v0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$400(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;->this$2:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;

    iget-object v1, v1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    iget-object v1, v1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->val$storageKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1$1;->this$2:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;

    iget-object v0, v0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;->this$1:Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    iget-object v0, v0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->access$300(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    return-void
.end method
