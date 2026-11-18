.class public interface abstract Lcom/taptap/sdk/initializer/api/service/InitializerService;
.super Ljava/lang/Object;
.source "InitializerService.kt"

# interfaces
.implements Lcom/taptap/sdk/servicemanager/ServiceManager$Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/api/service/InitializerService;",
        "Lcom/taptap/sdk/servicemanager/ServiceManager$Service;",
        "checkInitialize",
        "",
        "getAchievementUrl",
        "",
        "type",
        "getAppId",
        "",
        "()Ljava/lang/Integer;",
        "getReviewUrl",
        "getShareUrl",
        "tap-initializer-api_release"
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
.method public abstract checkInitialize()Z
.end method

.method public abstract getAchievementUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppId()Ljava/lang/Integer;
.end method

.method public abstract getReviewUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getShareUrl(Ljava/lang/String;)Ljava/lang/String;
.end method
