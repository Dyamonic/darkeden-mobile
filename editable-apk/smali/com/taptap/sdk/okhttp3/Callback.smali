.class public interface abstract Lcom/taptap/sdk/okhttp3/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# virtual methods
.method public abstract onFailure(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
