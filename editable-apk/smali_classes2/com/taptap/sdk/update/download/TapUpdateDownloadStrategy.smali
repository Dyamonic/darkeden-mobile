.class public final Lcom/taptap/sdk/update/download/TapUpdateDownloadStrategy;
.super Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;
.source "TapUpdateDownloadStrategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/update/download/TapUpdateDownloadStrategy;",
        "Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;",
        "()V",
        "determineFilename",
        "",
        "responseFileName",
        "task",
        "Lcom/taptap/sdk/update/download/DownloadTask;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected determineFilename(Ljava/lang/String;Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->determineFilename(Ljava/lang/String;Lcom/taptap/sdk/update/download/DownloadTask;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "TapTap_latest.apk"

    :goto_0
    return-object p1
.end method
