.class interface abstract Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper$CreateTable;
.super Ljava/lang/Object;
.source "BreakpointSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CreateTable"
.end annotation


# static fields
.field public static final BLOCK:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS block( id INTEGER PRIMARY KEY AUTOINCREMENT, breakpoint_id INTEGER, block_index INTEGER, start_offset INTEGER, content_length INTEGER, current_offset INTEGER)"

.field public static final BREAKPOINT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS breakpoint( id INTEGER PRIMARY KEY, url VARCHAR NOT NULL, etag VARCHAR, parent_path VARCHAR NOT NULL, filename VARCHAR, task_only_parent_path TINYINT(1) DEFAULT 0, chunked TINYINT(1) DEFAULT 0)"

.field public static final RESPONSE_FILENAME:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS okdownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)"

.field public static final TASK_FILE_DIRTY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)"
