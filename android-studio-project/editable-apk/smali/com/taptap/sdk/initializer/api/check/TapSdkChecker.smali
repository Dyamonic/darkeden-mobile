.class public final Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;
.super Ljava/lang/Object;
.source "TapSdkChecker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapSdkChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapSdkChecker.kt\ncom/taptap/sdk/initializer/api/check/TapSdkChecker\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,35:1\n18#2:36\n*S KotlinDebug\n*F\n+ 1 TapSdkChecker.kt\ncom/taptap/sdk/initializer/api/check/TapSdkChecker\n*L\n12#1:36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005\u00b2\u0006\u000c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;",
        "",
        "()V",
        "checkInitialize",
        "",
        "tap-initializer-api_release",
        "initializeService",
        "Lcom/taptap/sdk/initializer/api/service/InitializerService;"
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
.field public static final INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-direct {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;-><init>()V

    sput-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final checkInitialize$lambda$3$lambda$0(Lkotlin/Lazy;)Lcom/taptap/sdk/initializer/api/service/InitializerService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/taptap/sdk/initializer/api/service/InitializerService;",
            ">;)",
            "Lcom/taptap/sdk/initializer/api/service/InitializerService;"
        }
    .end annotation

    .line 12
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/initializer/api/service/InitializerService;

    return-object p0
.end method


# virtual methods
.method public final checkInitialize()Z
    .locals 8

    const-string v0, "\u5f53\u524d\u5e94\u7528\u8fd8\u672a\u521d\u59cb\u5316: \u8bf7\u5728\u8c03\u7528 SDK \u4e1a\u52a1\u63a5\u53e3\u524d\uff0c\u5148\u8c03\u7528 [TapTapSDK.init()] \u63a5\u53e3"

    const-string v1, "TapInitializer"

    const-string v2, "\u5f53\u524d\u5e94\u7528\u8fd8\u672a\u521d\u59cb\u5316"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 24
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, p0

    check-cast v6, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    .line 12
    sget-object v6, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 36
    sget-object v6, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker$checkInitialize$lambda$3$$inlined$injectOrNull$1;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker$checkInitialize$lambda$3$$inlined$injectOrNull$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    .line 14
    invoke-static {v6}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize$lambda$3$lambda$0(Lkotlin/Lazy;)Lcom/taptap/sdk/initializer/api/service/InitializerService;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 15
    invoke-interface {v6}, Lcom/taptap/sdk/initializer/api/service/InitializerService;->checkInitialize()Z

    move-result v0

    return v0

    .line 17
    :cond_0
    sget-object v6, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v6}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 18
    invoke-static {v1, v0, v4, v3, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v6

    .line 22
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 24
    invoke-static {v6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 25
    sget-object v6, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v6}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v6, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 26
    invoke-static {v1, v0, v4, v3, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return v5
.end method
