.class final Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapPlayGameDurationStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapPlayGameDurationStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapPlayGameDurationStore.kt\ncom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,72:1\n31#2,5:73\n36#2,4:81\n123#3:78\n32#4:79\n80#5:80\n*S KotlinDebug\n*F\n+ 1 TapPlayGameDurationStore.kt\ncom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2\n*L\n28#1:73,5\n28#1:81,4\n28#1:78\n28#1:79\n28#1:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2;->this$0:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;
    .locals 10

    .line 27
    iget-object v0, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2;->this$0:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    invoke-static {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->access$getSp(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_key_play_game_duration_bean"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 73
    :goto_0
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 77
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 78
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    .line 79
    const-class v4, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 80
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    .line 78
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 82
    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v3, v0, v1, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 28
    :goto_2
    check-cast v3, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    if-nez v3, :cond_3

    new-instance v3, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;-><init>(JLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    return-object v3
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2;->invoke()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    return-object v0
.end method
