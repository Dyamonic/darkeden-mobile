.class Lcom/taptap/sdk/retrofit2/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lcom/taptap/sdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/retrofit2/OkHttpCall;->enqueue(Lcom/taptap/sdk/retrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall;

.field final synthetic val$callback:Lcom/taptap/sdk/retrofit2/Callback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/OkHttpCall;Lcom/taptap/sdk/retrofit2/Callback;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall;

    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->val$callback:Lcom/taptap/sdk/retrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->val$callback:Lcom/taptap/sdk/retrofit2/Callback;

    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/taptap/sdk/retrofit2/Callback;->onFailure(Lcom/taptap/sdk/retrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 180
    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 173
    invoke-direct {p0, p2}, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Response;)V
    .locals 1

    .line 156
    :try_start_0
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/retrofit2/OkHttpCall;->parseResponse(Lcom/taptap/sdk/okhttp3/Response;)Lcom/taptap/sdk/retrofit2/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->val$callback:Lcom/taptap/sdk/retrofit2/Callback;

    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->this$0:Lcom/taptap/sdk/retrofit2/OkHttpCall;

    invoke-interface {p2, v0, p1}, Lcom/taptap/sdk/retrofit2/Callback;->onResponse(Lcom/taptap/sdk/retrofit2/Call;Lcom/taptap/sdk/retrofit2/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 166
    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 158
    invoke-static {p1}, Lcom/taptap/sdk/retrofit2/Utils;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/taptap/sdk/retrofit2/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method
