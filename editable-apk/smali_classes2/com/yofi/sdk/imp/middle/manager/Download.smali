.class public Lcom/yofi/sdk/imp/middle/manager/Download;
.super Ljava/lang/Object;
.source "Download.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dManager:Landroid/app/DownloadManager;

.field private filename:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "filename",
            "url",
            "name"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->filename:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->url:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->name:Ljava/lang/String;

    const-string p2, "download"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->dManager:Landroid/app/DownloadManager;

    .line 30
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/manager/Download;->Fileexit()V

    return-void
.end method

.method private Fileexit()V
    .locals 3

    .line 34
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public download()V
    .locals 3

    .line 43
    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 44
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 45
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string v1, "application/vnd.android.package-archive"

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 49
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->dManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 50
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/Download;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
