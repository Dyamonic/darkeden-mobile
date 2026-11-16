.class Lorg/cocos2dx/lua/AppActivity$11;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lua/AppActivity;->copyToClipboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;Ljava/lang/String;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$11;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/lua/AppActivity$11;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 642
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    .line 643
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 644
    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity$11;->val$text:Ljava/lang/String;

    const-string v2, "Copied Text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 645
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
