.class public Lcom/taptap/sdk/update/download/DownloadTask$Builder;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_CALLBACK_TO_UI_THREAD:Z = true

.field public static final DEFAULT_FLUSH_BUFFER_SIZE:I = 0x4000

.field public static final DEFAULT_IS_WIFI_REQUIRED:Z = false

.field public static final DEFAULT_MIN_INTERVAL_MILLIS_CALLBACK_PROCESS:I = 0xbb8

.field public static final DEFAULT_PASS_IF_ALREADY_COMPLETED:Z = true

.field public static final DEFAULT_READ_BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_SYNC_BUFFER_INTERVAL_MILLIS:I = 0x7d0

.field public static final DEFAULT_SYNC_BUFFER_SIZE:I = 0x10000


# instance fields
.field private autoCallbackToUIThread:Z

.field private connectionCount:Ljava/lang/Integer;

.field private filename:Ljava/lang/String;

.field private flushBufferSize:I

.field private volatile headerMapFields:Ljava/util/Map;
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

.field private isFilenameFromResponse:Ljava/lang/Boolean;

.field private isPreAllocateLength:Ljava/lang/Boolean;

.field private isWifiRequired:Z

.field private minIntervalMillisCallbackProcess:I

.field private passIfAlreadyCompleted:Z

.field private priority:I

.field private readBufferSize:I

.field private syncBufferIntervalMillis:I

.field private syncBufferSize:I

.field final uri:Landroid/net/Uri;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 672
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->readBufferSize:I

    const/16 v0, 0x4000

    .line 674
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->flushBufferSize:I

    const/high16 v0, 0x10000

    .line 680
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferSize:I

    const/16 v0, 0x7d0

    .line 682
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferIntervalMillis:I

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->autoCallbackToUIThread:Z

    const/16 v1, 0xbb8

    .line 688
    iput v1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    .line 698
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isWifiRequired:Z

    .line 661
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->url:Ljava/lang/String;

    .line 662
    iput-object p2, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->uri:Landroid/net/Uri;

    .line 663
    invoke-static {p2}, Lcom/taptap/sdk/update/download/core/Util;->isUriContentScheme(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 664
    invoke-static {p2}, Lcom/taptap/sdk/update/download/core/Util;->getFilenameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->filename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 672
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->readBufferSize:I

    const/16 v0, 0x4000

    .line 674
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->flushBufferSize:I

    const/high16 v0, 0x10000

    .line 680
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferSize:I

    const/16 v0, 0x7d0

    .line 682
    iput v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferIntervalMillis:I

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->autoCallbackToUIThread:Z

    const/16 v1, 0xbb8

    .line 688
    iput v1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    .line 698
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isWifiRequired:Z

    .line 650
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->url:Ljava/lang/String;

    .line 651
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 635
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 636
    invoke-static {p3}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 637
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isFilenameFromResponse:Ljava/lang/Boolean;

    goto :goto_0

    .line 639
    :cond_0
    iput-object p3, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->filename:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->headerMapFields:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->headerMapFields:Ljava/util/Map;

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->headerMapFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 797
    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->headerMapFields:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public build()Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 20

    move-object/from16 v0, p0

    .line 912
    new-instance v18, Lcom/taptap/sdk/update/download/DownloadTask;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->uri:Landroid/net/Uri;

    iget v4, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->priority:I

    iget v5, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->readBufferSize:I

    iget v6, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->flushBufferSize:I

    iget v7, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferSize:I

    iget v8, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferIntervalMillis:I

    iget-boolean v9, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->autoCallbackToUIThread:Z

    iget v10, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    iget-object v11, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->headerMapFields:Ljava/util/Map;

    iget-object v12, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->filename:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    iget-boolean v14, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isWifiRequired:Z

    iget-object v15, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isFilenameFromResponse:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->connectionCount:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isPreAllocateLength:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/taptap/sdk/update/download/DownloadTask;-><init>(Ljava/lang/String;Landroid/net/Uri;IIIIIZILjava/util/Map;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object v18
.end method

.method public setAutoCallbackToUIThread(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 760
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->autoCallbackToUIThread:Z

    return-object p0
.end method

.method public setConnectionCount(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 727
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->connectionCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFilename(Ljava/lang/String;)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public setFilenameFromResponse(Ljava/lang/Boolean;)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isUriFileScheme(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isFilenameFromResponse:Ljava/lang/Boolean;

    return-object p0

    .line 744
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri isn\'t file scheme we can\'t let filename from response"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlushBufferSize(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 836
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->flushBufferSize:I

    return-object p0

    .line 834
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeaderMapFields(Ljava/util/Map;)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/taptap/sdk/update/download/DownloadTask$Builder;"
        }
    .end annotation

    .line 782
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->headerMapFields:Ljava/util/Map;

    return-object p0
.end method

.method public setMinIntervalMillisCallbackProcess(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 772
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    return-object p0
.end method

.method public setPassIfAlreadyCompleted(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 891
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    return-object p0
.end method

.method public setPreAllocateLength(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 716
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isPreAllocateLength:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPriority(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 810
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->priority:I

    return-object p0
.end method

.method public setReadBufferSize(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 823
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->readBufferSize:I

    return-object p0

    .line 821
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSyncBufferIntervalMillis(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 864
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferIntervalMillis:I

    return-object p0

    .line 861
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSyncBufferSize(I)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 849
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->syncBufferSize:I

    return-object p0

    .line 847
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWifiRequired(Z)Lcom/taptap/sdk/update/download/DownloadTask$Builder;
    .locals 0

    .line 902
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$Builder;->isWifiRequired:Z

    return-object p0
.end method
