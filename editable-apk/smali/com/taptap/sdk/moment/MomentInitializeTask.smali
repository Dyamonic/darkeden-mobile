.class public final Lcom/taptap/sdk/moment/MomentInitializeTask;
.super Ljava/lang/Object;
.source "MomentInitializeTask.kt"

# interfaces
.implements Lcom/taptap/sdk/startup/task/InitializeTask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/MomentInitializeTask;",
        "Lcom/taptap/sdk/startup/task/InitializeTask;",
        "()V",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "registerBroadcast",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$tDAB9jwFKGl3JzDHKpopIt5_fn4(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/moment/MomentInitializeTask;->registerBroadcast$lambda$0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final registerBroadcast()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->unRegisterReceiver()V

    .line 56
    sget-object v1, Lcom/taptap/sdk/moment/-$$Lambda$MomentInitializeTask$tDAB9jwFKGl3JzDHKpopIt5_fn4;->INSTANCE:Lcom/taptap/sdk/moment/-$$Lambda$MomentInitializeTask$tDAB9jwFKGl3JzDHKpopIt5_fn4;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->registerReceiver(Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;)V

    return-void
.end method

.method private static final registerBroadcast$lambda$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11

    .line 58
    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_a

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, ""

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "publish_fail.moment.taptap.action"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 88
    :cond_1
    sget-object v3, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    .line 90
    sget-object p0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getCurrentPublishSessionId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 p0, -0x1

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v4, "publish"

    const-string v8, "publish fail"

    .line 88
    invoke-static/range {v3 .. v10}, Lcom/taptap/sdk/moment/MomentTracker;->trackFail$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    const/16 p0, 0x2774

    .line 94
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "close_confirm.moment.taptap.action"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const p0, 0xc3b4

    .line 119
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "appear.moment.taptap.action"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p0, 0x7530

    .line 65
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "login_success.moment.taptap.action"

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const p0, 0xea60

    const-string v1, "token"

    .line 127
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 125
    invoke-interface {v0, p0, p1}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "publish_cancel.moment.taptap.action"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    .line 101
    :cond_5
    sget-object v3, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    .line 103
    sget-object p0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getCurrentPublishSessionId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "publish"

    .line 101
    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/moment/MomentTracker;->trackCancel$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const/16 p0, 0x27d8

    .line 106
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string p1, "publish_success.moment.taptap.action"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 77
    :cond_6
    sget-object v3, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    .line 79
    sget-object p0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {p0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getCurrentPublishSessionId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "publish"

    .line 77
    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/moment/MomentTracker;->trackSuccess$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const/16 p0, 0x2710

    .line 81
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v1, "scene_event.moment.taptap.action"

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const p0, 0x11170

    const-string v1, "event"

    .line 133
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 131
    invoke-interface {v0, p0, p1}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string p1, "close_cancel.moment.taptap.action"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const p0, 0xc350

    .line 113
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string p1, "disappear.moment.taptap.action"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x7594

    .line 71
    invoke-interface {v0, p0, v2}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    :cond_a
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60a0bb3f -> :sswitch_8
        -0x4438c77d -> :sswitch_7
        -0x15678643 -> :sswitch_6
        0x90e8d91 -> :sswitch_5
        0x2ac2ff1a -> :sswitch_4
        0x2baed177 -> :sswitch_3
        0x3c41320f -> :sswitch_2
        0x533462ab -> :sswitch_1
        0x749ad8f6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {p2}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/TapMomentInternal;->setRegionType(I)V

    .line 26
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {p2}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/taptap/sdk/moment/TapMomentInternal;->setClientId(Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/TapTapMomentPlatform;->init(Landroid/content/Context;)V

    .line 30
    sget-object p1, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    .line 31
    new-instance p2, Lcom/taptap/sdk/moment/MomentInitializeTask$execute$1;

    invoke-direct {p2}, Lcom/taptap/sdk/moment/MomentInitializeTask$execute$1;-><init>()V

    check-cast p2, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    .line 30
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->registerActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V

    .line 43
    invoke-direct {p0}, Lcom/taptap/sdk/moment/MomentInitializeTask;->registerBroadcast()V

    .line 45
    sget-object p1, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x9c40

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 47
    :cond_0
    sget-object p1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/MomentTracker;->trackInit$tap_moment_release()V

    return-void
.end method
