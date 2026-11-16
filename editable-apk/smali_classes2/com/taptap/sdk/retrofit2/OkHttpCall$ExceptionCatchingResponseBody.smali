.class final Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;
.super Lcom/taptap/sdk/okhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingResponseBody"
.end annotation


# instance fields
.field private final delegate:Lcom/taptap/sdk/okhttp3/ResponseBody;

.field private final delegateSource:Lcom/taptap/sdk/okio/BufferedSource;

.field thrownException:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/okhttp3/ResponseBody;)V
    .locals 1

    .line 309
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/ResponseBody;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lcom/taptap/sdk/okhttp3/ResponseBody;

    .line 311
    new-instance v0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;

    .line 313
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->source()Lcom/taptap/sdk/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;Lcom/taptap/sdk/okio/Source;)V

    .line 312
    invoke-static {v0}, Lcom/taptap/sdk/okio/Okio;->buffer(Lcom/taptap/sdk/okio/Source;)Lcom/taptap/sdk/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:Lcom/taptap/sdk/okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/taptap/sdk/okhttp3/MediaType;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lcom/taptap/sdk/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/ResponseBody;->contentType()Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lcom/taptap/sdk/okio/BufferedSource;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:Lcom/taptap/sdk/okio/BufferedSource;

    return-object v0
.end method

.method throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    throw v0
.end method
