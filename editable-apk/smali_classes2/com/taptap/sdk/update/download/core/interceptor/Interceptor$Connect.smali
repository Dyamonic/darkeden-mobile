.class public interface abstract Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/interceptor/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Connect"
.end annotation


# virtual methods
.method public abstract interceptConnect(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
