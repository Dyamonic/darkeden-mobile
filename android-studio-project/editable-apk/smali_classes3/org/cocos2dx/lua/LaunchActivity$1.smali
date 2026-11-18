.class Lorg/cocos2dx/lua/LaunchActivity$1;
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

    .line 117
    iput-object p1, p0, Lorg/cocos2dx/lua/LaunchActivity$1;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/cocos2dx/lua/LaunchActivity$1;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a\uff01"

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u8bbe\u7f6e\u540e\u91cd\u8bd5"

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v1, Lorg/cocos2dx/lua/LaunchActivity$1$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/LaunchActivity$1$1;-><init>(Lorg/cocos2dx/lua/LaunchActivity$1;)V

    const-string v2, "\u91cd\u8bd5"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
