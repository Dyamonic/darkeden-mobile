.class public final Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;
.super Ljava/lang/Object;
.source "MomentHostUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;",
        "",
        "()V",
        "getMomentUrl",
        "",
        "tap-moment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;->INSTANCE:Lcom/taptap/sdk/moment/wrapper/MomentHostUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMomentUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 15
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getRegionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 18
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://tds-moment-io.xdrnd.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://tds-moment.tap.io"

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://tds-moment.xdrnd.com"

    goto :goto_0

    :cond_2
    const-string v0, "https://tds-moment.taptap.cn"

    :goto_0
    return-object v0
.end method
