.class public Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;
.super Ljava/lang/Object;
.source "DownloadStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;,
        Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;
    }
.end annotation


# static fields
.field private static final FOUR_CONNECTION_UPPER_LIMIT:J = 0x6400000L

.field private static final ONE_CONNECTION_UPPER_LIMIT:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "DownloadStrategy"

.field private static final THREE_CONNECTION_UPPER_LIMIT:J = 0x3200000L

.field private static final TMP_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TWO_CONNECTION_UPPER_LIMIT:J = 0x500000L


# instance fields
.field isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

.field private manager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\\\|/([^\\\\|/|?]*)\\??"

    .line 141
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->TMP_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 357
    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public determineBlockCount(Lcom/taptap/sdk/update/download/DownloadTask;J)I
    .locals 2

    .line 73
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getSetConnectionCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getSetConnectionCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-wide/32 v0, 0x500000

    cmp-long p1, p2, v0

    if-gez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-wide/32 v0, 0x3200000

    cmp-long p1, p2, v0

    if-gez p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const-wide/32 v0, 0x6400000

    cmp-long p1, p2, v0

    if-gez p1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x5

    return p1
.end method

.method protected determineFilename(Ljava/lang/String;Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {p1}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 176
    sget-object p2, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->TMP_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 183
    invoke-static {p1}, Lcom/taptap/sdk/update/download/core/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 187
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t find valid filename."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1
.end method

.method public getPreconditionFailedCause(IZLcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Ljava/lang/String;)Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;
    .locals 1

    .line 314
    invoke-virtual {p3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x19c

    if-ne p1, v0, :cond_0

    .line 316
    sget-object p1, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->RESPONSE_PRECONDITION_FAILED:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object p1

    .line 319
    :cond_0
    invoke-static {p3}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 323
    sget-object p1, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->RESPONSE_ETAG_CHANGED:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object p1

    :cond_1
    const/16 p3, 0xc9

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_2

    .line 333
    sget-object p1, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object p1

    :cond_2
    const/16 p3, 0xcd

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_3

    .line 337
    sget-object p1, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public inspectAnotherSameInfo(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;J)Z
    .locals 6

    .line 102
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->isFilenameFromResponse()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->breakpointStore()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;

    move-result-object v0

    .line 105
    invoke-interface {v0, p1, p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;->findAnotherInfoFromCompare(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;->remove(I)V

    .line 110
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v2

    .line 111
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->reuseIdledSameInfoThresholdBytes()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    return v1

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 119
    :cond_3
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v2

    cmp-long p3, v2, p3

    if-eqz p3, :cond_4

    return v1

    .line 123
    :cond_4
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->reuseBlocks(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reuse another same info: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadStrategy"

    invoke-static {p2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public inspectFilenameFromResume(Ljava/lang/String;Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    .line 145
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilenameHolder()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->set(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public inspectNetworkAvailable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 362
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    .line 361
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 369
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 374
    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "network is not available!"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inspectNetworkOnWifi(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 381
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    .line 380
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->isWifiRequired()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 393
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    .line 394
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/OkDownload;->context()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    .line 398
    :cond_2
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lcom/taptap/sdk/update/download/core/Util;->isNetworkNotOnWifiType(Landroid/net/ConnectivityManager;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 399
    :cond_3
    new-instance p1, Lcom/taptap/sdk/update/download/core/exception/NetworkPolicyException;

    invoke-direct {p1}, Lcom/taptap/sdk/update/download/core/exception/NetworkPolicyException;-><init>()V

    throw p1

    .line 387
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "required for access network state but don\'t have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isServerCanceled(IZ)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xc8

    const/16 v2, 0xce

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isUseMultiBlock(Z)Z
    .locals 1

    .line 134
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->outputStreamFactory()Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;->supportSeek()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public resumeAvailableResponseCheck(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;ILcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;
    .locals 1

    .line 69
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;

    invoke-direct {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;-><init>(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;ILcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-object v0
.end method

.method public reuseIdledSameInfoThresholdBytes()J
    .locals 2

    const-wide/16 v0, 0x2800

    return-wide v0
.end method

.method public validFilenameFromResponse(Ljava/lang/String;Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->determineFilename(Ljava/lang/String;Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    monitor-enter p2

    .line 160
    :try_start_0
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilenameHolder()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->set(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFilenameHolder()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->set(Ljava/lang/String;)V

    .line 165
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public validFilenameFromStore(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 2

    .line 200
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->breakpointStore()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;->getResponseFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilenameHolder()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$FilenameHolder;->set(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public validInfoOnCompleted(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V
    .locals 9

    .line 212
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->getAfterCompleted(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object p2

    if-nez p2, :cond_2

    .line 214
    new-instance p2, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 215
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isUriContentScheme(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->getSizeFromContentUri(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file is not ready on valid info for task on complete state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadStrategy"

    invoke-static {v3, v2}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 229
    :goto_1
    new-instance v0, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-wide v5, v7

    invoke-direct/range {v2 .. v8}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;-><init>(JJJ)V

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->addBlock(Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V

    .line 231
    :cond_2
    invoke-static {p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask$TaskHideWrapper;->setBreakpointInfo(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-void
.end method
