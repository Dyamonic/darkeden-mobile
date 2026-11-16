.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;
.super Ljava/lang/Object;
.source "TapUpdateDialogManager.kt"

# interfaces
.implements Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showDownloadDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H\u0016J2\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0012\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1",
        "Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;",
        "onDownloadFailed",
        "",
        "cause",
        "Lcom/taptap/sdk/update/download/core/cause/EndCause;",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onDownloadProgress",
        "currentOffset",
        "",
        "fileTotalSize",
        "speedBytes",
        "progress",
        "",
        "speed",
        "",
        "onDownloadStart",
        "fileSize",
        "onDownloadSuccess",
        "file",
        "Ljava/io/File;",
        "tap-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$dialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 4

    .line 269
    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/EndCause;->CANCELED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-ne p1, v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$dialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    const-string v1, "0 B/s"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateSpeed(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 v1, -0x1e

    .line 279
    sget-object v2, Lcom/taptap/sdk/update/download/core/cause/EndCause;->PRE_ALLOCATE_FAILED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    if-ne p1, v2, :cond_2

    const-string v0, "\u8bbe\u5907\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u7ee7\u7eed\u4e0b\u8f7d"

    const/16 v1, -0x28

    move-object v3, v0

    goto :goto_1

    .line 283
    :cond_2
    sget-object v2, Lcom/taptap/sdk/update/download/core/cause/EndCause;->FILE_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-ne p1, v2, :cond_3

    const-string v0, "\u6587\u4ef6\u88ab\u5360\u7528"

    goto :goto_1

    .line 286
    :cond_3
    instance-of p1, p2, Lcom/taptap/sdk/update/download/core/exception/ServerCanceledException;

    if-eqz p1, :cond_4

    const/16 v1, -0xf

    goto :goto_1

    .line 288
    :cond_4
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-nez p1, :cond_7

    instance-of p1, p2, Ljava/net/SocketException;

    if-eqz p1, :cond_5

    goto :goto_0

    .line 293
    :cond_5
    instance-of p1, p2, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_6

    const/16 v1, -0xe

    goto :goto_1

    .line 295
    :cond_6
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_8

    const/16 v1, -0xc

    .line 297
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_8

    const/16 v1, -0xb

    goto :goto_1

    :cond_7
    :goto_0
    const/16 v1, -0xa

    .line 290
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v1, -0xd

    .line 304
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "errorCode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , errorLog = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TapUpdateLog"

    .line 302
    invoke-static {p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadFailed(ILjava/lang/String;)V

    .line 307
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object p2, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v3, p2, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$showErrorAndRetry(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public onDownloadProgress(JJJILjava/lang/String;)V
    .locals 3

    .line 240
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$getUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v1, v2, v1, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadErrorTips(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->hideDownloadErrorTips()V

    .line 243
    invoke-virtual {v0, p7}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateProgress(I)V

    .line 244
    invoke-virtual {v0, p8}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateSpeed(Ljava/lang/String;)V

    .line 245
    sget-object p7, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    .line 246
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 247
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-virtual {p7, p3, p1, p2}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadingSpeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart(J)V
    .locals 3

    const-string v0, "TapUpdateLog"

    const-string v1, "download start"

    .line 219
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$getUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d TapTap (\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lcom/taptap/sdk/update/download/core/Util;->humanReadableBytes(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0xff09

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateDownloadContentTitle(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 227
    invoke-virtual {v0, p1, p2, p1, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadErrorTips(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->hideDownloadErrorTips()V

    const-string p1, "0 B/s"

    .line 229
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateSpeed(Ljava/lang/String;)V

    .line 230
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadStart()V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taptap/sdk/update/extension/BizExtKt;->checkApkFile(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check apk file result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapUpdateLog"

    invoke-static {v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_1

    const/4 p1, -0x1

    if-ge v0, p1, :cond_0

    const-string p1, "package info is not valid"

    goto :goto_0

    :cond_0
    const-string p1, "not a apk file"

    .line 259
    :goto_0
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    const/16 v1, -0x32

    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadFailed(ILjava/lang/String;)V

    .line 260
    sget-object p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->clearCache(Landroid/content/Context;)V

    .line 261
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "\u6587\u4ef6\u4e0b\u8f7d\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p1, v2, v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$showErrorAndRetry(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void

    .line 264
    :cond_1
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadComplete()V

    .line 265
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;->$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$showInstallDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
