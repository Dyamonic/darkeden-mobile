.class public Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Factory;
.super Ljava/lang/Object;
.source "DownloadUrlConnection.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final configuration:Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Factory;-><init>(Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Factory;->configuration:Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Factory;->configuration:Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;

    invoke-direct {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection;-><init>(Ljava/lang/String;Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)V

    return-object v0
.end method

.method create(Ljava/net/URL;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Factory;->configuration:Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;

    invoke-direct {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection;-><init>(Ljava/net/URL;Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)V

    return-object v0
.end method
