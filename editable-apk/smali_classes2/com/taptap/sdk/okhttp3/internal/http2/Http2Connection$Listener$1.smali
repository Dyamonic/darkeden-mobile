.class Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener$1;
.super Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lcom/taptap/sdk/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    sget-object v0, Lcom/taptap/sdk/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/taptap/sdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Stream;->close(Lcom/taptap/sdk/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
