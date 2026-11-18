.class Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;
.super Ljava/lang/Object;
.source "UnifiedListenerManager.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/UnifiedListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/UnifiedListenerManager;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 280
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;IILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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

    .line 268
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->connectStart(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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

    .line 233
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->connectTrialEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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

    .line 221
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/update/download/DownloadListener;->connectTrialStart(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 262
    :cond_1
    invoke-interface {v3, p1, p2}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 308
    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 331
    :cond_1
    invoke-interface {v3, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_2
    iget-object p2, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object p2, p2, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->autoRemoveListenerIdList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 335
    iget-object p2, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->detachListener(I)V

    :cond_3
    return-void
.end method

.method public taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;->this$0:Lcom/taptap/sdk/update/download/UnifiedListenerManager;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 214
    :cond_1
    invoke-interface {v3, p1}, Lcom/taptap/sdk/update/download/DownloadListener;->taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
