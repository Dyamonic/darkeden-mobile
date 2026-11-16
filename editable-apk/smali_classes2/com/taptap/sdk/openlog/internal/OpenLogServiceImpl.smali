.class public final Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;
.super Ljava/lang/Object;
.source "OpenLogServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/common/services/OpenLogService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000cH\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\u001e\u0010\u0012\u001a\u00020\u00062\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0016J\u0012\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;",
        "Lcom/taptap/sdk/common/services/OpenLogService;",
        "delegate",
        "Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;",
        "(Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;)V",
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
        "tap-openlog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;-><init>(Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 10
    sget-object p1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;-><init>(Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;)V

    return-void
.end method


# virtual methods
.method public enableHeartbeat(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->enableHeartbeat(Z)V

    return-void
.end method

.method public isStart()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->isHeartbeatStarted()Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 1

    const-string v0, "openId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->login(Ljava/lang/String;)V

    return-void
.end method

.method public logout()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->logout()V

    return-void
.end method

.method public obtainOpenlog(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;
    .locals 1

    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->obtainOpenlog(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;

    move-result-object p1

    return-object p1
.end method

.method public setExtraAppDurationParams(Ljava/lang/String;)V
    .locals 1

    const-string v0, "jsonStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->setExtraAppDurationParams(Ljava/lang/String;)V

    return-void
.end method

.method public setExtraAppDurationParams(Ljava/util/Map;)V
    .locals 1
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

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->delegate:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->setExtraAppDurationParams(Ljava/util/Map;)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->setOpenId(Ljava/lang/String;)V

    .line 23
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->logout()V

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/openlog/internal/OpenLogServiceImpl;->login(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
