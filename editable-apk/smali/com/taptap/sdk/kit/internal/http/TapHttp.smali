.class public final Lcom/taptap/sdk/kit/internal/http/TapHttp;
.super Ljava/lang/Object;
.source "TapHttp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;,
        Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u0000 42\u00020\u0001:\u000234B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014J\r\u0010\"\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008#J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\"\u0010(\u001a\u00020)2\u0006\u0010!\u001a\u00020\u00142\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140+J\u000e\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020\u0014J\u001c\u0010.\u001a\u00020/2\u0006\u0010!\u001a\u00020\u00142\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020201R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0019\u001a\u00020\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u00065"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "",
        "builder",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;",
        "(Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;)V",
        "client",
        "Lcom/taptap/sdk/okhttp3/OkHttpClient;",
        "compressHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;",
        "getCompressHandler$tap_kit_release",
        "()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;",
        "setCompressHandler$tap_kit_release",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;)V",
        "enableAuthorization",
        "",
        "getEnableAuthorization$tap_kit_release",
        "()Z",
        "enableTechnicalLog",
        "getEnableTechnicalLog$tap_kit_release",
        "moduleName",
        "",
        "getModuleName$tap_kit_release",
        "()Ljava/lang/String;",
        "moduleVersion",
        "getModuleVersion$tap_kit_release",
        "signHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;",
        "getSignHandler$tap_kit_release",
        "()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;",
        "setSignHandler$tap_kit_release",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)V",
        "get",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;",
        "url",
        "getDomain",
        "getDomain$tap_kit_release",
        "newCall",
        "Lcom/taptap/sdk/okhttp3/Call;",
        "buildRequest",
        "Lcom/taptap/sdk/okhttp3/Request;",
        "postForm",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;",
        "form",
        "",
        "postJson",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;",
        "postProtobuf",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;",
        "protobufByteArray",
        "Lkotlin/Function0;",
        "",
        "Builder",
        "Companion",
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
.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x2710L

.field public static final Companion:Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;

.field private static final HOST_CN:Ljava/lang/String; = "tapsdk.tapapis.cn"

.field private static final HOST_IO:Ljava/lang/String; = "tapsdk.tapapis.com"

.field private static final HOST_RND_CN:Ljava/lang/String; = "tapsdk.api.xdrnd.cn"

.field private static final HOST_RND_IO:Ljava/lang/String; = "tapsdk.api.xdrnd.com"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final READ_TIMEOUT_MILLIS:J = 0x1388L

.field private static final WRITE_TIMEOUT_MILLIS:J = 0x1388L

.field private static final defaultDispatcher:Lcom/taptap/sdk/okhttp3/Dispatcher;


# instance fields
.field private final builder:Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

.field private final client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

.field private compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

.field private final enableAuthorization:Z

.field private final enableTechnicalLog:Z

.field private final moduleName:Ljava/lang/String;

.field private final moduleVersion:Ljava/lang/String;

.field private signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->Companion:Lcom/taptap/sdk/kit/internal/http/TapHttp$Companion;

    .line 110
    new-instance v0, Lcom/taptap/sdk/okhttp3/Dispatcher;

    invoke-direct {v0}, Lcom/taptap/sdk/okhttp3/Dispatcher;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->defaultDispatcher:Lcom/taptap/sdk/okhttp3/Dispatcher;

    return-void
.end method

.method private constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->builder:Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    .line 22
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getOkHttpClientBuilder$tap_kit_release()Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getEnableConsoleLog$tap_kit_release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getEnableConsoleLog$tap_kit_release()Z

    move-result v2

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getLogLevel$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;-><init>(ZLcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)V

    check-cast v1, Lcom/taptap/sdk/okhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->addInterceptor(Lcom/taptap/sdk/okhttp3/Interceptor;)Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->build()Lcom/taptap/sdk/okhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "builder.okHttpClientBuil\u2026)\n        }\n    }.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    .line 32
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getCompressHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    .line 35
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    .line 37
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getModuleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->moduleName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getModuleVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->moduleVersion:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getEnableTechnicalLog$tap_kit_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->enableTechnicalLog:Z

    .line 40
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getEnableAuthorization$tap_kit_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->enableAuthorization:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;)V

    return-void
.end method

.method public static final synthetic access$getDefaultDispatcher$cp()Lcom/taptap/sdk/okhttp3/Dispatcher;
    .locals 1

    .line 20
    sget-object v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->defaultDispatcher:Lcom/taptap/sdk/okhttp3/Dispatcher;

    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCompressHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    return-object v0
.end method

.method public final getDomain$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->builder:Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getDomain$tap_kit_release()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->builder:Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp$Builder;->getDomain$tap_kit_release()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getRegionType$tap_kit_release()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tapsdk.api.xdrnd.cn"

    goto :goto_1

    :cond_2
    const-string v0, "tapsdk.api.xdrnd.com"

    goto :goto_1

    .line 84
    :cond_3
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getRegionType$tap_kit_release()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tapsdk.tapapis.cn"

    goto :goto_1

    :cond_4
    const-string v0, "tapsdk.tapapis.com"

    :goto_1
    return-object v0
.end method

.method public final getEnableAuthorization$tap_kit_release()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->enableAuthorization:Z

    return v0
.end method

.method public final getEnableTechnicalLog$tap_kit_release()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->enableTechnicalLog:Z

    return v0
.end method

.method public final getModuleName$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleVersion$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->moduleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    return-object v0
.end method

.method public final newCall(Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Call;
    .locals 1

    const-string v0, "buildRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->newCall(Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Call;

    move-result-object p1

    const-string v0, "client.newCall(buildRequest)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final postForm(Ljava/lang/String;Ljava/util/Map;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "form"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V

    return-object v0
.end method

.method public final postProtobuf(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "[B>;)",
            "Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protobufByteArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final setCompressHandler$tap_kit_release(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->compressHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    return-void
.end method

.method public final setSignHandler$tap_kit_release(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttp;->signHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    return-void
.end method
