.class Lorg/cocos2dx/lua/LaunchActivity$2;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/LaunchActivity;->sdkPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/LaunchActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/cocos2dx/lua/LaunchActivity$2;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Finish LaunchActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/cocos2dx/lua/LaunchActivity$2;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    const-class v2, Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    iget-object v1, p0, Lorg/cocos2dx/lua/LaunchActivity$2;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lua/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lorg/cocos2dx/lua/LaunchActivity$2;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/LaunchActivity;->finish()V

    return-void
.end method
