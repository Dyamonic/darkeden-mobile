.class Lcom/taptap/sdk/themis/lite/ThemisLite$1;
.super Ljava/lang/Object;
.source "ThemisLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/themis/lite/ThemisLite;->CallbackRunner(Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/taptap/sdk/themis/lite/ThemisLite$1;->val$callback:Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 25
    invoke-static {}, Lcom/taptap/sdk/themis/lite/ThemisLite;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "Q2FsbGJhY2tSdW5uZXIgb24gaWY6"

    .line 27
    invoke-static {v1}, Lcom/taptap/sdk/themis/lite/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/themis/lite/LogUtil;->debug(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/taptap/sdk/themis/lite/ThemisLite$1;->val$callback:Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;

    invoke-static {}, Lcom/taptap/sdk/themis/lite/ThemisLite;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;->getThemisTapaid(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/taptap/sdk/themis/lite/ThemisLite$1;->val$callback:Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;

    invoke-static {}, Lcom/taptap/sdk/themis/lite/ThemisLite;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;->getThemisOneIDData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 31
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Q2FsbGJhY2tSdW5uZXI6"

    invoke-static {v3}, Lcom/taptap/sdk/themis/lite/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/themis/lite/LogUtil;->debug(Ljava/lang/String;)V

    .line 33
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
