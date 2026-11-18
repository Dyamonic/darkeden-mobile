.class public Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;
.super Ljava/lang/Object;
.source "DownloadListenerBunch.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;
    }
.end annotation


# instance fields
.field final listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;


# direct methods
.method constructor <init>([Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    return-void
.end method


# virtual methods
.method public connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;IILjava/util/Map;)V
    .locals 4
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

    .line 86
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;IILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connectStart(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V
    .locals 4
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

    .line 79
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 80
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->connectStart(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connectTrialEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V
    .locals 4
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

    .line 57
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 58
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->connectTrialEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connectTrialStart(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Map;)V
    .locals 4
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

    .line 50
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 51
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/update/download/DownloadListener;->connectTrialStart(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contain(Lcom/taptap/sdk/update/download/DownloadListener;)Z
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 73
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 107
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 101
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 94
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public indexOf(Lcom/taptap/sdk/update/download/DownloadListener;)I
    .locals 3

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 136
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 115
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;->listenerList:[Lcom/taptap/sdk/update/download/DownloadListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 43
    invoke-interface {v3, p1}, Lcom/taptap/sdk/update/download/DownloadListener;->taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
