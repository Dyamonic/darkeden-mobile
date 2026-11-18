.class public final Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl;
.super Ljava/lang/Object;
.source "BridgeUpdateServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/update/enginebridge/BridgeUpdateService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl;",
        "Lcom/taptap/sdk/update/enginebridge/BridgeUpdateService;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateGame(Landroid/app/Activity;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call updateGame from bridge"

    .line 13
    invoke-static {v0}, Lcom/taptap/sdk/update/internal/TapUpdateLoggerKt;->logInfo(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1;

    invoke-direct {v0, p2}, Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1;-><init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    check-cast v0, Lcom/taptap/sdk/update/TapTapUpdateCallback;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/TapTapUpdate;->updateGame(Landroid/app/Activity;Lcom/taptap/sdk/update/TapTapUpdateCallback;)V

    return-void
.end method
