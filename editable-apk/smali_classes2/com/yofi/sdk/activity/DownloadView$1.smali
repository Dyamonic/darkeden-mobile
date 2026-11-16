.class Lcom/yofi/sdk/activity/DownloadView$1;
.super Ljava/lang/Object;
.source "DownloadView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/DownloadView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/DownloadView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/DownloadView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/yofi/sdk/activity/DownloadView$1;->this$0:Lcom/yofi/sdk/activity/DownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "userAgent",
            "contentDisposition",
            "mimeType",
            "contentLength"
        }
    .end annotation

    .line 53
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    .line 55
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    new-instance p3, Lcom/yofi/sdk/activity/DownloadView$DownloadTask;

    iget-object p4, p0, Lcom/yofi/sdk/activity/DownloadView$1;->this$0:Lcom/yofi/sdk/activity/DownloadView;

    const/4 p5, 0x0

    invoke-direct {p3, p4, p5}, Lcom/yofi/sdk/activity/DownloadView$DownloadTask;-><init>(Lcom/yofi/sdk/activity/DownloadView;Lcom/yofi/sdk/activity/DownloadView$1;)V

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p2, p4, p1

    invoke-virtual {p3, p4}, Lcom/yofi/sdk/activity/DownloadView$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
