.class public Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueSet"
.end annotation


# instance fields
.field private autoCallbackToUIThread:Ljava/lang/Boolean;

.field private flushBufferSize:Ljava/lang/Integer;

.field private headerMapFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private minIntervalMillisCallbackProcess:Ljava/lang/Integer;

.field private passIfAlreadyCompleted:Ljava/lang/Boolean;

.field private readBufferSize:Ljava/lang/Integer;

.field private syncBufferIntervalMillis:Ljava/lang/Integer;

.field private syncBufferSize:Ljava/lang/Integer;

.field private tag:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;

.field private wifiRequired:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Landroid/net/Uri;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->passIfAlreadyCompleted:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Object;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/util/Map;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->headerMapFields:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->readBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->flushBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->syncBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->wifiRequired:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->syncBufferIntervalMillis:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Boolean;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->autoCallbackToUIThread:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)Ljava/lang/Integer;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->minIntervalMillisCallbackProcess:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public commit()Lcom/taptap/sdk/update/download/DownloadContext$Builder;
    .locals 1

    .line 394
    new-instance v0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/DownloadContext$Builder;-><init>(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)V

    return-object v0
.end method

.method public getDirUri()Landroid/net/Uri;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFlushBufferSize()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->flushBufferSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeaderMapFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->headerMapFields:Ljava/util/Map;

    return-object v0
.end method

.method public getMinIntervalMillisCallbackProcess()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->minIntervalMillisCallbackProcess:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0xbb8

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getReadBufferSize()I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->readBufferSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSyncBufferIntervalMillis()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->syncBufferIntervalMillis:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSyncBufferSize()I
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->syncBufferSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public isAutoCallbackToUIThread()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->autoCallbackToUIThread:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isPassIfAlreadyCompleted()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->passIfAlreadyCompleted:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isWifiRequired()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->wifiRequired:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setAutoCallbackToUIThread(Ljava/lang/Boolean;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->autoCallbackToUIThread:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setFlushBufferSize(I)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->flushBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHeaderMapFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->headerMapFields:Ljava/util/Map;

    return-void
.end method

.method public setMinIntervalMillisCallbackProcess(Ljava/lang/Integer;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->minIntervalMillisCallbackProcess:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParentPath(Ljava/lang/String;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 1

    .line 296
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->setParentPathFile(Ljava/io/File;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    move-result-object p1

    return-object p1
.end method

.method public setParentPathFile(Ljava/io/File;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 1

    .line 287
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->uri:Landroid/net/Uri;

    return-object p0

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parent path only accept directory path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParentPathUri(Landroid/net/Uri;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setPassIfAlreadyCompleted(Z)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 389
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->passIfAlreadyCompleted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setReadBufferSize(I)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->readBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSyncBufferIntervalMillis(I)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->syncBufferIntervalMillis:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSyncBufferSize(I)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->syncBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setWifiRequired(Ljava/lang/Boolean;)Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;->wifiRequired:Ljava/lang/Boolean;

    return-object p0
.end method
