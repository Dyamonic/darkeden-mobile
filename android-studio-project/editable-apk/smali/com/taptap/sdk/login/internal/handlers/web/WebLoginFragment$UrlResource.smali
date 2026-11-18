.class public final Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;
.super Ljava/lang/Object;
.source "WebLoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UrlResource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,360:1\n113#2:361\n32#3:362\n80#4:363\n*S KotlinDebug\n*F\n+ 1 WebLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource\n*L\n322#1:361\n322#1:362\n322#1:363\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;",
        "",
        "(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V",
        "TapTapAPI",
        "",
        "action",
        "params",
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
.field final synthetic this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final TapTapAPI$lambda$1(Ljava/lang/String;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "this$1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 314
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 316
    invoke-virtual {p2}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 317
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 315
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$8mOJIwNz6Oix2Y0sQU4W7uTP2zY(Ljava/lang/String;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;->TapTapAPI$lambda$1(Ljava/lang/String;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    return-void
.end method


# virtual methods
.method public final TapTapAPI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v2, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "getSDKInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    :cond_3
    :goto_0
    return-object v2

    :sswitch_1
    const-string p2, "getTrackInfo"

    .line 310
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 330
    :cond_4
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, p1

    :cond_6
    :goto_1
    return-object v2

    :sswitch_2
    const-string v0, "openBrowser"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 312
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;->this$0:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    new-instance v2, Lcom/taptap/sdk/login/internal/handlers/web/-$$Lambda$WebLoginFragment$UrlResource$8mOJIwNz6Oix2Y0sQU4W7uTP2zY;

    invoke-direct {v2, p2, p0, v0}, Lcom/taptap/sdk/login/internal/handlers/web/-$$Lambda$WebLoginFragment$UrlResource$8mOJIwNz6Oix2Y0sQU4W7uTP2zY;-><init>(Ljava/lang/String;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :sswitch_3
    const-string p2, "tapEnv"

    .line 310
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 322
    :cond_7
    sget-object p1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast p1, Lkotlinx/serialization/StringFormat;

    new-instance p2, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 361
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    .line 362
    const-class v1, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 363
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    .line 361
    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3482f5b6 -> :sswitch_3
        -0x2bc2a82 -> :sswitch_2
        0x2ae89de3 -> :sswitch_1
        0x79871fd2 -> :sswitch_0
    .end sparse-switch
.end method
