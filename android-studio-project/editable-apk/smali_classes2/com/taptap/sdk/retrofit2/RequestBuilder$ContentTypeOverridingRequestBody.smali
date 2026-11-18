.class Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lcom/taptap/sdk/okhttp3/RequestBody;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lcom/taptap/sdk/okhttp3/MediaType;

.field private final delegate:Lcom/taptap/sdk/okhttp3/RequestBody;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/okhttp3/RequestBody;Lcom/taptap/sdk/okhttp3/MediaType;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/RequestBody;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lcom/taptap/sdk/okhttp3/RequestBody;

    .line 279
    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lcom/taptap/sdk/okhttp3/RequestBody;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/taptap/sdk/okhttp3/MediaType;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/taptap/sdk/okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lcom/taptap/sdk/okhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okhttp3/RequestBody;->writeTo(Lcom/taptap/sdk/okio/BufferedSink;)V

    return-void
.end method
