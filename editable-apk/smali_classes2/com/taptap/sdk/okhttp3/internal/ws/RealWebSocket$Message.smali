.class final Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lcom/taptap/sdk/okio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILcom/taptap/sdk/okio/ByteString;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 583
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/ws/RealWebSocket$Message;->data:Lcom/taptap/sdk/okio/ByteString;

    return-void
.end method
