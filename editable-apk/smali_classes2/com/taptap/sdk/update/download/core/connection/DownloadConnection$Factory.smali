.class public interface abstract Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;
.super Ljava/lang/Object;
.source "DownloadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Ljava/lang/String;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
