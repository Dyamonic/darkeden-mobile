.class Lcom/taptap/sdk/update/download/core/download/DownloadCache$PreError;
.super Lcom/taptap/sdk/update/download/core/download/DownloadCache;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/download/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreError"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;-><init>(Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache$PreError;->setUnknownError(Ljava/io/IOException;)V

    return-void
.end method
