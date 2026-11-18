.class final Lorg/cocos2dx/lua/WeChatMiniProgramLauncher$1;
.super Ljava/lang/Object;
.source "WeChatMiniProgramLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    invoke-static {}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
