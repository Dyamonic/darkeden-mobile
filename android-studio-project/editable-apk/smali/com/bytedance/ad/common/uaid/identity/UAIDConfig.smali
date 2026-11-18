.class public final Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;",
        "",
        "chinaMobileConfig",
        "Lcom/bytedance/ad/common/uaid/identity/Config;",
        "chinaTelecomConfig",
        "chinaUnicomConfig",
        "(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;)V",
        "getChinaMobileConfig",
        "()Lcom/bytedance/ad/common/uaid/identity/Config;",
        "setChinaMobileConfig",
        "(Lcom/bytedance/ad/common/uaid/identity/Config;)V",
        "getChinaTelecomConfig",
        "setChinaTelecomConfig",
        "getChinaUnicomConfig",
        "setChinaUnicomConfig",
        "setNewConfig",
        "",
        "newConfig",
        "uaid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private chinaMobileConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

.field private chinaTelecomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

.field private chinaUnicomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;)V
    .locals 1

    const-string v0, "chinaMobileConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chinaTelecomConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chinaUnicomConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaMobileConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaTelecomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iput-object p3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaUnicomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p5, p4, 0x1

    const-wide/32 v0, 0x325aa0

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Lcom/bytedance/ad/common/uaid/identity/Config;

    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/ad/common/uaid/identity/Config;-><init>(ZJ)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    new-instance p2, Lcom/bytedance/ad/common/uaid/identity/Config;

    invoke-direct {p2, v2, v0, v1}, Lcom/bytedance/ad/common/uaid/identity/Config;-><init>(ZJ)V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    new-instance p3, Lcom/bytedance/ad/common/uaid/identity/Config;

    const-wide/32 p4, 0x9c40

    invoke-direct {p3, v2, p4, p5}, Lcom/bytedance/ad/common/uaid/identity/Config;-><init>(ZJ)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;)V

    return-void
.end method


# virtual methods
.method public final getChinaMobileConfig()Lcom/bytedance/ad/common/uaid/identity/Config;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaMobileConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-object v0
.end method

.method public final getChinaTelecomConfig()Lcom/bytedance/ad/common/uaid/identity/Config;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaTelecomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-object v0
.end method

.method public final getChinaUnicomConfig()Lcom/bytedance/ad/common/uaid/identity/Config;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaUnicomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-object v0
.end method

.method public final setChinaMobileConfig(Lcom/bytedance/ad/common/uaid/identity/Config;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaMobileConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-void
.end method

.method public final setChinaTelecomConfig(Lcom/bytedance/ad/common/uaid/identity/Config;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaTelecomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-void
.end method

.method public final setChinaUnicomConfig(Lcom/bytedance/ad/common/uaid/identity/Config;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaUnicomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-void
.end method

.method public final setNewConfig(Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaMobileConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaMobileConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iget-object v0, p1, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaTelecomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaTelecomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iget-object p1, p1, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaUnicomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->chinaUnicomConfig:Lcom/bytedance/ad/common/uaid/identity/Config;

    return-void
.end method
