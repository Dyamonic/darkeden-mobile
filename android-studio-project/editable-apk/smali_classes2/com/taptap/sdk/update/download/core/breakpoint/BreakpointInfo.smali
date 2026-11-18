.class public Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
.super Ljava/lang/Object;
.source "BreakpointInfo.java"


# instance fields
.field private final blockInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private chunked:Z

.field private etag:Ljava/lang/String;

.field private final filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

.field final id:I

.field final parentFile:Ljava/io/File;

.field private targetFile:Ljava/io/File;

.field private final taskOnlyProvidedParentPath:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    .line 49
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    .line 53
    invoke-static {p4}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1, p4}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    .line 59
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    :goto_0
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    .line 66
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    .line 70
    invoke-static {p4}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1, p4}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    .line 76
    :goto_0
    iput-boolean p5, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    return-void
.end method


# virtual methods
.method public addBlock(Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 7

    .line 187
    new-instance v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    iget v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 189
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    iput-boolean v0, v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    .line 190
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    .line 191
    iget-object v2, v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->copy()Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public copyWithReplaceId(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 7

    .line 197
    new-instance v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    .line 198
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 199
    iget-boolean p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    iput-boolean p1, v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    .line 200
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    .line 201
    iget-object v1, v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->copy()Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public copyWithReplaceIdAndUrl(ILjava/lang/String;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 7

    .line 215
    new-instance v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    .line 216
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    .line 217
    iget-boolean p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    iput-boolean p1, v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    .line 218
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    .line 219
    iget-object v0, v6, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->copy()Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    return-object p1
.end method

.method public getBlockCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilenameHolder()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    return v0
.end method

.method public getTotalLength()J
    .locals 7

    .line 142
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 145
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 147
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 148
    instance-of v6, v5, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    if-eqz v6, :cond_1

    .line 149
    check-cast v5, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide v5

    add-long/2addr v0, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public getTotalOffset()J
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 133
    instance-of v6, v5, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    if-eqz v6, :cond_0

    .line 134
    check-cast v5, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v5

    add-long/2addr v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    return v0
.end method

.method public isLastBlock(I)Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSameFrom(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 230
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 234
    :cond_2
    iget-boolean v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    if-eqz v3, :cond_5

    .line 236
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->isFilenameFromResponse()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    .line 238
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public isSingleBlock()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTaskOnlyProvidedParentPath()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    return v0
.end method

.method public resetBlockInfos()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public resetInfo()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    return-void
.end method

.method public reuseBlocks(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    iget-object p1, p1, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setChunked(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->chunked:Z

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] url["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] etag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] taskOnlyProvidedParentPath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] parent path["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] filename["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    .line 247
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] block(s):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/List;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
