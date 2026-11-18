.class public final Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;
.super Ljava/lang/Object;
.source "TapOpenLogRemote.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086 J\u0011\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086 J\u0006\u0010\u0008\u001a\u00020\u0006J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0086 J\t\u0010\u000c\u001a\u00020\u0004H\u0086 J\t\u0010\r\u001a\u00020\u0004H\u0086 J\t\u0010\u000e\u001a\u00020\u0004H\u0086 J\u0011\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0086 J\t\u0010\u0011\u001a\u00020\u0004H\u0086 J\u0019\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0086 J\u0011\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0006H\u0086 \u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;",
        "",
        "()V",
        "disableModules",
        "",
        "modules",
        "",
        "enableModules",
        "getCommonVariables",
        "onAppStarted",
        "",
        "configStr",
        "onAppStopped",
        "onBackground",
        "onForeground",
        "onLogin",
        "userInfo",
        "onLogout",
        "sendOpenlog",
        "logStore",
        "logContent",
        "setExtraAppDurationParams",
        "params",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;

    invoke-direct {v0}, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;-><init>()V

    sput-object v0, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->INSTANCE:Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native disableModules(Ljava/lang/String;)V
.end method

.method public final native enableModules(Ljava/lang/String;)V
.end method

.method public final getCommonVariables()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->INSTANCE:Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->getDynamicExtras()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject(getDynamicExtras()).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final native onAppStarted(Ljava/lang/String;)I
.end method

.method public final native onAppStopped()V
.end method

.method public final native onBackground()V
.end method

.method public final native onForeground()V
.end method

.method public final native onLogin(Ljava/lang/String;)V
.end method

.method public final native onLogout()V
.end method

.method public final native sendOpenlog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native setExtraAppDurationParams(Ljava/lang/String;)V
.end method
