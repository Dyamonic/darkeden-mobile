.class public final Lcom/taptap/sdk/login/internal/net/NetworkClient;
.super Ljava/lang/Object;
.source "NetworkClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/net/NetworkClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkClient.kt\ncom/taptap/sdk/login/internal/net/NetworkClient\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,153:1\n43#2,2:154\n45#2,4:159\n43#2,2:163\n45#2,4:168\n113#3:156\n113#3:165\n32#4:157\n32#4:166\n80#5:158\n80#5:167\n*S KotlinDebug\n*F\n+ 1 NetworkClient.kt\ncom/taptap/sdk/login/internal/net/NetworkClient\n*L\n54#1:154,2\n54#1:159,4\n116#1:163,2\n116#1:168,4\n54#1:156\n116#1:165\n54#1:157\n116#1:166\n54#1:158\n116#1:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0003H\u0002J$\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00032\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001cJ.\u0010\u001d\u001a\u00020\u00112\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00110\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00110\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006#"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/net/NetworkClient;",
        "",
        "clientId",
        "",
        "regionType",
        "",
        "(Ljava/lang/String;I)V",
        "openAPIHttp",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getOpenAPIHttp",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "openAPIHttp$delegate",
        "Lkotlin/Lazy;",
        "tokenHttp",
        "getTokenHttp",
        "tokenHttp$delegate",
        "fetchProfile",
        "",
        "accessToken",
        "Lcom/taptap/sdk/login/AccessToken;",
        "callback",
        "Lcom/taptap/sdk/login/internal/net/HttpCallback;",
        "Lcom/taptap/sdk/login/internal/bean/Profile;",
        "getOpenAPIDomain",
        "getTokenDomain",
        "loginWithCode",
        "code",
        "codeVerifier",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "refreshToken",
        "onSuccess",
        "Lkotlin/Function1;",
        "onFail",
        "",
        "Companion",
        "tap-login_release"
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
.field public static final Companion:Lcom/taptap/sdk/login/internal/net/NetworkClient$Companion;

.field private static final loginNetworkScope:Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final openAPIHttp$delegate:Lkotlin/Lazy;

.field private final regionType:I

.field private final tokenHttp$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/net/NetworkClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/net/NetworkClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->Companion:Lcom/taptap/sdk/login/internal/net/NetworkClient$Companion;

    const/4 v0, 0x1

    .line 30
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->loginNetworkScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->clientId:Ljava/lang/String;

    iput p2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->regionType:I

    .line 33
    new-instance p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$openAPIHttp$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient$openAPIHttp$2;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->openAPIHttp$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$tokenHttp$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient$tokenHttp$2;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->tokenHttp$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getClientId$p(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOpenAPIDomain(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->getOpenAPIDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOpenAPIHttp(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->getOpenAPIHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTokenDomain(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->getTokenDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTokenHttp(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->getTokenHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p0

    return-object p0
.end method

.method private final getOpenAPIDomain()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->regionType:I

    if-nez v0, :cond_0

    const-string v0, "open.api.xdrnd.cn"

    goto :goto_0

    :cond_0
    const-string v0, "open.api.xdrnd.com"

    :goto_0
    return-object v0

    .line 141
    :cond_1
    iget v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->regionType:I

    if-nez v0, :cond_2

    const-string v0, "open.tapapis.cn"

    goto :goto_1

    :cond_2
    const-string v0, "open.tapapis.com"

    :goto_1
    return-object v0
.end method

.method private final getOpenAPIHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->openAPIHttp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method

.method private final getTokenDomain()Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->regionType:I

    if-nez v0, :cond_0

    const-string v0, "oauth.api.xdrnd.cn"

    goto :goto_0

    :cond_0
    const-string v0, "oauth.api.xdrnd.com"

    :goto_0
    return-object v0

    .line 150
    :cond_1
    iget v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->regionType:I

    if-nez v0, :cond_2

    const-string v0, "accounts.tapapis.cn"

    goto :goto_1

    :cond_2
    const-string v0, "accounts.tapapis.com"

    :goto_1
    return-object v0
.end method

.method private final getTokenHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->tokenHttp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method


# virtual methods
.method public final fetchProfile(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/net/HttpCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
            "Lcom/taptap/sdk/login/internal/bean/Profile;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/taptap/sdk/login/AccessToken;->getScopes()Ljava/util/Set;

    move-result-object v0

    const-string v1, "public_profile"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/account/profile/v1"

    goto :goto_0

    :cond_0
    const-string v0, "/account/basic-info/v1"

    :goto_0
    move-object v3, v0

    .line 77
    sget-object v0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->loginNetworkScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/net/HttpCallback;Lkotlin/coroutines/Continuation;)V

    move-object p1, v9

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    move-object v7, p1

    move v8, p2

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loginWithCode(Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/AccessToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "codeVerifier"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x9

    new-array v1, v1, [Lkotlin/Pair;

    .line 108
    iget-object v2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->clientId:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "grant_type"

    const-string v4, "authorization_code"

    .line 109
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "secret_type"

    const-string v5, "hmac-sha-1"

    .line 110
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 111
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v1, v0

    const-string p1, "redirect_uri"

    const-string v0, "tapoauth://authorize"

    .line 112
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v1, v0

    const-string p1, "code_verifier"

    .line 113
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    const-string p1, "version"

    const-string p2, "4.5.4"

    .line 114
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v1, p2

    const-string p1, "platform"

    const-string p2, "android"

    .line 115
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 116
    sget-object p1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    new-array p2, v5, [Lkotlin/Pair;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, v3

    .line 119
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getInstallUUID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uuid"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, v4

    .line 117
    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v0, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/StringFormat;

    .line 165
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 166
    const-class v3, Ljava/util/HashMap;

    sget-object v4, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 167
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    .line 165
    invoke-interface {p1, v2, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "TapJson"

    invoke-static {p2, v0, p1, v5, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string p2, "info"

    .line 116
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v1, p2

    .line 107
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 123
    sget-object v1, Lcom/taptap/sdk/login/internal/net/NetworkClient;->loginNetworkScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance p2, Lcom/taptap/sdk/login/internal/net/NetworkClient$loginWithCode$1;

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/taptap/sdk/login/internal/net/NetworkClient$loginWithCode$1;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/util/HashMap;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final refreshToken(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/AccountManager;->getAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Lkotlin/Pair;

    .line 50
    iget-object v2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->clientId:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "grant_type"

    const-string v4, "refresh_token"

    .line 51
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 52
    invoke-virtual {v0}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/login/AccessToken;->getKid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "token"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string v5, "token_type_hint"

    const-string v6, "access_token"

    .line 53
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v0

    const/4 v0, 0x4

    .line 54
    sget-object v5, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    new-array v6, v2, [Lkotlin/Pair;

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "device_id"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v3

    .line 57
    sget-object v3, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getInstallUUID()Ljava/lang/String;

    move-result-object v3

    const-string v7, "uuid"

    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v6, v4

    .line 55
    invoke-static {v6}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    .line 155
    :try_start_0
    invoke-virtual {v5}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/StringFormat;

    .line 156
    invoke-interface {v5}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v6

    .line 157
    const-class v7, Ljava/util/HashMap;

    sget-object v8, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 158
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    .line 156
    invoke-interface {v5, v6, v3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 160
    check-cast v3, Ljava/lang/Throwable;

    const-string v5, "TapJson"

    invoke-static {v5, v4, v3, v2, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    const-string v2, "info"

    .line 54
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    .line 61
    sget-object v0, Lcom/taptap/sdk/login/internal/net/NetworkClient;->loginNetworkScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v9, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
