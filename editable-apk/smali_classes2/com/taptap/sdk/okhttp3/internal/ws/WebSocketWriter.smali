.class final Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lcom/taptap/sdk/okio/Buffer;

.field final frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lcom/taptap/sdk/okio/BufferedSink;

.field final sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLcom/taptap/sdk/okio/BufferedSink;Ljava/util/Random;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {v0}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/taptap/sdk/okio/Buffer;

    .line 54
    new-instance v0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    const-string v0, "sink == null"

    .line 62
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "random == null"

    .line 63
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iput-boolean p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 65
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/taptap/sdk/okio/BufferedSink;

    .line 66
    invoke-interface {p2}, Lcom/taptap/sdk/okio/BufferedSink;->buffer()Lcom/taptap/sdk/okio/Buffer;

    move-result-object p2

    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    .line 67
    iput-object p3, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 70
    :goto_0
    iput-object p3, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_1

    .line 71
    new-instance p2, Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    return-void
.end method

.method private writeControlFrame(ILcom/taptap/sdk/okio/ByteString;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p2}, Lcom/taptap/sdk/okio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    or-int/lit16 p1, p1, 0x80

    .line 122
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 125
    iget-boolean p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    .line 127
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 129
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 130
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/okio/Buffer;->write([B)Lcom/taptap/sdk/okio/Buffer;

    if-lez v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide v0

    .line 134
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okio/Buffer;->write(Lcom/taptap/sdk/okio/ByteString;)Lcom/taptap/sdk/okio/Buffer;

    .line 136
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    iget-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okio/Buffer;->readAndWriteUnsafe(Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;)Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    .line 137
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 138
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    iget-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {p1, p2}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;[B)V

    .line 139
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;->close()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 143
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okio/Buffer;->write(Lcom/taptap/sdk/okio/ByteString;)Lcom/taptap/sdk/okio/Buffer;

    .line 146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/taptap/sdk/okio/BufferedSink;

    invoke-interface {p1}, Lcom/taptap/sdk/okio/BufferedSink;->flush()V

    return-void

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method newMessageSink(IJ)Lcom/taptap/sdk/okio/Sink;
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 160
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 161
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, p1, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 162
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v0, p1, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 163
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 165
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object p1

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeClose(ILcom/taptap/sdk/okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/taptap/sdk/okio/ByteString;->EMPTY:Lcom/taptap/sdk/okio/ByteString;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    .line 95
    invoke-static {p1}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 97
    :cond_1
    new-instance v0, Lcom/taptap/sdk/okio/Buffer;

    invoke-direct {v0}, Lcom/taptap/sdk/okio/Buffer;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okio/Buffer;->writeShort(I)Lcom/taptap/sdk/okio/Buffer;

    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {v0, p2}, Lcom/taptap/sdk/okio/Buffer;->write(Lcom/taptap/sdk/okio/ByteString;)Lcom/taptap/sdk/okio/Buffer;

    .line 102
    :cond_2
    invoke-virtual {v0}, Lcom/taptap/sdk/okio/Buffer;->readByteString()Lcom/taptap/sdk/okio/ByteString;

    move-result-object v0

    :cond_3
    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 106
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILcom/taptap/sdk/okio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iput-boolean p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw p1
.end method

.method writeMessageFrame(IJZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 p1, p1, 0x80

    .line 176
    :cond_1
    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p4, p1}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 179
    iget-boolean p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_2

    const/16 v0, 0x80

    :cond_2
    const-wide/16 p4, 0x7d

    cmp-long p1, p2, p4

    if-gtz p1, :cond_3

    long-to-int p1, p2

    or-int/2addr p1, v0

    .line 184
    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p4, p1}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    goto :goto_1

    :cond_3
    const-wide/32 p4, 0xffff

    cmp-long p1, p2, p4

    if-gtz p1, :cond_4

    or-int/lit8 p1, v0, 0x7e

    .line 187
    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p4, p1}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 188
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    long-to-int p4, p2

    invoke-virtual {p1, p4}, Lcom/taptap/sdk/okio/Buffer;->writeShort(I)Lcom/taptap/sdk/okio/Buffer;

    goto :goto_1

    :cond_4
    or-int/lit8 p1, v0, 0x7f

    .line 191
    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p4, p1}, Lcom/taptap/sdk/okio/Buffer;->writeByte(I)Lcom/taptap/sdk/okio/Buffer;

    .line 192
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/okio/Buffer;->writeLong(J)Lcom/taptap/sdk/okio/Buffer;

    .line 195
    :goto_1
    iget-boolean p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_5

    .line 196
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 197
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Lcom/taptap/sdk/okio/Buffer;->write([B)Lcom/taptap/sdk/okio/Buffer;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_6

    .line 200
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1}, Lcom/taptap/sdk/okio/Buffer;->size()J

    move-result-wide p4

    .line 201
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1, v0, p2, p3}, Lcom/taptap/sdk/okio/Buffer;->write(Lcom/taptap/sdk/okio/Buffer;J)V

    .line 203
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    iget-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okio/Buffer;->readAndWriteUnsafe(Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;)Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    .line 204
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p4, p5}, Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 205
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    iget-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {p1, p2}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;[B)V

    .line 206
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Lcom/taptap/sdk/okio/Buffer$UnsafeCursor;->close()V

    goto :goto_2

    .line 209
    :cond_5
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lcom/taptap/sdk/okio/Buffer;

    iget-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/taptap/sdk/okio/Buffer;

    invoke-virtual {p1, p4, p2, p3}, Lcom/taptap/sdk/okio/Buffer;->write(Lcom/taptap/sdk/okio/Buffer;J)V

    .line 212
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/taptap/sdk/okio/BufferedSink;

    invoke-interface {p1}, Lcom/taptap/sdk/okio/BufferedSink;->emit()Lcom/taptap/sdk/okio/BufferedSink;

    return-void

    .line 170
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writePing(Lcom/taptap/sdk/okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILcom/taptap/sdk/okio/ByteString;)V

    return-void
.end method

.method writePong(Lcom/taptap/sdk/okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 81
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILcom/taptap/sdk/okio/ByteString;)V

    return-void
.end method
