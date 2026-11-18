.class interface abstract Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper$Migration;
.super Ljava/lang/Object;
.source "BreakpointSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Migration"
.end annotation


# static fields
.field public static final RESPONSE_FILENAME_1_TO_2:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS okdownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)"

.field public static final TASK_FILE_DIRTY_NONE_TO_2:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)"
