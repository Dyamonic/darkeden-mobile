.class public final Lcom/taptap/sdk/openlog/internal/OpenLogImpl;
.super Ljava/lang/Object;
.source "OpenLogImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/openlog/internal/OpenLogImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000eH\u0016J&\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/openlog/internal/OpenLogImpl;",
        "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;",
        "project",
        "",
        "version",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "isTechLogDisable",
        "",
        "region",
        "",
        "reportBusinessLog",
        "",
        "action",
        "properties",
        "",
        "reportTechnicalLog",
        "Companion",
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
.field public static final Companion:Lcom/taptap/sdk/openlog/internal/OpenLogImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "TapTapOpenlog"


# instance fields
.field private final project:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/openlog/internal/OpenLogImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->Companion:Lcom/taptap/sdk/openlog/internal/OpenLogImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "project"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->project:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->version:Ljava/lang/String;

    return-void
.end method

.method private final isTechLogDisable(ILjava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapPayment:Lcom/taptap/sdk/openlog/TapSdkProject;

    invoke-virtual {p1}, Lcom/taptap/sdk/openlog/TapSdkProject;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public reportBusinessLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "properties"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 24
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 25
    iget-object p1, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->project:Ljava/lang/String;

    const-string v0, "tapsdk_project"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 26
    iget-object p1, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->version:Ljava/lang/String;

    const-string v0, "tapsdk_version"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v1, v0

    .line 23
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 28
    sget-object p2, Lcom/taptap/sdk/openlog/utils/JsonUtils;->INSTANCE:Lcom/taptap/sdk/openlog/utils/JsonUtils;

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/openlog/utils/JsonUtils;->stringify(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Tag-Openlog"

    invoke-static {v0, p2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p2, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->INSTANCE:Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;

    .line 31
    sget-object v0, Lcom/taptap/sdk/openlog/utils/JsonUtils;->INSTANCE:Lcom/taptap/sdk/openlog/utils/JsonUtils;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/openlog/utils/JsonUtils;->stringify(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tapsdk"

    .line 29
    invoke-virtual {p2, v0, p1}, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->sendOpenlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportTechnicalLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "properties"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getRegion$tap_openlog_release()I

    move-result v1

    iget-object v2, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->project:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->isTechLogDisable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->project:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] Technology log is not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TapTapOpenlog"

    invoke-static {p2, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->INSTANCE:Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;

    .line 45
    sget-object v2, Lcom/taptap/sdk/openlog/utils/JsonUtils;->INSTANCE:Lcom/taptap/sdk/openlog/utils/JsonUtils;

    const/4 v3, 0x4

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    .line 47
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "args"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    .line 49
    iget-object p2, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->project:Ljava/lang/String;

    const-string v0, "tapsdk_project"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    .line 50
    iget-object p2, p0, Lcom/taptap/sdk/openlog/internal/OpenLogImpl;->version:Ljava/lang/String;

    const-string v0, "tapsdk_version"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v3, p1

    .line 46
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 45
    invoke-virtual {v2, p1}, Lcom/taptap/sdk/openlog/utils/JsonUtils;->stringify(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tapsdk-apm"

    .line 43
    invoke-virtual {v1, p2, p1}, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->sendOpenlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
