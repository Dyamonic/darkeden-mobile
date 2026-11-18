.class public final Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;
.super Ljava/lang/Object;
.source "TapGIDUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapGIDUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapGIDUtil.kt\ncom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,21:1\n11#2:22\n*S KotlinDebug\n*F\n+ 1 TapGIDUtil.kt\ncom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil\n*L\n12#1:22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;",
        "",
        "()V",
        "gidService",
        "Lcom/taptap/sdk/common/services/GidService;",
        "getGidService",
        "()Lcom/taptap/sdk/common/services/GidService;",
        "gidService$delegate",
        "Lkotlin/Lazy;",
        "queryGID",
        "",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;

.field private static final gidService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;

    .line 12
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 22
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil$special$$inlined$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;->gidService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getGidService()Lcom/taptap/sdk/common/services/GidService;
    .locals 1

    .line 12
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;->gidService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/common/services/GidService;

    return-object v0
.end method


# virtual methods
.method public final queryGID()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;->getGidService()Lcom/taptap/sdk/common/services/GidService;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/common/services/GidService;->getGid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
