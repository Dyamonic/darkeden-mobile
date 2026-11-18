.class public abstract Lcom/taptap/sdk/update/download/core/listener/DownloadListener3;
.super Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;
.source "DownloadListener3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener1;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract canceled(Lcom/taptap/sdk/update/download/DownloadTask;)V
.end method

.method protected abstract completed(Lcom/taptap/sdk/update/download/DownloadTask;)V
.end method

.method protected abstract error(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/lang/Exception;)V
.end method

.method protected abstract started(Lcom/taptap/sdk/update/download/DownloadTask;)V
.end method

.method public taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Model;)V
    .locals 1

    .line 40
    sget-object p4, Lcom/taptap/sdk/update/download/core/listener/DownloadListener3$1;->$SwitchMap$com$taptap$sdk$update$download$core$cause$EndCause:[I

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/cause/EndCause;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Don\'t support "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadListener3"

    invoke-static {p2, p1}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener3;->warn(Lcom/taptap/sdk/update/download/DownloadTask;)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener3;->error(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/lang/Exception;)V

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener3;->canceled(Lcom/taptap/sdk/update/download/DownloadTask;)V

    goto :goto_0

    .line 42
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener3;->completed(Lcom/taptap/sdk/update/download/DownloadTask;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final taskStart(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/listener/assist/Listener1Assist$Listener1Model;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener3;->started(Lcom/taptap/sdk/update/download/DownloadTask;)V

    return-void
.end method

.method protected abstract warn(Lcom/taptap/sdk/update/download/DownloadTask;)V
.end method
