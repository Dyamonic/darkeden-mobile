.class public final Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;
.super Ljava/lang/Object;
.source "TapOpenlogHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapOpenlogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapOpenlogHelper.kt\ncom/taptap/sdk/kit/internal/utils/TapOpenlogHelper\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,32:1\n11#2:33\n*S KotlinDebug\n*F\n+ 1 TapOpenlogHelper.kt\ncom/taptap/sdk/kit/internal/utils/TapOpenlogHelper\n*L\n13#1:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0016\u0008\u0002\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0014J*\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u001a\u0010\u0016\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00140\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;",
        "",
        "()V",
        "TAG",
        "",
        "openLogService",
        "Lcom/taptap/sdk/common/services/OpenLogService;",
        "getOpenLogService",
        "()Lcom/taptap/sdk/common/services/OpenLogService;",
        "openLogService$delegate",
        "Lkotlin/Lazy;",
        "openlog",
        "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;",
        "getOpenlog",
        "()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;",
        "openlog$delegate",
        "reportBusinessLog",
        "",
        "action",
        "properties",
        "",
        "reportTechnicalLog",
        "block",
        "Lkotlin/Function0;",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

.field private static final TAG:Ljava/lang/String; = "TapOpenlogHelper-Kit"

.field private static final openLogService$delegate:Lkotlin/Lazy;

.field private static final openlog$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;

    .line 13
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 33
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper$special$$inlined$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 13
    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->openLogService$delegate:Lkotlin/Lazy;

    .line 15
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper$openlog$2;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper$openlog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->openlog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOpenLogService(Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;)Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;

    move-result-object p0

    return-object p0
.end method

.method private final getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 1

    .line 13
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->openLogService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/common/services/OpenLogService;

    return-object v0
.end method

.method private final getOpenlog()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;
    .locals 1

    .line 15
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->openlog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;

    return-object v0
.end method

.method public static synthetic reportBusinessLog$default(Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 19
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->reportBusinessLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final reportBusinessLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    const-string v0, "properties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->getOpenlog()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;->reportBusinessLog(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 26
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 28
    check-cast p2, Ljava/lang/Throwable;

    const-string v1, "TapOpenlogHelper-Kit"

    invoke-static {v1, p2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapOpenlogHelper;->getOpenlog()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "core__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;->reportTechnicalLog(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
