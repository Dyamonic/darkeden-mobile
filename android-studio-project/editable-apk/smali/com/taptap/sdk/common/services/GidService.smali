.class public interface abstract Lcom/taptap/sdk/common/services/GidService;
.super Ljava/lang/Object;
.source "GidService.kt"

# interfaces
.implements Lcom/taptap/sdk/servicemanager/ServiceManager$Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/taptap/sdk/common/services/GidService;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "getGid",
        "",
        "notifyUpdateCallbacks",
        "",
        "code",
        "",
        "gid",
        "registerCallback",
        "callback",
        "Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;",
        "unregisterCallback",
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
.method public abstract getGid()Ljava/lang/String;
.end method

.method public abstract notifyUpdateCallbacks(ILjava/lang/String;)V
.end method

.method public abstract registerCallback(Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/taptap/sdk/kit/internal/service/ITapServiceCallback;)V
.end method
