.class public final synthetic Lcom/taptap/sdk/update/download/core/download/-$$Lambda$NTs4VaUIlN3pZiRp5Rv0ENBrS-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/taptap/sdk/update/download/core/download/DownloadChain;


# direct methods
.method public synthetic constructor <init>(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/-$$Lambda$NTs4VaUIlN3pZiRp5Rv0ENBrS-A;->f$0:Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/-$$Lambda$NTs4VaUIlN3pZiRp5Rv0ENBrS-A;->f$0:Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->releaseConnection()V

    return-void
.end method
