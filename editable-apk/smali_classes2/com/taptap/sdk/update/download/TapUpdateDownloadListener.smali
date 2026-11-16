.class public interface abstract Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;
.super Ljava/lang/Object;
.source "TapUpdateDownloadListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008H&J2\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000bH&J\u0012\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;",
        "",
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


# virtual methods
.method public abstract onDownloadFailed(Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadProgress(JJJILjava/lang/String;)V
.end method

.method public abstract onDownloadStart(J)V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method
