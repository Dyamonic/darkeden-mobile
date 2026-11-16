.class public final Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;
.super Ljava/lang/Object;
.source "LoginServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/service/LoginServiceImpl;->loginWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
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
    value = "SMAP\nLoginServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginServiceImpl.kt\ncom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,124:1\n43#2,2:125\n45#2,4:130\n113#3:127\n32#4:128\n80#5:129\n*S KotlinDebug\n*F\n+ 1 LoginServiceImpl.kt\ncom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1\n*L\n31#1:125,2\n31#1:130,4\n31#1:127\n31#1:128\n31#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "onCancel",
        "",
        "onFail",
        "exception",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "onSuccess",
        "result",
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


# instance fields
.field final synthetic $callback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;->$callback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;->$callback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    invoke-interface {v0}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onCancel()V

    return-void
.end method

.method public onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;->$callback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/login/TapTapAccount;)V
    .locals 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;->$callback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 31
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v2, 0x0

    .line 126
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 127
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    .line 128
    const-class v4, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 129
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    .line 127
    invoke-interface {v1, v3, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v3, "TapJson"

    invoke-static {v3, v2, p1, v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_0

    const-string v2, ""

    .line 30
    :cond_0
    invoke-interface {v0, v2}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;->onSuccess(Lcom/taptap/sdk/login/TapTapAccount;)V

    return-void
.end method
