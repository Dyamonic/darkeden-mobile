.class public interface abstract Lcom/taptap/sdk/update/download/IRedirectHandler;
.super Ljava/lang/Object;
.source "IRedirectHandler.java"


# virtual methods
.method public abstract getRedirectLocation()Ljava/lang/String;
.end method

.method public abstract handleRedirect(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;",
            "Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
