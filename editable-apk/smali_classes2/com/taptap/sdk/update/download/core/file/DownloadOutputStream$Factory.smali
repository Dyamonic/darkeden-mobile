.class public interface abstract Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;
.super Ljava/lang/Object;
.source "DownloadOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Landroid/net/Uri;I)Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract create(Landroid/content/Context;Ljava/io/File;I)Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract supportSeek()Z
.end method
