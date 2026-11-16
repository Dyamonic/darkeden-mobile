.class public Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlterContext"
.end annotation


# instance fields
.field private final context:Lcom/taptap/sdk/update/download/DownloadContext;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/DownloadContext;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;->context:Lcom/taptap/sdk/update/download/DownloadContext;

    return-void
.end method


# virtual methods
.method public replaceTask(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;->context:Lcom/taptap/sdk/update/download/DownloadContext;

    invoke-static {v0}, Lcom/taptap/sdk/update/download/DownloadContext;->access$1200(Lcom/taptap/sdk/update/download/DownloadContext;)[Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object v0

    const/4 v1, 0x0

    .line 445
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 446
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 448
    aput-object p2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
