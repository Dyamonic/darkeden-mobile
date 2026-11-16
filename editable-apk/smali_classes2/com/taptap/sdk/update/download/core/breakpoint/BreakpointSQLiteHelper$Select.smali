.class interface abstract Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper$Select;
.super Ljava/lang/Object;
.source "BreakpointSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Select"
.end annotation


# static fields
.field public static final ALL_FROM_BLOCK:Ljava/lang/String; = "SELECT * FROM block"

.field public static final ALL_FROM_BREAKPOINT:Ljava/lang/String; = "SELECT * FROM breakpoint"

.field public static final ALL_FROM_RESPONSE_FILENAME:Ljava/lang/String; = "SELECT * FROM okdownloadResponseFilename"

.field public static final ALL_FROM_TASK_FILE_DIRTY:Ljava/lang/String; = "SELECT * FROM taskFileDirty"

.field public static final FILENAME_FROM_RESPONSE_FILENAME_BY_URL:Ljava/lang/String; = "SELECT filename FROM okdownloadResponseFilename WHERE url = ?"

.field public static final ID_FROM_BREAKPOINT_BY_ID:Ljava/lang/String; = "SELECT id FROM breakpoint WHERE id = ? LIMIT 1"
