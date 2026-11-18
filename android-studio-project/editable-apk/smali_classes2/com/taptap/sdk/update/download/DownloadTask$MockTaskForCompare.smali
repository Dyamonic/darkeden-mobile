.class public Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;
.super Lcom/taptap/sdk/update/download/core/IdentifiedTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockTaskForCompare"
.end annotation


# instance fields
.field final filename:Ljava/lang/String;

.field final id:I

.field final parentFile:Ljava/io/File;

.field final providedPathFile:Ljava/io/File;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 980
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/IdentifiedTask;-><init>()V

    .line 981
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->id:I

    const-string p1, ""

    .line 982
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    .line 983
    sget-object p1, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->EMPTY_FILE:Ljava/io/File;

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 984
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    .line 985
    sget-object p1, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->EMPTY_FILE:Ljava/io/File;

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(ILcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 0

    .line 988
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/IdentifiedTask;-><init>()V

    .line 989
    iput p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->id:I

    .line 990
    invoke-static {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->access$000(Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    .line 991
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    .line 992
    invoke-static {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->access$100(Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    .line 993
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 997
    iget v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->id:I

    return v0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    return-object v0
.end method

.method protected getProvidedPathFile()Ljava/io/File;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    return-object v0
.end method
