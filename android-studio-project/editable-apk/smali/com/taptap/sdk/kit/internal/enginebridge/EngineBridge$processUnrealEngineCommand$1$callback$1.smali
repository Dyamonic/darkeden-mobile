.class public final Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1;
.super Ljava/lang/Object;
.source "EngineBridge.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->processUnrealEngineCommand(Ljava/lang/String;)V
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
        "com/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1",
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
.field final synthetic $this_runCatching:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1;->$this_runCatching:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1;->$this_runCatching:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->nativeOnResult(Ljava/lang/String;)V

    return-void
.end method
