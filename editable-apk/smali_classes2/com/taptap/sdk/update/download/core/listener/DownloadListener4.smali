.class public abstract Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;
.super Ljava/lang/Object;
.source "DownloadListener4.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/DownloadListener;
.implements Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;
.implements Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/listener/DownloadListener4$Listener4ModelCreator;
    }
.end annotation


# instance fields
.field final assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    new-instance v1, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4$Listener4ModelCreator;

    invoke-direct {v1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4$Listener4ModelCreator;-><init>()V

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;)V

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    .line 56
    invoke-virtual {p1, p0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->setCallback(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;)V

    return-void
.end method


# virtual methods
.method public connectTrialEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public connectTrialStart(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    .locals 1

    .line 91
    iget-object p3, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Z)V

    return-void
.end method

.method public final downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Z)V

    return-void
.end method

.method public fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    .line 119
    iget-object p3, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {p3, p1, p2}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;I)V

    return-void
.end method

.method public final fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    return-void
.end method

.method public fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public getCurrentOffset(Lcom/taptap/sdk/update/download/DownloadTask;)J
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->getCurrentOffset(Lcom/taptap/sdk/update/download/DownloadTask;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->setAlwaysRecoverAssistModelIfNotSet(Z)V

    return-void
.end method

.method public setAssistExtend(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->setAssistExtend(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;)V

    return-void
.end method

.method public setCurrentOffset(Lcom/taptap/sdk/update/download/DownloadTask;J)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->setCurrentOffset(Lcom/taptap/sdk/update/download/DownloadTask;J)V

    return-void
.end method

.method public final taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    return-void
.end method
