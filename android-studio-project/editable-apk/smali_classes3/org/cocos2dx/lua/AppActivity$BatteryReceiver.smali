.class Lorg/cocos2dx/lua/AppActivity$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lua/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lua/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity$BatteryReceiver;->this$0:Lorg/cocos2dx/lua/AppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "level"

    .line 131
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    const-string v1, "scale"

    .line 133
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 136
    iget-object p2, p0, Lorg/cocos2dx/lua/AppActivity$BatteryReceiver;->this$0:Lorg/cocos2dx/lua/AppActivity;

    iget-object p2, p2, Lorg/cocos2dx/lua/AppActivity;->mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

    invoke-virtual {p2, p1}, Lcn/gamegod/littlegame/LittleGameHelper;->setBattleryPower(F)V

    :cond_0
    return-void
.end method
