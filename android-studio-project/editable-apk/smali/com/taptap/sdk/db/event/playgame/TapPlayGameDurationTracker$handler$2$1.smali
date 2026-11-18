.class public final Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;
.super Landroid/os/Handler;
.source "TapPlayGameDurationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2;->invoke()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "tap-db_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 170
    :pswitch_0
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$appendDurationToStore(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$sendUserDuration(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "only_user"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 173
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$sendDeviceDuration(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V

    goto :goto_0

    .line 156
    :pswitch_1
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$getCurrentUserId$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$appendDurationToStore(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;Ljava/lang/String;)V

    .line 157
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$sendDeviceDuration(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V

    .line 158
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$sendUserDuration(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V

    .line 159
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {v2, v3}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$setDeviceStartTime$p(J)V

    .line 160
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {v2, v3}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$setUserStartTime$p(J)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-static {}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$getDeviceStartTime$p()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-string v4, "time"

    if-gez v0, :cond_0

    .line 148
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$setDeviceStartTime$p(J)V

    .line 150
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$getCurrentUserId$p()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$getUserStartTime$p()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_3

    .line 151
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$setUserStartTime$p(J)V

    goto :goto_0

    .line 165
    :pswitch_3
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$getCurrentUserId$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$appendDurationToStore(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;Ljava/lang/String;)V

    const/16 p1, 0x11

    const-wide/16 v0, 0xbb8

    .line 166
    invoke-virtual {p0, p1, v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
