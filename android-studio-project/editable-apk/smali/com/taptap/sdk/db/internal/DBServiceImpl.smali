.class public final Lcom/taptap/sdk/db/internal/DBServiceImpl;
.super Ljava/lang/Object;
.source "DBServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/core/DBService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/taptap/sdk/db/internal/DBServiceImpl;",
        "Lcom/taptap/sdk/core/DBService;",
        "()V",
        "flush",
        "",
        "setAutoEventEnable",
        "enabled",
        "",
        "trackDeviceLogin",
        "option",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "trackPaymentPurchase",
        "event",
        "Lcom/taptap/sdk/core/TapTapPurchasedEvent;",
        "tap-db_release"
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 28
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->flush$tap_db_release()V

    return-void
.end method

.method public setAutoEventEnable(Z)V
    .locals 1

    .line 20
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->setAutoEventEnable$tap_db_release(Z)V

    return-void
.end method

.method public trackDeviceLogin(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 1

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackDeviceLogin(Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPaymentPurchase(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    sget-object v0, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->INSTANCE:Lcom/taptap/sdk/db/event/TapPredefinedEvents;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackPaymentPurchase(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V

    :cond_0
    return-void
.end method
