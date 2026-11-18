.class public final Lcom/taptap/sdk/login/internal/service/LoginServiceImpl;
.super Ljava/lang/Object;
.source "LoginServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/login/api/LoginService;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginServiceImpl.kt\ncom/taptap/sdk/login/internal/service/LoginServiceImpl\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,124:1\n43#2,2:125\n45#2,4:130\n113#3:127\n32#4:128\n80#5:129\n*S KotlinDebug\n*F\n+ 1 LoginServiceImpl.kt\ncom/taptap/sdk/login/internal/service/LoginServiceImpl\n*L\n113#1:125,2\n113#1:130,4\n113#1:127\n113#1:128\n113#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ9\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00100\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J1\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\t2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\u0015J\n\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J9\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ9\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u001b\u001a\u00020\u0004H\u0016J\"\u0010\u001c\u001a\u00020\u00042\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0004\u0012\u00020\u00040\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0004H\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/service/LoginServiceImpl;",
        "Lcom/taptap/sdk/login/api/LoginService;",
        "()V",
        "authWithScope",
        "",
        "activity",
        "Landroid/app/Activity;",
        "scopes",
        "",
        "",
        "isPreApproved",
        "",
        "callback",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V",
        "authWithScopeInternal",
        "Lcom/taptap/sdk/login/AccessToken;",
        "cancelLogin",
        "continueWebLogin",
        "token",
        "preferredLoginType",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V",
        "getAccount",
        "getCurrentTapAccount",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "loginWithScope",
        "loginWithScopeInternal",
        "logout",
        "registerClientLoginCallback",
        "Lkotlin/Function1;",
        "removeClientLoginCallback",
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
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$authWithScope$1;

    invoke-direct {v0, p4}, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$authWithScope$1;-><init>(Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    check-cast v0, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 62
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl;->authWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public authWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/AccessToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/login/internal/LoginManager;->authWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public cancelLogin()V
    .locals 1

    .line 118
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->getResultCallback()Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;->cancelLogin()V

    :cond_0
    return-void
.end method

.method public continueWebLogin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 107
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->getResultCallback()Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler$PhoneLoginResultCallback;->continueWebLogin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 5

    .line 111
    invoke-static {}, Lcom/taptap/sdk/login/TapTapLogin;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    invoke-static {}, Lcom/taptap/sdk/login/TapTapLogin;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v1

    .line 126
    :try_start_0
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 127
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    .line 128
    const-class v4, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->nullableTypeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 129
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    .line 127
    invoke-interface {v0, v3, v1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 131
    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v3, "TapJson"

    invoke-static {v3, v2, v0, v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method public getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;
    .locals 1

    .line 95
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginManager;->getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    return-object v0
.end method

.method public loginWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;

    invoke-direct {v0, p4}, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl$loginWithScope$1;-><init>(Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    check-cast v0, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 24
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taptap/sdk/login/internal/service/LoginServiceImpl;->loginWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public loginWithScopeInternal(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/TapTapAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taptap/sdk/login/internal/LoginManager;->loginWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public logout()V
    .locals 1

    .line 122
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginManager;->logout()V

    return-void
.end method

.method public registerClientLoginCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->setPhoneLoginCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public removeClientLoginCallback()V
    .locals 2

    .line 103
    sget-object v0, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->INSTANCE:Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/phone/PhoneLoginHandler;->setPhoneLoginCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
