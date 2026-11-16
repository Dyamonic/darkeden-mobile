.class public Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BreakpointSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper$Select;,
        Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper$Migration;,
        Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper$CreateTable;
    }
.end annotation


# static fields
.field private static final BLOCK_TABLE_NAME:Ljava/lang/String; = "block"

.field private static final BREAKPOINT_TABLE_NAME:Ljava/lang/String; = "breakpoint"

.field private static final NAME:Ljava/lang/String; = "okdownload-breakpoint.db"

.field private static final RESPONSE_FILENAME_TABLE_NAME:Ljava/lang/String; = "okdownloadResponseFilename"

.field static final TASK_FILE_DIRTY_TABLE_NAME:Ljava/lang/String; = "taskFileDirty"

.field private static final VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "okdownload-breakpoint.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 62
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static toValues(IILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)Landroid/content/ContentValues;
    .locals 2

    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "breakpoint_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "block_index"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getStartOffset()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "start_offset"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "content_length"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "current_offset"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static toValues(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Landroid/content/ContentValues;
    .locals 3

    .line 275
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 276
    iget v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->isTaskOnlyProvidedParentPath()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "task_only_parent_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->isChunked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "chunked"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public insert(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    .line 220
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, " failed!"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-ge v2, v0, :cond_1

    .line 222
    invoke-virtual {p1, v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v7

    .line 223
    iget v8, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    invoke-static {v8, v2, v7}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->toValues(IILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)Landroid/content/ContentValues;

    move-result-object v8

    const-string v9, "block"

    invoke-virtual {v1, v9, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    new-instance p1, Lcom/taptap/sdk/update/download/core/exception/SQLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/taptap/sdk/update/download/core/exception/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_1
    invoke-static {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->toValues(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "breakpoint"

    .line 228
    invoke-virtual {v1, v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    return-void

    .line 230
    :cond_2
    new-instance v0, Lcom/taptap/sdk/update/download/core/exception/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/exception/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadDirtyFileList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT * FROM taskFileDirty"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 121
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "id"

    .line 122
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_2
    throw v0
.end method

.method public loadResponseFilenameToMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT * FROM okdownloadResponseFilename"

    .line 178
    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 179
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "url"

    .line 180
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "filename"

    .line 181
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 185
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    throw v0
.end method

.method public loadToCache()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT * FROM breakpoint"

    .line 140
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    new-instance v5, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfoRow;

    invoke-direct {v5, v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfoRow;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v5, "SELECT * FROM block"

    .line 144
    invoke-virtual {v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 145
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;

    invoke-direct {v0, v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 149
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_3

    .line 150
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfoRow;

    .line 156
    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfoRow;->toInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v3

    .line 157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 158
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;

    .line 160
    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->getBreakpointId()I

    move-result v6

    iget v7, v3, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    if-ne v6, v7, :cond_4

    .line 161
    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->toInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->addBlock(Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V

    .line 162
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 165
    :cond_5
    iget v4, v3, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_4
    if-eqz v3, :cond_7

    .line 149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v1, :cond_8

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_8
    throw v0
.end method

.method public markFileClear(I)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 111
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "taskFileDirty"

    const-string v2, "id = ?"

    .line 110
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public markFileDirty(I)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "taskFileDirty"

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS breakpoint( id INTEGER PRIMARY KEY, url VARCHAR NOT NULL, etag VARCHAR, parent_path VARCHAR NOT NULL, filename VARCHAR, task_only_parent_path TINYINT(1) DEFAULT 0, chunked TINYINT(1) DEFAULT 0)"

    .line 78
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS block( id INTEGER PRIMARY KEY AUTOINCREMENT, breakpoint_id INTEGER, block_index INTEGER, start_offset INTEGER, content_length INTEGER, current_offset INTEGER)"

    .line 80
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS okdownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)"

    .line 82
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)"

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->setWriteAheadLoggingEnabled(Z)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    const-string p3, "CREATE TABLE IF NOT EXISTS okdownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)"

    .line 90
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    if-gt p2, v0, :cond_1

    const-string p2, "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)"

    .line 94
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeBlock(I)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 271
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "block"

    const-string v2, "breakpoint_id = ?"

    .line 270
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeInfo(I)V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 265
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "breakpoint"

    const-string v3, "id = ?"

    .line 264
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->removeBlock(I)V

    return-void
.end method

.method public updateBlockIncrease(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V
    .locals 2

    .line 236
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 237
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "current_offset"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    iget p1, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p4, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p4, p2

    const-string p1, "block"

    const-string p2, "breakpoint_id = ? AND block_index = ?"

    .line 238
    invoke-virtual {p3, p1, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateFilename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 193
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "url"

    .line 195
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "filename"

    .line 196
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT filename FROM okdownloadResponseFilename WHERE url = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 201
    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "filename"

    .line 204
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "okdownloadResponseFilename"

    .line 206
    invoke-virtual {v0, p2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    const-string p2, "okdownloadResponseFilename"

    .line 210
    invoke-virtual {v0, p2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 213
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p2

    move-object v3, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v3, :cond_3

    .line 213
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_3
    throw p2

    :catchall_2
    move-exception p1

    .line 215
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method public updateInfo(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT id FROM breakpoint WHERE id = ? LIMIT 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    .line 249
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 248
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 253
    :cond_1
    :try_start_1
    iget v2, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->removeInfo(I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;->insert(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    .line 256
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 260
    throw p1
.end method
