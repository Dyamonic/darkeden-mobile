.class public Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;
.super Ljava/lang/Object;
.source "BreakpointStoreOnSQLite.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;


# static fields
.field private static final TAG:Ljava/lang/String; = "BreakpointStoreOnSQLite"


# instance fields
.field protected final helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

.field protected final onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    .line 43
    new-instance p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->loadToCache()Landroid/util/SparseArray;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->loadDirtyFileList()Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->loadResponseFilenameToMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;-><init>(Landroid/util/SparseArray;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    .line 38
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->close()V

    return-void
.end method

.method public createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->insert(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-object p1
.end method

.method public createRemitSelf()Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;
    .locals 1

    .line 156
    new-instance v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;-><init>(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;)V

    return-object v0
.end method

.method public findAnotherInfoFromCompare(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->findAnotherInfoFromCompare(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    return-object p1
.end method

.method public findOrCreateId(Lcom/taptap/sdk/update/download/DownloadTask;)I
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->findOrCreateId(Lcom/taptap/sdk/update/download/DownloadTask;)I

    move-result v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->setUrl(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAfterCompleted(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResponseFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->getResponseFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFileDirty(I)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->isFileDirty(I)Z

    move-result p1

    return p1
.end method

.method public isOnlyMemoryCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public markFileClear(I)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->markFileClear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->markFileClear(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public markFileDirty(I)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->markFileDirty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->markFileDirty(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSyncToFilesystemSuccess(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->onSyncToFilesystemSuccess(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V

    .line 67
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide p3

    .line 68
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->updateBlockIncrease(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V

    return-void
.end method

.method public onTaskEnd(ILcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->onTaskEnd(ILcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    .line 85
    sget-object p3, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-ne p2, p3, :cond_0

    .line 86
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    :cond_0
    return-void
.end method

.method public onTaskStart(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->onTaskStart(I)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->remove(I)V

    .line 114
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    return-void
.end method

.method public update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;->update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->updateInfo(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    .line 74
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BreakpointStoreOnSQLite"

    invoke-static {v3, v2}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->isTaskOnlyProvidedParentPath()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->updateFilename(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method
