.class Lorg/cocos2dx/lua/AppActivity$9;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->onSDKLoginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;Ljava/lang/String;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$9;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/lua/AppActivity$9;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 582
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$9;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/lua/AppActivity;->mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity$9;->val$s:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/gamegod/littlegame/LittleGameHelper;->loginCallback(ILjava/lang/String;)V

    return-void
.end method
