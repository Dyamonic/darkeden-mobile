.class Lorg/cocos2dx/lua/AppActivity$4;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->login(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 436
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "Start AppActvity SDK login."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    const/4 v1, 0x1

    iput v1, v0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    .line 439
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$4;->this$0:Lorg/cocos2dx/lua/AppActivity;

    new-instance v1, Lorg/cocos2dx/lua/AppActivity$4$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/AppActivity$4$1;-><init>(Lorg/cocos2dx/lua/AppActivity$4;)V

    invoke-static {v0, v1}, Lcom/juhe/juhesdk/sdk/JuheSDK;->login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V

    return-void
.end method
