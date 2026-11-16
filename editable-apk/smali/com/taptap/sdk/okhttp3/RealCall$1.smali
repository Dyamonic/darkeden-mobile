.class Lcom/taptap/sdk/okhttp3/RealCall$1;
.super Lcom/taptap/sdk/okio/AsyncTimeout;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/okhttp3/RealCall;-><init>(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/okhttp3/RealCall;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/okhttp3/RealCall;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/RealCall$1;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-direct {p0}, Lcom/taptap/sdk/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$1;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/RealCall;->cancel()V

    return-void
.end method
