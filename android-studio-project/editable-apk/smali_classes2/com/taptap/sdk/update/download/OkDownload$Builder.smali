.class public Lcom/taptap/sdk/update/download/OkDownload$Builder;
.super Ljava/lang/Object;
.source "OkDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/OkDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

.field private connectionFactory:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

.field private final context:Landroid/content/Context;

.field private downloadDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

.field private downloadStore:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

.field private downloadStrategy:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

.field private monitor:Lcom/taptap/sdk/update/download/DownloadMonitor;

.field private outputStreamFactory:Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

.field private processFileStrategy:Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/taptap/sdk/update/download/OkDownload;
    .locals 10

    .line 178
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStore:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->createDefaultDatabase(Landroid/content/Context;)Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStore:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->connectionFactory:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    if-nez v0, :cond_3

    .line 191
    invoke-static {}, Lcom/taptap/sdk/update/download/core/Util;->createDefaultConnectionFactory()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->connectionFactory:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->outputStreamFactory:Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    if-nez v0, :cond_4

    .line 195
    new-instance v0, Lcom/taptap/sdk/update/download/core/file/DownloadUriOutputStream$Factory;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/file/DownloadUriOutputStream$Factory;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->outputStreamFactory:Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->processFileStrategy:Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    if-nez v0, :cond_5

    .line 199
    new-instance v0, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->processFileStrategy:Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStrategy:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    if-nez v0, :cond_6

    .line 203
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStrategy:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    .line 206
    :cond_6
    new-instance v0, Lcom/taptap/sdk/update/download/OkDownload;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    iget-object v4, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    iget-object v5, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStore:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->connectionFactory:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    iget-object v7, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->outputStreamFactory:Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    iget-object v8, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->processFileStrategy:Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    iget-object v9, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStrategy:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/taptap/sdk/update/download/OkDownload;-><init>(Landroid/content/Context;Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;)V

    .line 210
    iget-object v1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->monitor:Lcom/taptap/sdk/update/download/DownloadMonitor;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/OkDownload;->setMonitor(Lcom/taptap/sdk/update/download/DownloadMonitor;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadStore["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStore:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] connectionFactory["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->connectionFactory:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OkDownload"

    invoke-static {v2, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public callbackDispatcher(Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    return-object p0
.end method

.method public connectionFactory(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->connectionFactory:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    return-object p0
.end method

.method public downloadDispatcher(Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    return-object p0
.end method

.method public downloadStore(Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStore:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    return-object p0
.end method

.method public downloadStrategy(Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->downloadStrategy:Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    return-object p0
.end method

.method public monitor(Lcom/taptap/sdk/update/download/DownloadMonitor;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->monitor:Lcom/taptap/sdk/update/download/DownloadMonitor;

    return-object p0
.end method

.method public outputStreamFactory(Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->outputStreamFactory:Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    return-object p0
.end method

.method public processFileStrategy(Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;)Lcom/taptap/sdk/update/download/OkDownload$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/taptap/sdk/update/download/OkDownload$Builder;->processFileStrategy:Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    return-object p0
.end method
