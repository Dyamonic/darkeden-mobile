.class public final Lcom/taptap/sdk/review/internal/TapReviewInternal;
.super Ljava/lang/Object;
.source "TapReviewInternal.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapReviewInternal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapReviewInternal.kt\ncom/taptap/sdk/review/internal/TapReviewInternal\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,82:1\n11#2:83\n*S KotlinDebug\n*F\n+ 1 TapReviewInternal.kt\ncom/taptap/sdk/review/internal/TapReviewInternal\n*L\n15#1:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ.\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u000bR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/taptap/sdk/review/internal/TapReviewInternal;",
        "",
        "()V",
        "initializerService",
        "Lcom/taptap/sdk/initializer/api/service/InitializerService;",
        "getInitializerService",
        "()Lcom/taptap/sdk/initializer/api/service/InitializerService;",
        "initializerService$delegate",
        "Lkotlin/Lazy;",
        "goTapDownloadPage",
        "Lkotlin/Result;",
        "",
        "goTapDownloadPage-d1pmJ48",
        "()Ljava/lang/Object;",
        "handleReviewAction",
        "Landroid/net/Uri;",
        "kotlin.jvm.PlatformType",
        "crossAppCode",
        "",
        "handleReviewAction-IoAF18A",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "openReview",
        "tap-review_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewInternal;

.field private static final initializerService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;

    invoke-direct {v0}, Lcom/taptap/sdk/review/internal/TapReviewInternal;-><init>()V

    sput-object v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewInternal;

    .line 15
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 83
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewInternal$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewInternal$special$$inlined$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;->initializerService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleReviewAction-IoAF18A(Lcom/taptap/sdk/review/internal/TapReviewInternal;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/taptap/sdk/review/internal/TapReviewInternal;->handleReviewAction-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getInitializerService()Lcom/taptap/sdk/initializer/api/service/InitializerService;
    .locals 1

    .line 15
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;->initializerService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/initializer/api/service/InitializerService;

    return-object v0
.end method

.method private final goTapDownloadPage-d1pmJ48()Ljava/lang/Object;
    .locals 3

    .line 69
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;

    .line 71
    invoke-direct {v0}, Lcom/taptap/sdk/review/internal/TapReviewInternal;->getInitializerService()Lcom/taptap/sdk/initializer/api/service/InitializerService;

    move-result-object v0

    const-string v1, "browser"

    invoke-interface {v0, v1}, Lcom/taptap/sdk/initializer/api/service/InitializerService;->getReviewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final handleReviewAction-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "tapsdk_cross_app_code"

    .line 41
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/taptap/sdk/review/internal/TapReviewInternal;

    .line 43
    invoke-direct {v1}, Lcom/taptap/sdk/review/internal/TapReviewInternal;->getInitializerService()Lcom/taptap/sdk/initializer/api/service/InitializerService;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {v1, v2}, Lcom/taptap/sdk/initializer/api/service/InitializerService;->getReviewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReviewAction: origin review uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/review/internal/TapReviewLoggerKt;->logInfo(Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {v2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string p1, "sdk_identifier"

    .line 56
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReviewAction: final review uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/review/internal/TapReviewLoggerKt;->logInfo(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 62
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 63
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final openReview()V
    .locals 6

    .line 18
    sget-object v0, Lcom/taptap/sdk/review/internal/ReviewTracker;->INSTANCE:Lcom/taptap/sdk/review/internal/ReviewTracker;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v1, "openReview"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/review/internal/ReviewTracker;->trackStart$tap_review_release$default(Lcom/taptap/sdk/review/internal/ReviewTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/taptap/sdk/review/extensions/SystemExtKt;->isTapInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d TapTap \u5ba2\u6237\u7aef\u5373\u53ef\u53d1\u5e03\u8bc4\u4ef7"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    invoke-direct {p0}, Lcom/taptap/sdk/review/internal/TapReviewInternal;->goTapDownloadPage-d1pmJ48()Ljava/lang/Object;

    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewApi;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewApi;

    .line 31
    new-instance v1, Lcom/taptap/sdk/review/internal/TapReviewInternal$openReview$1;

    invoke-direct {v1}, Lcom/taptap/sdk/review/internal/TapReviewInternal$openReview$1;-><init>()V

    check-cast v1, Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;

    .line 30
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/review/internal/TapReviewApi;->fetchCrossAppCode(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;)Lkotlinx/coroutines/Job;

    return-void
.end method
