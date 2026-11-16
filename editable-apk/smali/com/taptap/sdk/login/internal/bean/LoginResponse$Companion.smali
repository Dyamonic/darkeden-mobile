.class public final Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;
.super Ljava/lang/Object;
.source "LoginResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/bean/LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginResponse.kt\ncom/taptap/sdk/login/internal/bean/LoginResponse$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 6 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,42:1\n1#2:43\n31#3,5:44\n36#3,4:52\n123#4:49\n32#5:50\n80#6:51\n*S KotlinDebug\n*F\n+ 1 LoginResponse.kt\ncom/taptap/sdk/login/internal/bean/LoginResponse$Companion\n*L\n30#1:44,5\n30#1:52,4\n30#1:49\n30#1:50\n30#1:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0010H\u00c6\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;",
        "",
        "()V",
        "RES_KEY_CANCEL",
        "",
        "RES_KEY_CODE",
        "RES_KEY_ERROR",
        "RES_KEY_SERVER_URI",
        "RES_KEY_STATE",
        "RES_KEY_TOKEN",
        "RES_KEY_TOKEN_PARCELABLE",
        "parseFromBundle",
        "Lcom/taptap/sdk/login/internal/bean/LoginResponse;",
        "data",
        "Landroid/os/Bundle;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/bean/LoginResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFromBundle(Landroid/os/Bundle;)Lcom/taptap/sdk/login/internal/bean/LoginResponse;
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.taptap.sdk.response.state"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.taptap.sdk.response.token"

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 44
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_2

    goto :goto_1

    .line 48
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/StringFormat;

    .line 49
    invoke-interface {v4}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 50
    const-class v6, Lcom/taptap/sdk/login/AccessToken;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 51
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    .line 49
    invoke-interface {v4, v5, v1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 53
    check-cast v1, Ljava/lang/Throwable;

    const/4 v4, 0x2

    const-string v5, "TapJson"

    invoke-static {v5, v0, v1, v4, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 55
    :goto_1
    check-cast v0, Lcom/taptap/sdk/login/AccessToken;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "com.taptap.sdk.response.token.parcel"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/login/AccessToken;

    .line 32
    :cond_4
    new-instance v8, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    const-string v1, "com.taptap.sdk.response.code"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "com.taptap.sdk.response.error"

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "com.taptap.sdk.response.cancel"

    .line 37
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "com.taptap.sdk.response.server_uri"

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, v0

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;-><init>(Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v8
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/taptap/sdk/login/internal/bean/LoginResponse;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/taptap/sdk/login/internal/bean/LoginResponse$$serializer;->INSTANCE:Lcom/taptap/sdk/login/internal/bean/LoginResponse$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
