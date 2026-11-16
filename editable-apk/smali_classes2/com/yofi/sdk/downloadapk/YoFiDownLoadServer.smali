.class public Lcom/yofi/sdk/downloadapk/YoFiDownLoadServer;
.super Landroid/app/Service;
.source "YoFiDownLoadServer.java"


# static fields
.field public static downLoadAction:Ljava/lang/String; = "yofi.download.server"


# instance fields
.field apk:Lcom/yofi/sdk/downloadapk/DownLoadApk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/YoFiDownLoadServer;->apk:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    invoke-virtual {v0}, Lcom/yofi/sdk/downloadapk/DownLoadApk;->unregisterReceiver()V

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/yofi/sdk/downloadapk/DownLoadApk;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yofi/sdk/downloadapk/DownLoadApk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yofi/sdk/downloadapk/YoFiDownLoadServer;->apk:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    .line 20
    invoke-virtual {v0}, Lcom/yofi/sdk/downloadapk/DownLoadApk;->DownloadFile()V

    .line 21
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
