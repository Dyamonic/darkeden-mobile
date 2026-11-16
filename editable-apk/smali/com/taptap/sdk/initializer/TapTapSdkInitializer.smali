.class public final Lcom/taptap/sdk/initializer/TapTapSdkInitializer;
.super Ljava/lang/Object;
.source "TapTapSdkInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;,
        Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapTapSdkInitializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapTapSdkInitializer.kt\ncom/taptap/sdk/initializer/TapTapSdkInitializer\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,371:1\n11#2:372\n11#2:373\n*S KotlinDebug\n*F\n+ 1 TapTapSdkInitializer.kt\ncom/taptap/sdk/initializer/TapTapSdkInitializer\n*L\n87#1:372\n92#1:373\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ,2\u00020\u0001:\u0002+,B\u000f\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0085\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u000b\u0012\u0006\u0010\u0014\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002J\u0006\u0010*\u001a\u00020\'R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010 \u001a\u0004\u0008#\u0010$R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/TapTapSdkInitializer;",
        "",
        "builder",
        "Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;",
        "(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;)V",
        "context",
        "Landroid/content/Context;",
        "clientId",
        "",
        "clientToken",
        "enableLog",
        "",
        "oaidCert",
        "language",
        "Lcom/taptap/sdk/initializer/api/model/Language;",
        "properties",
        "Lorg/json/JSONObject;",
        "region",
        "",
        "overrideBuiltInParameters",
        "autoIAPEventEnabled",
        "enableToast",
        "showSwitchAccount",
        "useAgeRange",
        "gameVersion",
        "channel",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/taptap/sdk/initializer/api/model/Language;Lorg/json/JSONObject;IZZZZZLjava/lang/String;Ljava/lang/String;)V",
        "dbService",
        "Lcom/taptap/sdk/core/DBService;",
        "getDbService",
        "()Lcom/taptap/sdk/core/DBService;",
        "dbService$delegate",
        "Lkotlin/Lazy;",
        "openLogService",
        "Lcom/taptap/sdk/common/services/OpenLogService;",
        "getOpenLogService",
        "()Lcom/taptap/sdk/common/services/OpenLogService;",
        "openLogService$delegate",
        "_initialize",
        "",
        "options",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "initialize",
        "Builder",
        "Companion",
        "tap-initializer_release"
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
.field public static final Companion:Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;


# instance fields
.field private final autoIAPEventEnabled:Z

.field private final channel:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final clientToken:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final dbService$delegate:Lkotlin/Lazy;

.field private final enableLog:Z

.field private final enableToast:Z

.field private final gameVersion:Ljava/lang/String;

.field private final language:Lcom/taptap/sdk/initializer/api/model/Language;

.field private final oaidCert:Ljava/lang/String;

.field private final openLogService$delegate:Lkotlin/Lazy;

.field private final overrideBuiltInParameters:Z

.field private final properties:Lorg/json/JSONObject;

.field private final region:I

.field private final showSwitchAccount:Z

.field private final useAgeRange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->Companion:Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/taptap/sdk/initializer/api/model/Language;Lorg/json/JSONObject;IZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "context"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "clientId"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "clientToken"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "language"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->context:Landroid/content/Context;

    .line 29
    iput-object v2, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->clientId:Ljava/lang/String;

    .line 33
    iput-object v3, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->clientToken:Ljava/lang/String;

    move v1, p4

    .line 37
    iput-boolean v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->enableLog:Z

    move-object v1, p5

    .line 41
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->oaidCert:Ljava/lang/String;

    .line 45
    iput-object v4, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->language:Lcom/taptap/sdk/initializer/api/model/Language;

    move-object v1, p7

    .line 49
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->properties:Lorg/json/JSONObject;

    move v1, p8

    .line 53
    iput v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->region:I

    move v1, p9

    .line 57
    iput-boolean v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->overrideBuiltInParameters:Z

    move/from16 v1, p10

    .line 61
    iput-boolean v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->autoIAPEventEnabled:Z

    move/from16 v1, p11

    .line 65
    iput-boolean v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->enableToast:Z

    move/from16 v1, p12

    .line 69
    iput-boolean v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->showSwitchAccount:Z

    move/from16 v1, p13

    .line 73
    iput-boolean v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->useAgeRange:Z

    move-object/from16 v1, p14

    .line 77
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->gameVersion:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 81
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->channel:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 372
    sget-object v1, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/initializer/TapTapSdkInitializer$special$$inlined$inject$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 87
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->openLogService$delegate:Lkotlin/Lazy;

    .line 92
    sget-object v1, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 373
    sget-object v1, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$special$$inlined$inject$2;->INSTANCE:Lcom/taptap/sdk/initializer/TapTapSdkInitializer$special$$inlined$inject$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 92
    iput-object v1, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->dbService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;)V
    .locals 16

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getContext$tap_initializer_release()Landroid/content/Context;

    move-result-object v1

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getClientId$tap_initializer_release()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getClientToken$tap_initializer_release()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getEnableLog$tap_initializer_release()Z

    move-result v4

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getOaidCert$tap_initializer_release()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getPreferredLanguage$tap_initializer_release()Lcom/taptap/sdk/initializer/api/model/Language;

    move-result-object v6

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getProperties$tap_initializer_release()Lorg/json/JSONObject;

    move-result-object v7

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getRegion$tap_initializer_release()I

    move-result v8

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getOverrideBuiltInParameters$tap_initializer_release()Z

    move-result v9

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getAutoIAPEventEnabled$tap_initializer_release()Z

    move-result v10

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getEnableToast$tap_initializer_release()Z

    move-result v11

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getShowSwitchAccount$tap_initializer_release()Z

    move-result v12

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getUseAgeRange$tap_initializer_release()Z

    move-result v13

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getGameVersion$tap_initializer_release()Ljava/lang/String;

    move-result-object v14

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->getChannel$tap_initializer_release()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    .line 97
    invoke-direct/range {v0 .. v15}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/taptap/sdk/initializer/api/model/Language;Lorg/json/JSONObject;IZZZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;-><init>(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;)V

    return-void
.end method

.method private final _initialize(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 4

    .line 143
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/TapTapKit;->initializeClient(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getOaidCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->setOAIDCertString(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getPreferredLanguage()Lcom/taptap/sdk/initializer/api/model/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/initializer/api/model/Language;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->initialize(ILjava/lang/String;)V

    .line 149
    new-instance v0, Lcom/taptap/sdk/startup/StartUp$Builder;

    iget-object v1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taptap/sdk/startup/StartUp$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/startup/StartUp$Builder;->setOptions(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/StartUp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/startup/StartUp$Builder;->build()Lcom/taptap/sdk/startup/StartUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/startup/StartUp;->initialize()V

    .line 151
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapLogger;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapLogger;

    iget-boolean v1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->enableLog:Z

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->setEnableLog(Z)V

    const-string v0, "TapTapKit"

    const-string v1, "startInitialize"

    .line 153
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    iget-object v1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->init(Landroid/content/Context;)V

    .line 157
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    iget-object v1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->initialize$tap_initializer_release(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->getDbService()Lcom/taptap/sdk/core/DBService;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isAutoEventEnable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/core/DBService;->setAutoEventEnable(Z)V

    .line 161
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isHeartbeatEnable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/common/services/OpenLogService;->enableHeartbeat(Z)V

    .line 163
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    iget-object v1, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->context:Landroid/content/Context;

    new-instance v2, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$_initialize$1;-><init>(Lcom/taptap/sdk/initializer/TapTapSdkInitializer;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->queryGatekeeper(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 169
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->getDbService()Lcom/taptap/sdk/core/DBService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taptap/sdk/core/DBService;->trackDeviceLogin(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    .line 171
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->getDbService()Lcom/taptap/sdk/core/DBService;

    move-result-object p1

    invoke-interface {p1}, Lcom/taptap/sdk/core/DBService;->flush()V

    return-void
.end method

.method public static final synthetic access$getDbService(Lcom/taptap/sdk/initializer/TapTapSdkInitializer;)Lcom/taptap/sdk/core/DBService;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->getDbService()Lcom/taptap/sdk/core/DBService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOpenLogService(Lcom/taptap/sdk/initializer/TapTapSdkInitializer;)Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;

    move-result-object p0

    return-object p0
.end method

.method private final getDbService()Lcom/taptap/sdk/core/DBService;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->dbService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/core/DBService;

    return-object v0
.end method

.method private final getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->openLogService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/common/services/OpenLogService;

    return-object v0
.end method


# virtual methods
.method public final initialize()V
    .locals 18

    move-object/from16 v0, p0

    .line 121
    iget-object v2, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->clientId:Ljava/lang/String;

    .line 122
    iget-object v3, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->clientToken:Ljava/lang/String;

    .line 123
    iget v4, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->region:I

    .line 124
    iget-boolean v7, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->autoIAPEventEnabled:Z

    .line 125
    iget-object v9, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->properties:Lorg/json/JSONObject;

    .line 126
    iget-boolean v8, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->overrideBuiltInParameters:Z

    .line 127
    iget-object v12, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->language:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 128
    iget-boolean v13, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->useAgeRange:Z

    .line 129
    iget-boolean v14, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->showSwitchAccount:Z

    .line 130
    iget-boolean v15, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->enableToast:Z

    .line 131
    iget-object v10, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->oaidCert:Ljava/lang/String;

    .line 132
    iget-object v6, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->gameVersion:Ljava/lang/String;

    .line 133
    iget-object v5, v0, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->channel:Ljava/lang/String;

    .line 120
    new-instance v11, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-object v1, v11

    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v11, v16

    const/16 v16, 0x200

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;Ljava/lang/String;ZLcom/taptap/sdk/initializer/api/model/Language;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p0

    .line 119
    invoke-direct {v1, v0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->_initialize(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    return-void
.end method
