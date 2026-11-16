.class public interface abstract Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridge;
.super Ljava/lang/Object;
.source "IEngineBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridge$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J \u0010\u000c\u001a\u00020\u00032\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridge;",
        "",
        "execCommand",
        "",
        "command",
        "",
        "callback",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "execCommandAsync",
        "init",
        "activity",
        "Landroid/app/Activity;",
        "registerService",
        "serviceClz",
        "Ljava/lang/Class;",
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
        "service",
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
.method public abstract execCommand(Ljava/lang/String;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
.end method

.method public abstract execCommandAsync(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Landroid/app/Activity;)V
.end method

.method public abstract registerService(Ljava/lang/Class;Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ")V"
        }
    .end annotation
.end method
