.class public Lcom/yofi/sdk/downloadapk/DownLoadApk;
.super Ljava/lang/Object;
.source "DownLoadApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/downloadapk/DownLoadApk$DownloadCompleteReceiver;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field downManager:Landroid/app/DownloadManager;

.field file:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field path:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field private sp:Landroid/content/SharedPreferences;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "url",
            "packageName"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "/YOFISDK"

    .line 29
    iput-object p3, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->path:Ljava/lang/String;

    .line 32
    new-instance p3, Lcom/yofi/sdk/downloadapk/DownLoadApk$1;

    invoke-direct {p3, p0}, Lcom/yofi/sdk/downloadapk/DownLoadApk$1;-><init>(Lcom/yofi/sdk/downloadapk/DownLoadApk;)V

    iput-object p3, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->handler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->url:Ljava/lang/String;

    const-string p2, "yofidownload"

    const/4 p3, 0x0

    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->sp:Landroid/content/SharedPreferences;

    .line 51
    new-instance p2, Lcom/yofi/sdk/downloadapk/DownLoadApk$DownloadCompleteReceiver;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/downloadapk/DownLoadApk$DownloadCompleteReceiver;-><init>(Lcom/yofi/sdk/downloadapk/DownLoadApk;)V

    iput-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->receiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public DownloadFile()V
    .locals 2

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/yofi/sdk/downloadapk/DownLoadApk;->downAPKToId()V

    return-void
.end method

.method public downAPKToId()V
    .locals 8

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->file:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->url:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->fileName:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->sp:Landroid/content/SharedPreferences;

    const-string v2, "url"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yofi/sdk/downloadapk/DownLoadApk;->queryDownloadStatus(J)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->downManager:Landroid/app/DownloadManager;

    .line 81
    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x3

    .line 82
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 85
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    const-string v2, "\u7248\u672c\u5347\u7ea7"

    .line 87
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u7248\u672c\u4e2d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 89
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 93
    iget-object v1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->downManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->url:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public getFileIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    .line 154
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public queryDownloadStatus(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_id"
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    .line 101
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 102
    iget-object v2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->downManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "status"

    .line 104
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "down"

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    const/16 v4, 0x10

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "STATUS_FAILED"

    .line 128
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->downManager:Landroid/app/DownloadManager;

    new-array v1, v1, [J

    aput-wide p1, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 118
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->file:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->fileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/downloadapk/DownLoadApk;->getFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/yofi/sdk/downloadapk/YoFiDownLoadServer;->downLoadAction:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const-string p1, "STATUS_PAUSED"

    .line 107
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string p1, "STATUS_PENDING"

    .line 109
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string p1, "STATUS_RUNNING"

    .line 112
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
