.class Lorg/cocos2dx/lua/LaunchActivity$1$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/LaunchActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lua/LaunchActivity$1;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/LaunchActivity$1;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/cocos2dx/lua/LaunchActivity$1$1;->this$1:Lorg/cocos2dx/lua/LaunchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    iget-object p1, p0, Lorg/cocos2dx/lua/LaunchActivity$1$1;->this$1:Lorg/cocos2dx/lua/LaunchActivity$1;

    iget-object p1, p1, Lorg/cocos2dx/lua/LaunchActivity$1;->this$0:Lorg/cocos2dx/lua/LaunchActivity;

    invoke-static {p1}, Lorg/cocos2dx/lua/LaunchActivity;->access$000(Lorg/cocos2dx/lua/LaunchActivity;)V

    return-void
.end method
