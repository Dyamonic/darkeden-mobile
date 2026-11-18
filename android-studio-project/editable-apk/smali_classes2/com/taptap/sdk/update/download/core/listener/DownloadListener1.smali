.class public abstract Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;
.super Ljava/lang/Object;
.source "DownloadListener1.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/DownloadListener;
.implements Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Callback;
.implements Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;


# instance fields
.field final assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;-><init>()V

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;)V

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    .line 42
    invoke-virtual {p1, p0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->setCallback(Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Callback;)V

    return-void
.end method


# virtual methods
.method public connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;)V

    return-void
.end method

.method public connectStart(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V
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

.method public downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    return-void
.end method

.method public downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-void
.end method

.method public fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    .line 100
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {p2, p1, p3, p4}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;J)V

    return-void
.end method

.method public fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->setAlwaysRecoverAssistModelIfNotSet(Z)V

    return-void
.end method

.method public final taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    return-void
.end method

.method public final taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;->assist:Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist;->taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V

    return-void
.end method
