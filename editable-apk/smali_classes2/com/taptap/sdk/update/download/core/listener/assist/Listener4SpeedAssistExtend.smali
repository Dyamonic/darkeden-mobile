.class public Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;
.super Ljava/lang/Object;
.source "Listener4SpeedAssistExtend.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;
.implements Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;,
        Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;",
        "Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator<",
        "Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
    .locals 1

    .line 100
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic create(I)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->create(I)Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    move-result-object p1

    return-object p1
.end method

.method public dispatchBlockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 2

    .line 68
    move-object v0, p3

    check-cast v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    .line 70
    iget-object v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/SpeedCalculator;->endTask()V

    .line 72
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v1, :cond_0

    .line 73
    iget-object p3, p3, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {p3, p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object p3

    .line 74
    invoke-virtual {v0, p2}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->getBlockSpeed(I)Lcom/taptap/sdk/update/download/SpeedCalculator;

    move-result-object v0

    .line 73
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->blockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;Lcom/taptap/sdk/update/download/SpeedCalculator;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchFetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 8

    .line 52
    move-object v0, p5

    check-cast v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    .line 54
    iget-object v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->blockSpeeds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-virtual {v1, p3, p4}, Lcom/taptap/sdk/update/download/SpeedCalculator;->downloading(J)V

    .line 55
    iget-object v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-virtual {v1, p3, p4}, Lcom/taptap/sdk/update/download/SpeedCalculator;->downloading(J)V

    .line 57
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v2, :cond_0

    .line 58
    iget-object p3, p5, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 59
    invoke-virtual {v0, p2}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->getBlockSpeed(I)Lcom/taptap/sdk/update/download/SpeedCalculator;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    .line 58
    invoke-interface/range {v2 .. v7}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->progressBlock(Lcom/taptap/sdk/update/download/DownloadTask;IJLcom/taptap/sdk/update/download/SpeedCalculator;)V

    .line 60
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    iget-wide p3, p5, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    iget-object p5, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->progress(Lcom/taptap/sdk/update/download/DownloadTask;JLcom/taptap/sdk/update/download/SpeedCalculator;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchInfoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v0, :cond_0

    .line 44
    check-cast p4, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTaskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z
    .locals 1

    .line 83
    check-cast p4, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    .line 85
    iget-object v0, p4, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;

    if-eqz v0, :cond_0

    .line 86
    iget-object p4, p4, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;->taskSpeed:Lcom/taptap/sdk/update/download/SpeedCalculator;

    .line 87
    invoke-virtual {p4}, Lcom/taptap/sdk/update/download/SpeedCalculator;->endTask()V

    goto :goto_0

    .line 89
    :cond_0
    new-instance p4, Lcom/taptap/sdk/update/download/SpeedCalculator;

    invoke-direct {p4}, Lcom/taptap/sdk/update/download/SpeedCalculator;-><init>()V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/SpeedCalculator;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setCallback(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedCallback;

    return-void
.end method
