.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;
.super Ljava/lang/Object;
.source "CloudLoginFragment.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,191:1\n43#2,2:192\n45#2,4:197\n113#3:194\n32#4:195\n80#5:196\n*S KotlinDebug\n*F\n+ 1 CloudLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1\n*L\n47#1:192,2\n47#1:197,4\n47#1:194\n47#1:195\n47#1:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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
.field final synthetic this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 46
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->access$setMessenger$p(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Landroid/os/Messenger;)V

    .line 47
    sget-object p1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 p2, 0x2

    new-array v0, p2, [Lkotlin/Pair;

    const-string v1, "type"

    const-string v2, "middle_layer_init"

    .line 49
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/StringFormat;

    .line 194
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 195
    const-class v3, Ljava/util/HashMap;

    sget-object v4, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 196
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    .line 194
    invoke-interface {p1, v2, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "TapJson"

    invoke-static {v0, v1, p1, p2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->access$getMessenger$p(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-static {p2, v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->access$createMessage(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;->this$0:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->access$onFail(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)V

    return-void
.end method
