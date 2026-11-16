.class public Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;
.super Ljava/lang/Object;
.source "SimpleLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$Holder;,
        Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;
    }
.end annotation


# instance fields
.field private receiver:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$Holder;->INSTANCE:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    return-object v0
.end method


# virtual methods
.method public registerReceiver(Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->receiver:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->receiver:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;->onReceive(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->receiver:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;->onReceive(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->receiver:Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager$BroadcastReceiver;

    return-void
.end method
