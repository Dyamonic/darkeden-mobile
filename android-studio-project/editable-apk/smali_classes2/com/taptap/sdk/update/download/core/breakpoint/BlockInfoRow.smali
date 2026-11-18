.class public Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;
.super Ljava/lang/Object;
.source "BlockInfoRow.java"


# instance fields
.field private final breakpointId:I

.field private final contentLength:J

.field private final currentOffset:J

.field private final startOffset:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "breakpoint_id"

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->breakpointId:I

    const-string v0, "start_offset"

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->startOffset:J

    const-string v0, "content_length"

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->contentLength:J

    const-string v0, "current_offset"

    .line 39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->currentOffset:J

    return-void
.end method


# virtual methods
.method public getBreakpointId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->breakpointId:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->contentLength:J

    return-wide v0
.end method

.method public getCurrentOffset()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->currentOffset:J

    return-wide v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->startOffset:J

    return-wide v0
.end method

.method public toInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;
    .locals 8

    .line 59
    new-instance v7, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    iget-wide v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->startOffset:J

    iget-wide v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->contentLength:J

    iget-wide v5, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfoRow;->currentOffset:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;-><init>(JJJ)V

    return-object v7
.end method
