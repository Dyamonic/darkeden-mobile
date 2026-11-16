.class public final Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;
.super Landroid/app/Fragment;
.source "CloudLoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 6 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n52#2,3:192\n55#2,4:198\n52#2,3:202\n55#2,4:208\n52#2,3:212\n55#2,4:218\n43#2,2:222\n45#2,4:227\n43#2,2:232\n45#2,4:237\n31#2,5:241\n36#2,4:249\n210#3:195\n210#3:205\n210#3:215\n32#4:196\n32#4:206\n32#4:216\n32#4:225\n32#4:235\n32#4:247\n80#5:197\n80#5:207\n80#5:217\n80#5:226\n80#5:236\n80#5:248\n113#6:224\n113#6:234\n123#6:246\n1#7:231\n*S KotlinDebug\n*F\n+ 1 CloudLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment\n*L\n107#1:192,3\n107#1:198,4\n122#1:202,3\n122#1:208,4\n134#1:212,3\n134#1:218,4\n157#1:222,2\n157#1:227,4\n175#1:232,2\n175#1:237,4\n68#1:241,5\n68#1:249,4\n107#1:195\n122#1:205\n134#1:215\n107#1:196\n122#1:206\n134#1:216\n157#1:225\n175#1:235\n68#1:247\n107#1:197\n122#1:207\n134#1:217\n157#1:226\n175#1:236\n68#1:248\n157#1:224\n175#1:234\n68#1:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0004\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\"\u001a\u00020\u0015H\u0016J\u0008\u0010#\u001a\u00020\u0015H\u0002J\u001c\u0010$\u001a\u00020\u00152\u0008\u0010%\u001a\u0004\u0018\u00010\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010&\u001a\u00020\u0015H\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;",
        "Landroid/app/Fragment;",
        "()V",
        "connection",
        "com/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1",
        "Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;",
        "initializeMid",
        "",
        "loginRequestMid",
        "messenger",
        "Landroid/os/Messenger;",
        "replyMessenger",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "sdkLoginVersionArrayList",
        "",
        "[Ljava/lang/String;",
        "createMessage",
        "Landroid/os/Message;",
        "content",
        "handleInitializeFinishMessage",
        "",
        "messageObject",
        "Lkotlinx/serialization/json/JsonObject;",
        "handleLoginResponse",
        "handleReceiptMessage",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onFail",
        "onViewCreated",
        "view",
        "sendConfigInfoMessage",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$Companion;

.field private static final MESSAGE_FROM_CLIENT:I = 0x2711

.field private static final RES_INIT_MESSAGE:Ljava/lang/String; = "initialize_finish"

.field private static final RES_MIDDLE_LAYER_INIT_FINISH:Ljava/lang/String; = "middle_layer_init_finish"

.field private static final RES_RECEIPT_MESSAGE:Ljava/lang/String; = "message_result"

.field private static final RES_TYPE_LOGIN:Ljava/lang/String; = "login_taptap_finish"


# instance fields
.field private connection:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;

.field private final initializeMid:Ljava/lang/String;

.field private final loginRequestMid:Ljava/lang/String;

.field private messenger:Landroid/os/Messenger;

.field private final replyMessenger:Landroid/os/Messenger;

.field private request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

.field private final sdkLoginVersionArrayList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->loginRequestMid:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->initializeMid:Ljava/lang/String;

    const-string v0, "1.0"

    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->sdkLoginVersionArrayList:[Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;-><init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)V

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->connection:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;

    .line 61
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 63
    new-instance v3, Lcom/taptap/sdk/login/internal/handlers/cloud/-$$Lambda$CloudLoginFragment$r6AAUr_8khZ2FIXGss681fMvZvI;

    invoke-direct {v3, p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/-$$Lambda$CloudLoginFragment$r6AAUr_8khZ2FIXGss681fMvZvI;-><init>(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)V

    .line 61
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->replyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static final synthetic access$createMessage(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Ljava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->createMessage(Ljava/lang/String;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMessenger$p(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)Landroid/os/Messenger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->messenger:Landroid/os/Messenger;

    return-object p0
.end method

.method public static final synthetic access$onFail(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    return-void
.end method

.method public static final synthetic access$setMessenger$p(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Landroid/os/Messenger;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method private final createMessage(Ljava/lang/String;)Landroid/os/Message;
    .locals 3

    .line 179
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2711

    .line 180
    iput v1, v0, Landroid/os/Message;->what:I

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 182
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 184
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->replyMessenger:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 185
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final handleInitializeFinishMessage(Lkotlinx/serialization/json/JsonObject;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    const-string v3, "TapJson"

    .line 134
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 213
    :try_start_1
    move-object/from16 v6, p1

    check-cast v6, Lkotlinx/serialization/json/JsonElement;

    if-nez v6, :cond_0

    :goto_0
    move-object v0, v5

    goto :goto_1

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v6

    .line 216
    const-class v7, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    sget-object v8, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v9, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    .line 217
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    .line 215
    move-object/from16 v7, p1

    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v6, v7}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 219
    :try_start_2
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v5, v0, v4, v5}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    .line 134
    :goto_1
    check-cast v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    if-nez v0, :cond_1

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;->getData()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->sdkLoginVersionArrayList:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish;->getCgpn()Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameInitializeFinish$CPGNData;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 140
    :cond_2
    iget-object v0, v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v0, :cond_5

    .line 141
    new-instance v6, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage;

    const-string v7, "login_taptap"

    .line 143
    iget-object v8, v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->loginRequestMid:Ljava/lang/String;

    .line 144
    new-instance v15, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;

    .line 145
    sget-object v9, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v9}, Lcom/taptap/sdk/login/internal/LoginManager;->getClientId()Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getScopes()[Ljava/lang/String;

    move-result-object v11

    .line 147
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v12

    .line 148
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getVersionCode()Ljava/lang/String;

    move-result-object v13

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    move v14, v9

    .line 150
    :goto_2
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v16

    .line 151
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object v17

    .line 152
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getResponseType()Ljava/lang/String;

    move-result-object v18

    .line 153
    sget-object v9, Lcom/taptap/sdk/login/internal/util/CodeUtil;->INSTANCE:Lcom/taptap/sdk/login/internal/util/CodeUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/taptap/sdk/login/internal/util/CodeUtil;->getCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v19

    move-object v9, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    .line 144
    invoke-direct/range {v9 .. v19}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {v6, v7, v8, v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage$Data;)V

    .line 157
    iget-object v4, v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->messenger:Landroid/os/Messenger;

    if-eqz v4, :cond_5

    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 223
    :try_start_3
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 224
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v7

    .line 225
    const-class v8, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginMessage;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    .line 226
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    check-cast v7, Lkotlinx/serialization/SerializationStrategy;

    .line 224
    invoke-interface {v0, v7, v6}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 228
    :try_start_4
    check-cast v0, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v3, v5, v0, v2, v5}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_3
    if-nez v5, :cond_4

    return-void

    .line 157
    :cond_4
    invoke-direct {v1, v5}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->createMessage(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v5, v0

    :cond_5
    if-nez v5, :cond_7

    .line 158
    move-object v0, v1

    check-cast v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    goto :goto_5

    .line 137
    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    .line 160
    :catch_2
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    :cond_7
    :goto_5
    return-void
.end method

.method private final handleLoginResponse(Lkotlinx/serialization/json/JsonObject;)V
    .locals 6

    .line 122
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 203
    :try_start_1
    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-nez v2, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 206
    const-class v3, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    sget-object v4, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v5, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 207
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 205
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v2, p1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "TapJson"

    .line 209
    check-cast p1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 122
    :goto_0
    check-cast v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    if-nez v1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    return-void

    .line 124
    :cond_1
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/login/internal/bean/LoginResponse;

    invoke-virtual {p1, v0, v2, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginResponse(Landroid/content/Context;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/login/internal/bean/LoginResponse;)V

    .line 125
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 127
    :catch_1
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    :goto_1
    return-void
.end method

.method private final handleReceiptMessage(Lkotlinx/serialization/json/JsonObject;)V
    .locals 6

    .line 107
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 193
    :try_start_1
    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-nez v2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 196
    const-class v3, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    sget-object v4, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v5, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameReceiptData;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 197
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 195
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v2, p1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "TapJson"

    .line 199
    check-cast p1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 107
    :goto_0
    check-cast v1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    if-nez v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    return-void

    .line 109
    :cond_1
    invoke-virtual {v1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameReceiptData;

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameReceiptData;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameReceiptData;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->loginRequestMid:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudGameReceiptData;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->initializeMid:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 116
    :catch_1
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic lambda$r6AAUr_8khZ2FIXGss681fMvZvI(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->replyMessenger$lambda$1(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private final onFail()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-interface {v0, v1}, Lcom/taptap/sdk/login/internal/LoginActivityImpl$TapLoginActivityCallback;->fallbackToWeb(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    :cond_1
    return-void
.end method

.method private static final replyMessenger$lambda$1(Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;Landroid/os/Message;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 68
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 241
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 246
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 247
    const-class v4, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 248
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 246
    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "TapJson"

    .line 250
    check-cast p1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    invoke-static {v1, v3, p1, v2, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 68
    :goto_1
    check-cast v3, Lkotlinx/serialization/json/JsonObject;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    goto :goto_2

    .line 69
    :cond_2
    move-object p1, v3

    check-cast p1, Ljava/util/Map;

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "middle_layer_init_finish"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->sendConfigInfoMessage()V

    goto :goto_2

    :sswitch_1
    const-string v1, "message_result"

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 74
    :cond_4
    invoke-direct {p0, v3}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->handleReceiptMessage(Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_2

    :sswitch_2
    const-string v1, "login_taptap_finish"

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 73
    :cond_5
    invoke-direct {p0, v3}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->handleLoginResponse(Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_2

    :sswitch_3
    const-string v1, "initialize_finish"

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 72
    :cond_6
    invoke-direct {p0, v3}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->handleInitializeFinishMessage(Lkotlinx/serialization/json/JsonObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 77
    :catch_1
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->onFail()V

    :cond_7
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf9363de -> :sswitch_3
        0x2ed3623c -> :sswitch_2
        0x399aff55 -> :sswitch_1
        0x68f97c8a -> :sswitch_0
    .end sparse-switch
.end method

.method private final sendConfigInfoMessage()V
    .locals 8

    .line 165
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    .line 167
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->initializeMid:Ljava/lang/String;

    .line 168
    new-instance v2, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudConfig;

    .line 169
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 171
    :cond_1
    iget-object v6, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 172
    :cond_3
    :goto_0
    new-instance v6, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudConfig$CPGNData;

    iget-object v7, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->sdkLoginVersionArrayList:[Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudConfig$CPGNData;-><init>([Ljava/lang/String;)V

    .line 168
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/login/internal/handlers/cloud/CloudConfig$CPGNData;)V

    const-string v3, "initialize"

    .line 165
    invoke-direct {v0, v3, v1, v2}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->messenger:Landroid/os/Messenger;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v3, 0x0

    .line 233
    :try_start_0
    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/StringFormat;

    .line 234
    invoke-interface {v2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 235
    const-class v5, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudMessage;

    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v7, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudConfig;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 236
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    .line 234
    invoke-interface {v2, v4, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 238
    check-cast v0, Ljava/lang/Throwable;

    const/4 v2, 0x2

    const-string v4, "TapJson"

    invoke-static {v4, v3, v0, v2, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1
    if-nez v3, :cond_4

    return-void

    .line 175
    :cond_4
    invoke-direct {p0, v3}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->createMessage(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget p3, Lcom/taptap/sdk/login/R$layout;->activty_tap_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 101
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->connection:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    .line 96
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object p2, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler;->Companion:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;

    invoke-virtual {p2}, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginHandler$Companion;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment;->connection:Lcom/taptap/sdk/login/internal/handlers/cloud/CloudLoginFragment$connection$1;

    check-cast v0, Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
