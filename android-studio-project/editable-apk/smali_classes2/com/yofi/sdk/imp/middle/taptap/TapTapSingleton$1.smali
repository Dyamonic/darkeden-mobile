.class Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$1;
.super Ljava/lang/Object;
.source "TapTapSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$1;->this$0:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "taptapmsg"

    const-string v1, "run"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_0
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->fetchNotification()V

    .line 34
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$1;->this$0:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton$1;->this$0:Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->access$000(Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
