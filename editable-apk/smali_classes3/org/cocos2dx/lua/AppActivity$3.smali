.class Lorg/cocos2dx/lua/AppActivity$3;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/juhe/juhesdk/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->sdkInit()V
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

    .line 391
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$3;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 2

    .line 400
    sget-object p1, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JuheSDK init Failed s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity$3;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-static {p1}, Lorg/cocos2dx/lua/AppActivity;->access$100(Lorg/cocos2dx/lua/AppActivity;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 394
    sget-object p1, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v0, "JuheSDK init success "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity$3;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-static {p1}, Lorg/cocos2dx/lua/AppActivity;->access$000(Lorg/cocos2dx/lua/AppActivity;)V

    return-void
.end method
