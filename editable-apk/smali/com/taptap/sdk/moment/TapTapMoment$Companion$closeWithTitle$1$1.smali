.class public final Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1;
.super Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;
.source "TapTapMoment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;->invoke()Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1",
        "Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;",
        "onNegative",
        "",
        "onPositive",
        "tap-moment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1;->$sessionId:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative()V
    .locals 8

    .line 213
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "close_cancel.moment.taptap.action"

    .line 214
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 215
    sget-object v2, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    iget-object v4, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1;->$sessionId:Ljava/lang/String;

    const-string v3, "close"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/taptap/sdk/moment/MomentTracker;->trackCancel$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public onPositive()V
    .locals 7

    .line 206
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "close_confirm.moment.taptap.action"

    .line 207
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/Moment;->closeMomentWithConfirmDialog()V

    .line 209
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    iget-object v3, p0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1$1;->$sessionId:Ljava/lang/String;

    const-string v2, "close"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/MomentTracker;->trackSuccess$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method
