.class Lorg/cocos2dx/lua/AppActivity$4$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lua/AppActivity$4;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity$4;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$4$1;->this$1:Lorg/cocos2dx/lua/AppActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHaveNewMessages()V
    .locals 2

    .line 457
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "onHaveNewMessages."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$4$1;->this$1:Lorg/cocos2dx/lua/AppActivity$4;

    iget-object v0, v0, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/cocos2dx/lua/AppActivity;->access$502(Lorg/cocos2dx/lua/AppActivity;Z)Z

    return-void
.end method

.method public onLoginFailed(ILjava/lang/String;)V
    .locals 0

    .line 447
    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity$4$1;->this$1:Lorg/cocos2dx/lua/AppActivity$4;

    iget-object p1, p1, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-static {p1}, Lorg/cocos2dx/lua/AppActivity;->access$300(Lorg/cocos2dx/lua/AppActivity;)V

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$4$1;->this$1:Lorg/cocos2dx/lua/AppActivity$4;

    iget-object v0, v0, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-static {v0, p1}, Lorg/cocos2dx/lua/AppActivity;->access$200(Lorg/cocos2dx/lua/AppActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onLogoutSuccess(Ljava/lang/String;)V
    .locals 0

    .line 452
    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity$4$1;->this$1:Lorg/cocos2dx/lua/AppActivity$4;

    iget-object p1, p1, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-static {p1}, Lorg/cocos2dx/lua/AppActivity;->access$400(Lorg/cocos2dx/lua/AppActivity;)V

    return-void
.end method
