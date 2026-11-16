.class public final Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;
.super Ljava/lang/Object;
.source "AccessTokenUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessTokenUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessTokenUtils.kt\ncom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,131:1\n113#2:132\n32#3:133\n80#4:134\n13543#5,2:135\n*S KotlinDebug\n*F\n+ 1 AccessTokenUtils.kt\ncom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion\n*L\n36#1:132\n36#1:133\n36#1:134\n97#1:135,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000e\"\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000cH\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;",
        "",
        "()V",
        "tapLoginService",
        "Lcom/taptap/sdk/login/api/LoginService;",
        "getTapLoginService",
        "()Lcom/taptap/sdk/login/api/LoginService;",
        "tapLoginService$delegate",
        "Lkotlin/Lazy;",
        "authDenied",
        "",
        "data",
        "",
        "errors",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)V",
        "errResponse2Json",
        "err",
        "msg",
        "getAccessToken",
        "callback",
        "Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;",
        "loginByTap",
        "activity",
        "Landroid/app/Activity;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$errResponse2Json(Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err"

    .line 123
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "`object`.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "{}"

    :goto_0
    return-object p1
.end method

.method private final errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 109
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "err"

    .line 110
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    .line 111
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "`object`.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "{}"

    :goto_0
    return-object p1
.end method

.method private final getTapLoginService()Lcom/taptap/sdk/login/api/LoginService;
    .locals 1

    .line 20
    invoke-static {}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->access$getTapLoginService$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/login/api/LoginService;

    return-object v0
.end method


# virtual methods
.method public final varargs authDenied(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errors"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->getTapLoginService()Lcom/taptap/sdk/login/api/LoginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/taptap/sdk/login/api/LoginService;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "success"

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 94
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 135
    :cond_1
    array-length v0, p2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v1, p2, v2

    const-string v3, "error"

    .line 98
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object p1, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->getTapLoginService()Lcom/taptap/sdk/login/api/LoginService;

    move-result-object p1

    invoke-interface {p1}, Lcom/taptap/sdk/login/api/LoginService;->logout()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final getAccessToken(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->getTapLoginService()Lcom/taptap/sdk/login/api/LoginService;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/login/api/LoginService;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "failed"

    const-string v1, "empty access token"

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->errResponse2Json(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 36
    :cond_1
    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 132
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 133
    const-class v3, Lcom/taptap/sdk/login/AccessToken;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 134
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    .line 132
    invoke-interface {v1, v2, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-interface {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final loginByTap(Landroid/app/Activity;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->getTapLoginService()Lcom/taptap/sdk/login/api/LoginService;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/login/api/LoginService;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "accessToken not empty"

    .line 50
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->getTapLoginService()Lcom/taptap/sdk/login/api/LoginService;

    move-result-object v0

    const-string v1, "public_profile"

    .line 56
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 58
    new-instance v3, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;

    invoke-direct {v3, p2}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    check-cast v3, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 54
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/taptap/sdk/login/api/LoginService;->loginWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method
