.class final Lcom/taptap/sdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lcom/taptap/sdk/okio/ForwardingSink;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lcom/taptap/sdk/okio/Sink;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/taptap/sdk/okio/ForwardingSink;-><init>(Lcom/taptap/sdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/taptap/sdk/okio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/taptap/sdk/okio/ForwardingSink;->write(Lcom/taptap/sdk/okio/Buffer;J)V

    .line 150
    iget-wide v0, p0, Lcom/taptap/sdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/taptap/sdk/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
