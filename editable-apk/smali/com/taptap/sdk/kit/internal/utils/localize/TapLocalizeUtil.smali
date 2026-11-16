.class public final Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;
.super Ljava/lang/Object;
.source "TapLocalizeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapLocalizeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapLocalizeUtil.kt\ncom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,234:1\n1#2:235\n37#3,2:236\n*S KotlinDebug\n*F\n+ 1 TapLocalizeUtil.kt\ncom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil\n*L\n189#1:236,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cH\u0002\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J3\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000c\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0011H\u0002J\u0012\u0010\u001c\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0015H\u0007J+\u0010\u001c\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000c\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0004H\u0007J\u0008\u0010\u001f\u001a\u00020\u0011H\u0002J\u0016\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0013J\u000e\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\nJ\u000e\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u0013J\u000e\u0010\'\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\nJ\u0012\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010*\u001a\u0004\u0018\u00010)R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u00020\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;",
        "",
        "()V",
        "currentLanguage",
        "Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;",
        "isDomestic",
        "",
        "isDomestic$annotations",
        "languageChangeListeners",
        "",
        "Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;",
        "collectTapLanguageChangeListeners",
        "",
        "()[Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;",
        "dispatchLanguageChange",
        "",
        "getDefaultLocale",
        "Ljava/util/Locale;",
        "getLocalizedQuantityString",
        "",
        "id",
        "",
        "quantity",
        "formatArgs",
        "(II[Ljava/lang/Object;)Ljava/lang/String;",
        "getLocalizedResources",
        "Landroid/content/res/Resources;",
        "locale",
        "getLocalizedString",
        "(I[Ljava/lang/Object;)Ljava/lang/String;",
        "getPreferredLanguage",
        "getPreferredLocale",
        "initialize",
        "regionType",
        "preferredLanguage",
        "registerLanguageChangeListener",
        "listener",
        "setPreferredLanguage",
        "language",
        "unregisterLanguageChangeListener",
        "wrapperContext",
        "Landroid/content/Context;",
        "context",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

.field private static currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

.field private static isDomestic:Z

.field private static final languageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->isDomestic:Z

    .line 23
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->AUTO:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->languageChangeListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final collectTapLanguageChangeListeners()[Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;
    .locals 3

    .line 187
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->languageChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 188
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;

    .line 237
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit v0

    .line 192
    check-cast v1, [Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;

    return-object v1

    :catchall_0
    move-exception v1

    .line 187
    monitor-exit v0

    throw v1
.end method

.method private final dispatchLanguageChange()V
    .locals 6

    .line 174
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->collectTapLanguageChangeListeners()[Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 176
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 177
    aget-object v3, v0, v1

    sget-boolean v4, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->isDomestic:Z

    sget-object v5, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    invoke-interface {v3, v4, v5}, Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;->onLanguageChange(ZLcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getDefaultLocale()Ljava/util/Locale;
    .locals 2

    .line 220
    sget-boolean v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->isDomestic:Z

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v1, "{\n            Locale.SIMPLIFIED_CHINESE\n        }"

    .line 220
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "{\n            Locale.ENGLISH\n        }"

    .line 222
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static final getLocalizedQuantityString(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 109
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedResources(Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getLocalizedResources(ge\u2026ntityString(id, quantity)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs getLocalizedQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "formatArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedResources(Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getLocalizedResources(ge\u2026d, quantity, *formatArgs)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getLocalizedResources(Ljava/util/Locale;)Landroid/content/res/Resources;
    .locals 2

    .line 228
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 230
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 231
    sget-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "TapTapKit.context.create\u2026Context(config).resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final getLocalizedString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 91
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedResources(Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getLocalizedResources(ge\u2026edLocale()).getString(id)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs getLocalizedString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "formatArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedResources(Ljava/util/Locale;)Landroid/content/res/Resources;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getLocalizedResources(ge\u2026etString(id, *formatArgs)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 41
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->AUTO:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    if-ne v0, v1, :cond_12

    .line 42
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCurLanguageDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "curLanguageDisplayName"

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "zh"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "hant"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ZH_HANT:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_0
    const-string v1, "hans"

    .line 50
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ZH_HANS:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_1
    const-string v1, "cn"

    .line 51
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ZH_HANT:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    .line 52
    :cond_2
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ZH_HANS:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_3
    const-string v1, "en"

    .line 56
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->EN:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_4
    const-string v1, "ja"

    .line 57
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->JA:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_5
    const-string v1, "ko"

    .line 58
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->KO:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_6
    const-string v1, "th"

    .line 59
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->TH:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto/16 :goto_1

    :cond_7
    const-string v1, "de"

    .line 60
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->DE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_8
    const-string v1, "es"

    .line 61
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ES:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_9
    const-string v1, "fr"

    .line 62
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->FR:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_a
    const-string v1, "pt"

    .line 63
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->PT:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_b
    const-string v1, "ru"

    .line 64
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->RU:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_c
    const-string v1, "tr"

    .line 65
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->TR:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_d
    const-string v1, "vi"

    .line 66
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->VI:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    :cond_e
    const-string v1, "id"

    .line 68
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "in"

    .line 69
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_0

    .line 73
    :cond_f
    sget-boolean v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->isDomestic:Z

    if-eqz v0, :cond_10

    .line 74
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ZH_HANS:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    .line 76
    :cond_10
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->EN:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_1

    .line 69
    :cond_11
    :goto_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ID:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    :goto_1
    return-object v0

    .line 81
    :cond_12
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    return-object v0
.end method

.method private final getPreferredLocale()Ljava/util/Locale;
    .locals 2

    .line 197
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 212
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "tr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :pswitch_1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v1, "FRENCH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_3
    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_4
    new-instance v0, Ljava/util/Locale;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_5
    new-instance v0, Ljava/util/Locale;

    const-string v1, "vi"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :pswitch_6
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_7
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v1, "GERMAN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_8
    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_9
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v1, "KOREAN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_a
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v1, "JAPANESE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_b
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "ENGLISH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_c
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const-string v1, "TRADITIONAL_CHINESE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_d
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v1, "SIMPLIFIED_CHINESE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_e
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic isDomestic$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final initialize(ILjava/lang/String;)V
    .locals 1

    const-string v0, "preferredLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    sput-boolean p1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->isDomestic:Z

    .line 30
    invoke-virtual {p0, p2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->setPreferredLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public final registerLanguageChangeListener(Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->languageChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setPreferredLanguage(Ljava/lang/String;)V
    .locals 5

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->values()[Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 145
    sget-boolean p1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->isDomestic:Z

    if-eqz p1, :cond_2

    .line 146
    sget-object p1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->ZH_HANS:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    goto :goto_2

    .line 148
    :cond_2
    sget-object p1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->EN:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    :goto_2
    move-object v3, p1

    .line 151
    :cond_3
    sget-object p1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    if-eq v3, p1, :cond_4

    .line 152
    sput-object v3, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->currentLanguage:Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    .line 153
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 154
    sget-object p1, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;

    invoke-direct {p1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->dispatchLanguageChange()V

    .line 155
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 153
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    return-void
.end method

.method public final unregisterLanguageChangeListener(Lcom/taptap/sdk/kit/internal/utils/localize/ITapLanguageChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->languageChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final wrapperContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 163
    new-instance v1, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 167
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method
