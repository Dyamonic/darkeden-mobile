.class Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;
.super Lcom/taptap/sdk/okio/ForwardingSource;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lcom/taptap/sdk/okhttp3/ResponseBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;Lcom/taptap/sdk/okio/Source;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {p0, p2}, Lcom/taptap/sdk/okio/ForwardingSource;-><init>(Lcom/taptap/sdk/okio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/taptap/sdk/okio/Buffer;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/taptap/sdk/okio/ForwardingSource;->read(Lcom/taptap/sdk/okio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 319
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;->this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    iput-object p1, p2, Lcom/taptap/sdk/retrofit2/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    .line 320
    throw p1
.end method
