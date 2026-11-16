.class public interface abstract Lcom/taptap/sdk/common/services/OpenLogService;
.super Ljava/lang/Object;
.source "OpenLogService.kt"

# interfaces
.implements Lcom/taptap/sdk/servicemanager/ServiceManager$Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0003H&J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\tH&J\u001e\u0010\u000f\u001a\u00020\u00032\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012H&J\u0012\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/taptap/sdk/common/services/OpenLogService;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "enableHeartbeat",
        "",
        "enabled",
        "",
        "isStart",
        "login",
        "openId",
        "",
        "logout",
        "obtainOpenlog",
        "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;",
        "project",
        "version",
        "setExtraAppDurationParams",
        "jsonStr",
        "extras",
        "",
        "",
        "setOpenId",
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
.method public abstract enableHeartbeat(Z)V
.end method

.method public abstract isStart()Z
.end method

.method public abstract login(Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract obtainOpenlog(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;
.end method

.method public abstract setExtraAppDurationParams(Ljava/lang/String;)V
.end method

.method public abstract setExtraAppDurationParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOpenId(Ljava/lang/String;)V
.end method
