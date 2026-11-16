.class public interface abstract Lcom/bytedance/applog/alink/IALinkListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00052\u000e\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\'J0\u0010\n\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00052\u000e\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\'J\u0018\u0010\u000b\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\tH\'\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/bytedance/applog/alink/IALinkListener;",
        "",
        "onALinkData",
        "",
        "routingInfo",
        "",
        "",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onAttributionData",
        "onAttributionFailedCallback",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onALinkData(Ljava/util/Map;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAttributionData(Ljava/util/Map;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAttributionFailedCallback(Ljava/lang/Exception;)V
.end method
