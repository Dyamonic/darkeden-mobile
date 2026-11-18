.class Lorg/cocos2dx/lua/AppActivity$6;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->payment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;

.field final synthetic val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;Lcom/juhe/juhesdk/middle/data/PayInfo;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$6;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/lua/AppActivity$6;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 494
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$6;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity$6;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    new-instance v2, Lorg/cocos2dx/lua/AppActivity$6$1;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lua/AppActivity$6$1;-><init>(Lorg/cocos2dx/lua/AppActivity$6;)V

    invoke-static {v0, v1, v2}, Lcom/juhe/juhesdk/sdk/JuheSDK;->pay(Landroid/content/Context;Lcom/juhe/juhesdk/middle/data/PayInfo;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    return-void
.end method
