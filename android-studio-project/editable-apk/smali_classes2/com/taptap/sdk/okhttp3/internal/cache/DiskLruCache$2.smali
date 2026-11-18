.class Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache$2;
.super Lcom/taptap/sdk/okhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lcom/taptap/sdk/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    const-class v0, Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;Lcom/taptap/sdk/okio/Sink;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/taptap/sdk/okhttp3/internal/cache/FaultHidingSink;-><init>(Lcom/taptap/sdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/taptap/sdk/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method
