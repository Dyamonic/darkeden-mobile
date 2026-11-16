.class public abstract Lcom/taptap/sdk/okhttp3/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/taptap/sdk/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(Lcom/taptap/sdk/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailure(Lcom/taptap/sdk/okhttp3/WebSocket;Ljava/lang/Throwable;Lcom/taptap/sdk/okhttp3/Response;)V
    .locals 0
    .param p3    # Lcom/taptap/sdk/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMessage(Lcom/taptap/sdk/okhttp3/WebSocket;Lcom/taptap/sdk/okio/ByteString;)V
    .locals 0

    return-void
.end method

.method public onMessage(Lcom/taptap/sdk/okhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOpen(Lcom/taptap/sdk/okhttp3/WebSocket;Lcom/taptap/sdk/okhttp3/Response;)V
    .locals 0

    return-void
.end method
