.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;
.super Ljava/lang/Object;
.source "TapHttpSign.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpSign.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpSign.kt\ncom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n18#2:144\n1#3:145\n465#4,7:146\n1045#5:153\n*S KotlinDebug\n*F\n+ 1 TapHttpSign.kt\ncom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default\n*L\n41#1:144\n120#1:146,7\n120#1:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J$\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J,\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J$\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;",
        "()V",
        "authorizationService",
        "Lcom/taptap/sdk/common/services/AuthorizationService;",
        "getAuthorizationService",
        "()Lcom/taptap/sdk/common/services/AuthorizationService;",
        "authorizationService$delegate",
        "Lkotlin/Lazy;",
        "getFixQueryParams",
        "",
        "",
        "getGetHeaders",
        "",
        "moduleName",
        "moduleVersion",
        "getHeaders",
        "method",
        "getPostHeaders",
        "handle",
        "",
        "data",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;",
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


# instance fields
.field private final authorizationService$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 144
    sget-object v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default$special$$inlined$injectOrNull$1;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default$special$$inlined$injectOrNull$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;->authorizationService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAuthorizationService()Lcom/taptap/sdk/common/services/AuthorizationService;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;->authorizationService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/common/services/AuthorizationService;

    return-object v0
.end method

.method private final getGetHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [Lkotlin/Pair;

    const-string v2, "X-Tap-PN"

    const-string v3, "TapSDK"

    .line 72
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 73
    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    sget-object v4, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    const-string v4, "X-Tap-Device-Id"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "X-Tap-Platform"

    const-string v6, "Android"

    .line 74
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "X-Tap-SDK-Module"

    .line 75
    invoke-static {v5, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "X-Tap-SDK-Module-Version"

    .line 76
    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x5

    .line 77
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackSDKArtifact()Ljava/lang/String;

    move-result-object p2

    const-string v2, "X-Tap-SDK-Artifact"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x6

    .line 78
    sget-object p2, Lcom/taptap/sdk/kit/internal/http/TapTime;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapTime;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/http/TapTime;->getCurrentTimeInMillis()J

    move-result-wide v5

    const/16 p2, 0x3e8

    int-to-long v7, p2

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v2, "X-Tap-Ts"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x7

    .line 79
    sget-object p2, Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Tap-Nonce"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x8

    .line 80
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Tap-Lang"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x9

    .line 81
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackUA()Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    .line 71
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 83
    sget-object p2, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getGameUserId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "X-Tap-SDK-Game-User-Id"

    .line 85
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method private final getPostHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [Lkotlin/Pair;

    const-string v2, "X-Tap-PN"

    const-string v3, "TapSDK"

    .line 93
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 94
    sget-object v2, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    sget-object v4, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    const-string v4, "X-Tap-Device-Id"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "X-Tap-Platform"

    const-string v6, "Android"

    .line 95
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "X-Tap-SDK-Module"

    .line 96
    invoke-static {v5, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "X-Tap-SDK-Module-Version"

    .line 97
    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x5

    .line 98
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackSDKArtifact()Ljava/lang/String;

    move-result-object p2

    const-string v2, "X-Tap-SDK-Artifact"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x6

    .line 99
    sget-object p2, Lcom/taptap/sdk/kit/internal/http/TapTime;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapTime;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/http/TapTime;->getCurrentTimeInMillis()J

    move-result-wide v5

    const/16 p2, 0x3e8

    int-to-long v7, p2

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v2, "X-Tap-Ts"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x7

    .line 100
    sget-object p2, Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Tap-Nonce"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x8

    .line 101
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Tap-Lang"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x9

    .line 102
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackUA()Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    .line 92
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 104
    sget-object p2, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getGameUserId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 105
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "X-Tap-SDK-Game-User-Id"

    .line 106
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getFixQueryParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 45
    sget-object v1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getClientId$tap_kit_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 56
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;->getPostHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "GET"

    .line 60
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;->getGetHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public handle(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getEnableAuthorization()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default;->getAuthorizationService()Lcom/taptap/sdk/common/services/AuthorizationService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/taptap/sdk/common/services/AuthorizationService;->obtainAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 146
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 120
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "x-tap-"

    invoke-static {v5, v8, v6, v7, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    :cond_4
    check-cast v3, Ljava/util/Map;

    .line 120
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 153
    new-instance v2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default$handle$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default$handle$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "\n"

    .line 121
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default$handle$filteredHeaders$3;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpSign$Default$handle$filteredHeaders$3;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getCompressContent()[B

    move-result-object v3

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    sget-object v5, Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;

    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getClientToken$tap_kit_release()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v5 .. v10}, Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;->secret$default(Lcom/taptap/sdk/kit/internal/http/TapHttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "X-Tap-Sign"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
