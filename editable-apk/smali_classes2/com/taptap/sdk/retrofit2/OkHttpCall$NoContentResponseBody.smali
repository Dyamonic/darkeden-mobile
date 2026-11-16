.class final Lcom/taptap/sdk/retrofit2/OkHttpCall$NoContentResponseBody;
.super Lcom/taptap/sdk/okhttp3/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lcom/taptap/sdk/okhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/okhttp3/MediaType;J)V
    .locals 0
    .param p1    # Lcom/taptap/sdk/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/ResponseBody;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    .line 285
    iput-wide p2, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 295
    iget-wide v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/taptap/sdk/okhttp3/MediaType;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lcom/taptap/sdk/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lcom/taptap/sdk/okio/BufferedSource;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
