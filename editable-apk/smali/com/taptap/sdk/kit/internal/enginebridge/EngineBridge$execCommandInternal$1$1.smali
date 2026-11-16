.class public final Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;
.super Ljava/lang/Object;
.source "EngineBridge.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->execCommandInternal(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "onResult",
        "",
        "jsonString",
        "",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

.field final synthetic $command:Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

.field final synthetic $this_runCatching:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;->$command:Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;->$this_runCatching:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;->$callback:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execCommandInternal success: cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;->$command:Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAP_ENGINE_BRIDGE"

    .line 126
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;->$this_runCatching:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 131
    new-instance v1, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;

    const/4 v2, 0x0

    const-string v3, "Success"

    invoke-direct {v1, v2, v3, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;->$callback:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

    .line 130
    invoke-static {v0, v1, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->access$handleResult(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    return-void
.end method
