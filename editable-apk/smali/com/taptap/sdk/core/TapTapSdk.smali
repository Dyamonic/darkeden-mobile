.class public final Lcom/taptap/sdk/core/TapTapSdk;
.super Ljava/lang/Object;
.source "TapTapSdk.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapTapSdk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapTapSdk.kt\ncom/taptap/sdk/core/TapTapSdk\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,145:1\n11335#2:146\n11670#2,3:147\n37#3,2:150\n*S KotlinDebug\n*F\n+ 1 TapTapSdk.kt\ncom/taptap/sdk/core/TapTapSdk\n*L\n39#1:146\n39#1:147,3\n39#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nH\u0007\u00a2\u0006\u0002\u0010\u000cJ1\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\n\"\u00020\rH\u0007\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/taptap/sdk/core/TapTapSdk;",
        "",
        "()V",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "sdkOptions",
        "Lcom/taptap/sdk/core/TapTapSdkOptions;",
        "options",
        "",
        "",
        "(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;[Ljava/lang/String;)V",
        "Lcom/taptap/sdk/core/TapTapSdkBaseOptions;",
        "(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;[Lcom/taptap/sdk/core/TapTapSdkBaseOptions;)V",
        "setPreferredLanguage",
        "language",
        "Lcom/taptap/sdk/core/TapTapLanguage;",
        "tap-core_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/core/TapTapSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/core/TapTapSdk;

    invoke-direct {v0}, Lcom/taptap/sdk/core/TapTapSdk;-><init>()V

    sput-object v0, Lcom/taptap/sdk/core/TapTapSdk;->INSTANCE:Lcom/taptap/sdk/core/TapTapSdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/taptap/sdk/core/TapTapSdkBaseOptions;

    .line 26
    invoke-static {p0, p1, v0}, Lcom/taptap/sdk/core/TapTapSdk;->init(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;[Lcom/taptap/sdk/core/TapTapSdkBaseOptions;)V

    return-void
.end method

.method public static final varargs init(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;[Lcom/taptap/sdk/core/TapTapSdkBaseOptions;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 147
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 146
    check-cast v0, Ljava/util/Collection;

    new-array p2, v2, [Ljava/lang/String;

    .line 151
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 39
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/core/TapTapSdk;->init(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;[Ljava/lang/String;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/taptap/sdk/core/TapTapSdkOptions;[Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/core/utils/OptionsAdapter;->INSTANCE:Lcom/taptap/sdk/core/utils/OptionsAdapter;

    .line 47
    new-instance v1, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setClientId(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setClientToken(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getRegion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setRegion(I)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setChannel(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getAutoIAPEventEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setAutoIAPEventEnabled(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getOverrideBuiltInParameters()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setOverrideBuiltInParameters(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setGameVersion(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getEnableLog()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->enableLog(Z)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setProperties(Lorg/json/JSONObject;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 57
    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->Companion:Lcom/taptap/sdk/initializer/api/model/Language$Companion;

    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getPreferredLanguage()Lcom/taptap/sdk/core/TapTapLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/core/TapTapLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/initializer/api/model/Language$Companion;->from(Ljava/lang/String;)Lcom/taptap/sdk/initializer/api/model/Language;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setLanguage(Lcom/taptap/sdk/initializer/api/model/Language;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapSdkOptions;->getOaidCert()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->setOaidCert(Ljava/lang/String;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 59
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/taptap/sdk/core/utils/OptionsAdapter;->adapt(Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;Ljava/util/List;)Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer$Builder;->build()Lcom/taptap/sdk/initializer/TapTapSdkInitializer;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/taptap/sdk/initializer/TapTapSdkInitializer;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_0

    .line 65
    sget-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 64
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p2, p2, p0, p1, p2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final setPreferredLanguage(Lcom/taptap/sdk/core/TapTapLanguage;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "language"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapLanguage;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->setPreferredLanguage(Ljava/lang/String;)V

    return-void
.end method
