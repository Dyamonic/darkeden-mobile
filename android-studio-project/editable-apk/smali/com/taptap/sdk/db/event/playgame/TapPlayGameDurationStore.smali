.class public final Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;
.super Ljava/lang/Object;
.source "TapPlayGameDurationStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapPlayGameDurationStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapPlayGameDurationStore.kt\ncom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 6 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,72:1\n1#2:73\n43#3,2:74\n45#3,4:79\n113#4:76\n32#5:77\n80#6:78\n*S KotlinDebug\n*F\n+ 1 TapPlayGameDurationStore.kt\ncom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore\n*L\n54#1:74,2\n54#1:79,4\n54#1:76\n54#1:77\n54#1:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0011J\u0006\u0010\u0017\u001a\u00020\u0011J\u0010\u0010\u0018\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;",
        "",
        "()V",
        "lastSaveTimestamp",
        "",
        "playGameDurationBean",
        "Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;",
        "getPlayGameDurationBean$tap_db_release",
        "()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;",
        "playGameDurationBean$delegate",
        "Lkotlin/Lazy;",
        "sp",
        "Landroid/content/SharedPreferences;",
        "getSp",
        "()Landroid/content/SharedPreferences;",
        "sp$delegate",
        "appendDeviceDuration",
        "",
        "duration",
        "appendUserDuration",
        "userId",
        "",
        "resetDeviceStore",
        "resetUserStore",
        "syncStore",
        "force",
        "",
        "Companion",
        "tap-db_release"
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
.field public static final Companion:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$Companion;

.field private static final SP_FILE_PLAY_GAME_DURATION_BEAN:Ljava/lang/String; = "com.taptap.sdk.PlayGameDurationStore"

.field private static final SP_KEY_PLAY_GAME_DURATION_BEAN:Ljava/lang/String; = "sp_key_play_game_duration_bean"

.field private static final SYNC_INTERVAL:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "TapPlayGameDurationStore"


# instance fields
.field private lastSaveTimestamp:J

.field private final playGameDurationBean$delegate:Lkotlin/Lazy;

.field private final sp$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->Companion:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$sp$2;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$sp$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->sp$delegate:Lkotlin/Lazy;

    .line 26
    new-instance v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore$playGameDurationBean$2;-><init>(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->playGameDurationBean$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playGameDurationBean = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapPlayGameDurationStore"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getSp(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;)Landroid/content/SharedPreferences;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->sp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-sp>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static synthetic syncStore$default(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->syncStore(Z)V

    return-void
.end method


# virtual methods
.method public final appendDeviceDuration(J)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->getDeviceDuration()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->setDeviceDuration(J)V

    return-void
.end method

.method public final appendUserDuration(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->getUserDuration()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    invoke-virtual {v2}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {v1}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->getDuration()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->setDuration(J)V

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->getUserDuration()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    invoke-direct {v1, p1, p2, p3}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->playGameDurationBean$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    return-object v0
.end method

.method public final resetDeviceStore()V
    .locals 3

    const-string v0, "TapPlayGameDurationStore"

    const-string v1, "resetDeviceStore"

    .line 67
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->setDeviceDuration(J)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->syncStore(Z)V

    return-void
.end method

.method public final resetUserStore()V
    .locals 2

    const-string v0, "TapPlayGameDurationStore"

    const-string v1, "resetUserStore"

    .line 61
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->getUserDuration()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->syncStore(Z)V

    return-void
.end method

.method public final syncStore(Z)V
    .locals 7

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 53
    iget-wide v2, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->lastSaveTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v2, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v3

    const/4 v4, 0x0

    .line 75
    :try_start_0
    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/StringFormat;

    .line 76
    invoke-interface {v2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 77
    const-class v6, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 78
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    .line 76
    invoke-interface {v2, v5, v3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 80
    check-cast v2, Ljava/lang/Throwable;

    const/4 v3, 0x2

    const-string v5, "TapJson"

    invoke-static {v5, v4, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    const-string v2, "sp_key_play_game_duration_bean"

    .line 54
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    iput-wide v0, p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->lastSaveTimestamp:J

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncBean = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapPlayGameDurationStore"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
