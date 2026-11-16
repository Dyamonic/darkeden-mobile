.class public final Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;
.super Ljava/lang/Object;
.source "EngineBridgeReflector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineBridgeReflector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineBridgeReflector.kt\ncom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,250:1\n37#2,2:251\n37#2,2:253\n37#2,2:255\n37#2,2:257\n37#2,2:259\n37#2,2:261\n*S KotlinDebug\n*F\n+ 1 EngineBridgeReflector.kt\ncom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector\n*L\n175#1:251,2\n183#1:253,2\n191#1:255,2\n199#1:257,2\n207#1:259,2\n215#1:261,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\u00082\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rJ-\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014J\u001d\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002\u00a2\u0006\u0002\u0010\u0018J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0\r2\u0006\u0010\u0005\u001a\u00020\u0006J\u001c\u0010\u001c\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u001b\u0018\u00010\r2\n\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;",
        "",
        "()V",
        "checkCommand",
        "",
        "command",
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;",
        "checkParamsMatchMethod",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "checkServiceValid",
        "serviceClz",
        "Ljava/lang/Class;",
        "constructorCommandArgs",
        "",
        "method",
        "Ljava/lang/reflect/Method;",
        "callback",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "(Ljava/lang/reflect/Method;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)[Ljava/lang/Object;",
        "filterArray",
        "jsonArray",
        "Lorg/json/JSONArray;",
        "(Lorg/json/JSONArray;)[Ljava/lang/Object;",
        "findParams",
        "getRegisteredService",
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
        "getValidService",
        "clz",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkParamsMatchMethod(Lorg/json/JSONObject;)Z
    .locals 0

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final filterArray(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterArray: jsonArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAP_ENGINE_BRIDGE"

    .line 162
    invoke-static {v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 170
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 173
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    check-cast v2, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Boolean;

    .line 252
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    .line 178
    :cond_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 181
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    :cond_2
    check-cast v2, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Integer;

    .line 254
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    .line 186
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_4

    .line 189
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    :cond_4
    check-cast v2, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Long;

    .line 256
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    .line 194
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_6

    .line 197
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 199
    :cond_6
    check-cast v2, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Float;

    .line 258
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    .line 202
    :cond_7
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_8

    .line 205
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 207
    :cond_8
    check-cast v2, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/Double;

    .line 260
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    .line 210
    :cond_9
    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_a

    .line 213
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jsonArray.getString(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 215
    :cond_a
    check-cast v2, Ljava/util/Collection;

    new-array p1, v1, [Ljava/lang/String;

    .line 262
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_6
    return-object p1

    .line 219
    :cond_b
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    .line 220
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const-string v1, "\u6570\u7ec4\u7c7b\u578b\u7684\u53c2\u6570\u5fc5\u987b\u4e3a\u57fa\u7840\u6570\u636e\u7c7b\u578b!"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final checkCommand(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)V
    .locals 3

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getService()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getMethod()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 44
    :cond_2
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_PARSE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkServiceValid(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "serviceClz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const-class v0, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    const-class v0, Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final constructorCommandArgs(Ljava/lang/reflect/Method;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)[Ljava/lang/Object;
    .locals 12

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 65
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct command: command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getArgs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TAP_ENGINE_BRIDGE"

    .line 67
    invoke-static {v5, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getArgs()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 74
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move v7, v6

    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getArgs()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v7

    .line 79
    :goto_0
    array-length v8, v0

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_4

    .line 80
    aget-object v10, v0, v9

    .line 82
    const-class v11, Landroid/app/Activity;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 83
    sget-object v10, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    invoke-virtual {v10}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->getCurrentActivity$tap_kit_release()Landroid/app/Activity;

    move-result-object v10

    aput-object v10, v2, v9

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 87
    :cond_1
    const-class v11, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p3, :cond_2

    .line 95
    aput-object p3, v2, v9

    goto :goto_2

    .line 89
    :cond_2
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    .line 90
    sget-object p2, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    const-string p3, "callback is null"

    invoke-virtual {p2, p3}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->findParams(Lorg/json/JSONObject;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v2, v9

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 107
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct command over: command="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getArgs()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {v5, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->checkParamsMatchMethod(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eq v7, v1, :cond_6

    :cond_5
    new-array p1, v6, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v2
.end method

.method public final findParams(Lorg/json/JSONObject;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findParams: jsonObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAP_ENGINE_BRIDGE"

    .line 127
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "parameterAnnotations"

    .line 132
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    aget-object v6, v0, v4

    const-string v7, "annotations"

    .line 133
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 134
    instance-of v10, v9, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeParams;

    if-eqz v10, :cond_3

    .line 135
    check-cast v9, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeParams;

    invoke-interface {v9}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeParams;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 138
    :cond_0
    invoke-interface {v9}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeParams;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-interface {v9}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeParams;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " method "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " param "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeParams;->value()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " convert jsonNull to null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {v1, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v5, v0

    .line 148
    :goto_2
    instance-of p1, v5, Lorg/json/JSONArray;

    if-eqz p1, :cond_2

    .line 149
    check-cast v5, Lorg/json/JSONArray;

    invoke-direct {p0, v5}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->filterArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v5

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v5
.end method

.method public final getRegisteredService(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;"
        }
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->getBridgeService(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 51
    const-class v1, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v1}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeService;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object v0

    .line 56
    :cond_1
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_SERVICE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getValidService(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;"
        }
    .end annotation

    const-string v0, "clz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const-string v0, "interfaceClz"

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "superClz"

    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->checkServiceValid(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_SERVICE_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
