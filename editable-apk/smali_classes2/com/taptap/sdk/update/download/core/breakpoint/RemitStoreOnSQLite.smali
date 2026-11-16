.class public Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;
.super Ljava/lang/Object;
.source "RemitStoreOnSQLite.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;
.implements Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemitStoreOnSQLite"


# instance fields
.field private final onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

.field private final remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

.field private final sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

.field private final sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;-><init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    .line 45
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    .line 46
    iget-object v0, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onCache:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnCache;

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    .line 47
    iget-object p1, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->helper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    .line 55
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    .line 56
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    .line 57
    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    return-void
.end method

.method public static setRemitToDBDelayMillis(I)V
    .locals 3

    .line 172
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->breakpointStore()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;

    move-result-object v0

    .line 173
    instance-of v1, v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 178
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 179
    check-cast v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->delayMillis:J

    return-void

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current store is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not RemitStoreOnSQLite!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->isNotFreeToDatabase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAnotherInfoFromCompare(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->findAnotherInfoFromCompare(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    return-object p1
.end method

.method public findOrCreateId(Lcom/taptap/sdk/update/download/DownloadTask;)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->findOrCreateId(Lcom/taptap/sdk/update/download/DownloadTask;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

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

    .line 141
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->getResponseFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFileDirty(I)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->isFileDirty(I)Z

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

    .line 113
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->markFileClear(I)Z

    move-result p1

    return p1
.end method

.method public markFileDirty(I)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->markFileDirty(I)Z

    move-result p1

    return p1
.end method

.method public onSyncToFilesystemSuccess(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->isNotFreeToDatabase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->onSyncToFilesystemSuccess(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onSyncToFilesystemSuccess(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V

    return-void
.end method

.method public onTaskEnd(ILcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->onTaskEnd(ILcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    .line 97
    sget-object p3, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-ne p2, p3, :cond_0

    .line 98
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->discard(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->endAndEnsureToDB(I)V

    :goto_0
    return-void
.end method

.method public onTaskStart(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->onTaskStart(I)V

    .line 74
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->onTaskStart(I)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->remove(I)V

    .line 119
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->discard(I)V

    return-void
.end method

.method public removeInfo(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    return-void
.end method

.method public syncCacheToDB(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    .line 161
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->insert(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public syncCacheToDB(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqLiteHelper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 149
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 150
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->syncCacheToDB(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    throw p1
.end method

.method public update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->remitHelper:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncToDBHelper;->isNotFreeToDatabase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->sqliteCache:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitStoreOnSQLite;->onSQLiteWrapper:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStoreOnSQLite;->update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z

    move-result p1

    return p1
.end method
