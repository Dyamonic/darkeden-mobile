.class public interface abstract Lcom/taptap/sdk/update/enginebridge/BridgeUpdateService;
.super Ljava/lang/Object;
.source "BridgeUpdateService.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;


# annotations
.annotation runtime Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;
    value = "BridgeUpdateService"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\'\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/update/enginebridge/BridgeUpdateService;",
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
        "updateGame",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "tap-update_release"
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
.method public abstract updateGame(Landroid/app/Activity;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .annotation runtime Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeMethod;
        value = "updateGame"
    .end annotation
.end method
