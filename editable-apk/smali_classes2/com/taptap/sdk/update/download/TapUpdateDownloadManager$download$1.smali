.class public final Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;
.super Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed;
.source "TapUpdateDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000i\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016JB\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072 \u0010\u000e\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u0011\u0018\u00010\u000fH\u0016J:\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072 \u0010\u0013\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u0011\u0018\u00010\u000fH\u0016J*\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J \u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J,\u0010\u001e\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001c2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J2\u0010 \u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u000e\u0010#\u001a\n\u0018\u00010$j\u0004\u0018\u0001`%2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\'"
    }
    d2 = {
        "com/taptap/sdk/update/download/TapUpdateDownloadManager$download$1",
        "Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed;",
        "blockEnd",
        "",
        "task",
        "Lcom/taptap/sdk/update/download/DownloadTask;",
        "blockIndex",
        "",
        "info",
        "Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;",
        "blockSpeed",
        "Lcom/taptap/sdk/update/download/SpeedCalculator;",
        "connectEnd",
        "responseCode",
        "responseHeaderFields",
        "",
        "",
        "",
        "connectStart",
        "requestHeaderFields",
        "infoReady",
        "Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;",
        "fromBreakpoint",
        "",
        "model",
        "Lcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;",
        "progress",
        "currentOffset",
        "",
        "taskSpeed",
        "progressBlock",
        "currentBlockOffset",
        "taskEnd",
        "cause",
        "Lcom/taptap/sdk/update/download/core/cause/EndCause;",
        "realCause",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "taskStart",
        "tap-update_release"
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
.field final synthetic $listener:Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;->$listener:Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;

    .line 61
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener4WithSpeed;-><init>()V

    return-void
.end method


# virtual methods
.method public blockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;Lcom/taptap/sdk/update/download/SpeedCalculator;)V
    .locals 0

    const-string p2, "task"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " block end "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TapUpdateLog"

    invoke-static {p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p2, "task"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " connect end"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TapUpdateLog"

    invoke-static {p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

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
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p2, "task"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " connect start"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TapUpdateLog"

    invoke-static {p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;)V
    .locals 0

    const-string p3, "task"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "info"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " info ready"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TapUpdateLog"

    invoke-static {p3, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;->$listener:Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;->onDownloadStart(J)V

    :cond_0
    return-void
.end method

.method public progress(Lcom/taptap/sdk/update/download/DownloadTask;JLcom/taptap/sdk/update/download/SpeedCalculator;)V
    .locals 13

    move-object v0, p1

    move-wide v1, p2

    const-string v3, "task"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "taskSpeed"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " progress "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TapUpdateLog"

    invoke-static {v5, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v8

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APKDownload PROGRESS fileTotalLength = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " currentOffset = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v5, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v10, p0

    .line 120
    iget-object v0, v10, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;->$listener:Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual/range {p4 .. p4}, Lcom/taptap/sdk/update/download/SpeedCalculator;->getBytesPerSecondAndFlush()J

    move-result-wide v5

    const/16 v3, 0x64

    int-to-long v11, v3

    mul-long/2addr v11, v1

    .line 122
    div-long/2addr v11, v8

    long-to-int v7, v11

    invoke-virtual/range {p4 .. p4}, Lcom/taptap/sdk/update/download/SpeedCalculator;->speed()Ljava/lang/String;

    move-result-object v11

    move-wide v1, p2

    move-wide v3, v8

    move-object v8, v11

    .line 120
    invoke-interface/range {v0 .. v8}, Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;->onDownloadProgress(JJJILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public progressBlock(Lcom/taptap/sdk/update/download/DownloadTask;IJLcom/taptap/sdk/update/download/SpeedCalculator;)V
    .locals 0

    return-void
.end method

.method public taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/SpeedCalculator;)V
    .locals 1

    const-string p4, "task"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "cause"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " task end "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/cause/EndCause;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "TapUpdateLog"

    invoke-static {v0, p4}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object p4, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-ne p2, p4, :cond_0

    .line 144
    iget-object p2, p0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;->$listener:Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager$download$1;->$listener:Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3}, Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;->onDownloadFailed(Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapUpdateLog"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
