.class public abstract Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lcom/taptap/sdk/okio/BufferedSink;

.field public final source:Lcom/taptap/sdk/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLcom/taptap/sdk/okio/BufferedSource;Lcom/taptap/sdk/okio/BufferedSink;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-boolean p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 606
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Streams;->source:Lcom/taptap/sdk/okio/BufferedSource;

    .line 607
    iput-object p3, p0, Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lcom/taptap/sdk/okio/BufferedSink;

    return-void
.end method
