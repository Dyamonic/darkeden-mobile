.class public Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;
.super Ljava/lang/Object;
.source "DownloadUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field private connectTimeout:Ljava/lang/Integer;

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)Ljava/net/Proxy;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;->readTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;)Ljava/lang/Integer;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;->connectTimeout:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public connectTimeout(I)Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;
    .locals 0

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;->connectTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public readTimeout(I)Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;
    .locals 0

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/connection/DownloadUrlConnection$Configuration;->readTimeout:Ljava/lang/Integer;

    return-object p0
.end method
