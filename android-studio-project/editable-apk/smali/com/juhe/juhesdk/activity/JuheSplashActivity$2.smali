.class Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;
.super Ljava/lang/Object;
.source "JuheSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheSplashActivity;->showProtocolPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

.field final synthetic val$storageKey:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$storageKey",
            "val$url"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    iput-object p2, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->val$storageKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 187
    new-instance v0, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;

    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->this$0:Lcom/juhe/juhesdk/activity/JuheSplashActivity;

    iget-object v2, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;->val$url:Ljava/lang/String;

    new-instance v3, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;

    invoke-direct {v3, p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2$1;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/view/JuheXieYiCallback;)V

    .line 205
    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/view/JuheXieYiDialog;->show()V

    return-void
.end method
