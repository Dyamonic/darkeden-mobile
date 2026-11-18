.class public Lcom/yofi/sdk/downloadapk/DownLoadApk$DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownLoadApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/downloadapk/DownLoadApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;


# direct methods
.method public constructor <init>(Lcom/yofi/sdk/downloadapk/DownLoadApk;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk$DownloadCompleteReceiver;->this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p1, "extra_download_id"

    const-wide/16 v0, 0x0

    .line 139
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk$DownloadCompleteReceiver;->this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/yofi/sdk/downloadapk/DownLoadApk;->queryDownloadStatus(J)V

    return-void
.end method
