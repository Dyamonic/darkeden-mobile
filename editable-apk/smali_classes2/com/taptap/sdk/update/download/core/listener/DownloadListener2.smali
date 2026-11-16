.class public abstract Lcom/taptap/sdk/update/download/core/listener/DownloadListener2;
.super Ljava/lang/Object;
.source "DownloadListener2.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/DownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0

    return-void
.end method

.method public downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 0

    return-void
.end method

.method public fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method

.method public fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    return-void
.end method
