.class public final Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;
.super Ljava/lang/Object;
.source "AccessTokenUtils.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->loginByTap(Landroid/app/Activity;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessTokenUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessTokenUtils.kt\ncom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,131:1\n113#2:132\n32#3:133\n80#4:134\n*S KotlinDebug\n*F\n+ 1 AccessTokenUtils.kt\ncom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1\n*L\n61#1:132\n61#1:133\n61#1:134\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "onCancel",
        "",
        "onFail",
        "exception",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "onSuccess",
        "result",
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


# instance fields
.field final synthetic $callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;->$callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;->$callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    sget-object v1, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    const-string v2, "login cancel"

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->access$errResponse2Json(Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;->$callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    sget-object v1, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v1, p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->access$errResponse2Json(Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/login/TapTapAccount;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v0, Lkotlinx/serialization/StringFormat;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object p1

    .line 132
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    .line 133
    const-class v2, Lcom/taptap/sdk/login/AccessToken;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 134
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 132
    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;->$callback:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object v0

    const-string v1, "token"

    .line 66
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "login_success.moment.taptap.action"

    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion$loginByTap$1;->onSuccess(Lcom/taptap/sdk/login/TapTapAccount;)V

    return-void
.end method
