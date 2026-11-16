.class public interface abstract Lcom/taptap/sdk/kit/internal/enginebridge/command/ICommandExecutor;
.super Ljava/lang/Object;
.source "ICommandExecutor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008a\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/ICommandExecutor;",
        "",
        "execute",
        "",
        "command",
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;",
        "callback",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "executeAsync",
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


# virtual methods
.method public abstract execute(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
.end method

.method public abstract executeAsync(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/Object;
.end method
