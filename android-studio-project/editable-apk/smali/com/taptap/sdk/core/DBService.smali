.class public interface abstract Lcom/taptap/sdk/core/DBService;
.super Ljava/lang/Object;
.source "DBService.kt"

# interfaces
.implements Lcom/taptap/sdk/servicemanager/ServiceManager$Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/taptap/sdk/core/DBService;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
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
        "tap-db-api_release"
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
.method public abstract flush()V
.end method

.method public abstract setAutoEventEnable(Z)V
.end method

.method public abstract trackDeviceLogin(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
.end method

.method public abstract trackPaymentPurchase(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
.end method
