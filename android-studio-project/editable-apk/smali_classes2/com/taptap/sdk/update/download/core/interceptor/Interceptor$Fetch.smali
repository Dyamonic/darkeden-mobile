.class public interface abstract Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/interceptor/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Fetch"
.end annotation


# virtual methods
.method public abstract interceptFetch(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
