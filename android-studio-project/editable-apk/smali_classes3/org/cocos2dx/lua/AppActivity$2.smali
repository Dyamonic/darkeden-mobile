.class Lorg/cocos2dx/lua/AppActivity$2;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;

.field final synthetic val$obbFilePath:Ljava/lang/String;

.field final synthetic val$outPathString:Ljava/lang/String;

.field final synthetic val$zipFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$2;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/lua/AppActivity$2;->val$zipFile:Ljava/io/File;

    iput-object p3, p0, Lorg/cocos2dx/lua/AppActivity$2;->val$outPathString:Ljava/lang/String;

    iput-object p4, p0, Lorg/cocos2dx/lua/AppActivity$2;->val$obbFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 380
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity$2;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/lua/AppActivity;->mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity$2;->val$zipFile:Ljava/io/File;

    iget-object v2, p0, Lorg/cocos2dx/lua/AppActivity$2;->val$outPathString:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2dx/lua/AppActivity$2;->val$obbFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/gamegod/littlegame/LittleGameHelper;->unZip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
