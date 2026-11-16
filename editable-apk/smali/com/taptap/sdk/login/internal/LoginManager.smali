.class public final Lcom/taptap/sdk/login/internal/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/LoginManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginManager.kt\ncom/taptap/sdk/login/internal/LoginManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,447:1\n37#2,2:448\n2630#3:450\n2630#3:452\n1#4:451\n1#4:453\n1#4:454\n18#5:455\n*S KotlinDebug\n*F\n+ 1 LoginManager.kt\ncom/taptap/sdk/login/internal/LoginManager\n*L\n174#1:448,2\n313#1:450\n315#1:452\n313#1:451\n315#1:453\n54#1:455\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010%\u001a\u00020&H\u0002J7\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070+2\u0006\u0010,\u001a\u00020\u00192\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010.J\u0008\u0010/\u001a\u00020&H\u0002J&\u00100\u001a\u00020\u00072\u0006\u0010(\u001a\u00020)2\u0006\u0010,\u001a\u00020\u00192\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000702H\u0002J\u0016\u00103\u001a\u00020\u00072\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000702H\u0002J\u0008\u00105\u001a\u0004\u0018\u00010\u001cJ\r\u00106\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u00087J\r\u00108\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u00089J\u0008\u0010:\u001a\u00020\u0007H\u0002J\"\u0010;\u001a\u00020&2\u0006\u0010<\u001a\u00020=2\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0010@\u001a\u0004\u0018\u00010AJ(\u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020\u00072\u0008\u0010>\u001a\u0004\u0018\u00010?2\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020&0EH\u0002J(\u0010F\u001a\u00020&2\u0006\u0010G\u001a\u00020\u00052\u0008\u0010>\u001a\u0004\u0018\u00010?2\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020&0EH\u0002J\u0016\u0010H\u001a\u00020&2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!J/\u0010I\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070+2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0004\u00a2\u0006\u0002\u0010JJ7\u0010I\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070+2\u0006\u0010,\u001a\u00020\u00192\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0004\u00a2\u0006\u0002\u0010.J\u0006\u0010K\u001a\u00020&J\u0010\u0010L\u001a\u00020&2\u0008\u0010>\u001a\u0004\u0018\u00010?J\u0018\u0010M\u001a\u00020&2\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010N\u001a\u00020OJ\u0010\u0010P\u001a\u00020&2\u0008\u0010>\u001a\u0004\u0018\u00010?J\u0010\u0010Q\u001a\u00020&2\u0008\u0010(\u001a\u0004\u0018\u00010)J3\u0010R\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070+2\u0006\u0010,\u001a\u00020\u00192\u0006\u0010S\u001a\u00020\u0019H\u0002\u00a2\u0006\u0002\u0010TR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u001d@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020!@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006U"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/LoginManager;",
        "",
        "()V",
        "authCallback",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;",
        "Lcom/taptap/sdk/login/AccessToken;",
        "<set-?>",
        "",
        "clientId",
        "getClientId",
        "()Ljava/lang/String;",
        "complianceService",
        "Lcom/taptap/sdk/compliance/api/ComplianceService;",
        "getComplianceService",
        "()Lcom/taptap/sdk/compliance/api/ComplianceService;",
        "complianceService$delegate",
        "Lkotlin/Lazy;",
        "currentLoginEntrance",
        "Lcom/taptap/sdk/login/internal/LoginEntrance;",
        "getCurrentLoginEntrance$tap_login_release",
        "()Lcom/taptap/sdk/login/internal/LoginEntrance;",
        "setCurrentLoginEntrance$tap_login_release",
        "(Lcom/taptap/sdk/login/internal/LoginEntrance;)V",
        "currentSessionId",
        "isHandlingResponse",
        "",
        "isInitialized",
        "loginCallback",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "Lcom/taptap/sdk/login/internal/net/NetworkClient;",
        "networkClient",
        "getNetworkClient",
        "()Lcom/taptap/sdk/login/internal/net/NetworkClient;",
        "",
        "regionType",
        "getRegionType",
        "()I",
        "assertInitialized",
        "",
        "authWithScope",
        "activity",
        "Landroid/app/Activity;",
        "scopes",
        "",
        "isPreApproved",
        "callback",
        "(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V",
        "clearLoginDomainCookies",
        "generateInfo",
        "requestScope",
        "",
        "generateTrackInfo",
        "requestedScope",
        "getCurrentTapAccount",
        "getLoginType",
        "getLoginType$tap_login_release",
        "getSessionId",
        "getSessionId$tap_login_release",
        "getWebUrl",
        "handleLoginResponse",
        "context",
        "Landroid/content/Context;",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "response",
        "Lcom/taptap/sdk/login/internal/bean/LoginResponse;",
        "handleLoginWithCode",
        "code",
        "onSuccessCallback",
        "Lkotlin/Function0;",
        "handleLoginWithToken",
        "token",
        "init",
        "loginWithScope",
        "(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V",
        "logout",
        "notifyCancel",
        "notifyFail",
        "exception",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "onActivityDestroy",
        "onBackPressed",
        "startLoginProcess",
        "isAuth",
        "(Landroid/app/Activity;[Ljava/lang/String;ZZ)V",
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
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

.field private static authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/AccessToken;",
            ">;"
        }
    .end annotation
.end field

.field private static clientId:Ljava/lang/String;

.field private static final complianceService$delegate:Lkotlin/Lazy;

.field private static currentLoginEntrance:Lcom/taptap/sdk/login/internal/LoginEntrance;

.field private static volatile currentSessionId:Ljava/lang/String;

.field private static isHandlingResponse:Z

.field private static isInitialized:Z

.field private static loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/TapTapAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static networkClient:Lcom/taptap/sdk/login/internal/net/NetworkClient;

.field private static regionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/LoginManager;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    .line 54
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 455
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$special$$inlined$injectOrNull$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->complianceService$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 57
    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentSessionId:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginEntrance;->WEB:Lcom/taptap/sdk/login/internal/LoginEntrance;

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentLoginEntrance:Lcom/taptap/sdk/login/internal/LoginEntrance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLoginCallback$p()Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;
    .locals 1

    .line 36
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    return-object v0
.end method

.method public static final synthetic access$handleLoginWithToken(Lcom/taptap/sdk/login/internal/LoginManager;Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginWithToken(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$setHandlingResponse$p(Z)V
    .locals 0

    .line 36
    sput-boolean p0, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    return-void
.end method

.method public static final synthetic access$setLoginCallback$p(Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    return-void
.end method

.method private final assertInitialized()V
    .locals 2

    .line 393
    sget-boolean v0, Lcom/taptap/sdk/login/internal/LoginManager;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string v1, "TapLogin has not been initialized!"

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final clearLoginDomainCookies()V
    .locals 11

    .line 310
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 313
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v2, ";"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Iterable;

    .line 450
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 314
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v4, "="

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 315
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .line 452
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=;Max-Age=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-virtual {v1, v0, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_1
    check-cast v2, Ljava/util/List;

    :cond_2
    return-void
.end method

.method private final generateInfo(Landroid/app/Activity;ZLjava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "vertical"

    goto :goto_0

    :cond_0
    const-string p1, "horizontal"

    .line 428
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biz_source=GAME&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getInstallUUID()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&name=TapLoginAndroid&scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    move-object v2, p3

    check-cast v2, Ljava/lang/Iterable;

    const-string p3, ","

    move-object v3, p3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 428
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&session_id="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object p3

    .line 428
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&session_type=tapsdk&tapsdk_login_type="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object p3

    .line 428
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&orientation="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&version=4.5.4&version_code=405040000&preapproved="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final generateTrackInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 408
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "scopes"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_type"

    const-string v2, "tapsdk"

    .line 410
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/LoginManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tapsdk_client_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tapsdk_login_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONObject().apply {\n   \u2026e())\n        }.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getComplianceService()Lcom/taptap/sdk/compliance/api/ComplianceService;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->complianceService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/compliance/api/ComplianceService;

    return-object v0
.end method

.method private final getWebUrl()Ljava/lang/String;
    .locals 1

    .line 325
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    sget v0, Lcom/taptap/sdk/login/internal/LoginManager;->regionType:I

    if-nez v0, :cond_0

    const-string v0, "https://accounts.xdrnd.cn/authorize"

    goto :goto_0

    :cond_0
    const-string v0, "https://accounts-io.xdrnd.com/authorize"

    :goto_0
    return-object v0

    .line 329
    :cond_1
    sget v0, Lcom/taptap/sdk/login/internal/LoginManager;->regionType:I

    if-nez v0, :cond_2

    const-string v0, "https://accounts.taptap.cn/authorize"

    goto :goto_1

    :cond_2
    const-string v0, "https://www.taptapauth.com/authorize"

    :goto_1
    return-object v0
.end method

.method private final handleLoginWithCode(Ljava/lang/String;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    const-string v1, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackAuthCode$tap_login_release(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 235
    invoke-virtual {p2}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 236
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getNetworkClient()Lcom/taptap/sdk/login/internal/net/NetworkClient;

    move-result-object v0

    new-instance v2, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;

    invoke-direct {v2, p2, p3}, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithCode$1;-><init>(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->loginWithCode(Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method private final handleLoginWithToken(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p2}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->isAuth()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 254
    sput-boolean v0, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    .line 255
    sget-object p2, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    .line 256
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    return-void

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getNetworkClient()Lcom/taptap/sdk/login/internal/net/NetworkClient;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;

    invoke-direct {v1, p1, p3, p2}, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginWithToken$1;-><init>(Lcom/taptap/sdk/login/AccessToken;Lkotlin/jvm/functions/Function0;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    check-cast v1, Lcom/taptap/sdk/login/internal/net/HttpCallback;

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->fetchProfile(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/net/HttpCallback;)V

    return-void
.end method

.method private final startLoginProcess(Landroid/app/Activity;[Ljava/lang/String;ZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 163
    invoke-static/range {p2 .. p2}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-nez p4, :cond_0

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getComplianceService()Lcom/taptap/sdk/compliance/api/ComplianceService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/taptap/sdk/compliance/api/ComplianceService;->getAgeRangeScope()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    new-instance v11, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-object v3, v11

    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    const-string v6, "randomUUID().toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getClientId()Ljava/lang/String;

    move-result-object v5

    .line 174
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 449
    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move/from16 v7, p3

    .line 176
    invoke-direct {v0, v1, v7, v2}, Lcom/taptap/sdk/login/internal/LoginManager;->generateInfo(Landroid/app/Activity;ZLjava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-direct {v0, v2}, Lcom/taptap/sdk/login/internal/LoginManager;->generateTrackInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 178
    sget v10, Lcom/taptap/sdk/login/internal/LoginManager;->regionType:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x7f00

    const/16 v21, 0x0

    const-string v2, "4.5.4"

    move-object v7, v2

    move-object v2, v11

    move/from16 v11, p3

    move/from16 v19, p4

    .line 171
    invoke-direct/range {v3 .. v21}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    sget-object v3, Lcom/taptap/sdk/login/internal/LoginActivityImpl;->Companion:Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Lcom/taptap/sdk/login/internal/LoginActivityImpl$Companion;->startLoginActivity(Landroid/content/Context;Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    return-void
.end method


# virtual methods
.method public final authWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/AccessToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->assertInitialized()V

    .line 104
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz v0, :cond_0

    .line 105
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string p2, "Another auth request is in progress"

    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void

    .line 108
    :cond_0
    sput-object p4, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 109
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/taptap/sdk/login/internal/LoginManager;->currentSessionId:Ljava/lang/String;

    const/4 p4, 0x1

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taptap/sdk/login/internal/LoginManager;->startLoginProcess(Landroid/app/Activity;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->clientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "clientId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentLoginEntrance$tap_login_release()Lcom/taptap/sdk/login/internal/LoginEntrance;
    .locals 1

    .line 59
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentLoginEntrance:Lcom/taptap/sdk/login/internal/LoginEntrance;

    return-object v0
.end method

.method public final getCurrentTapAccount()Lcom/taptap/sdk/login/TapTapAccount;
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->assertInitialized()V

    .line 294
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/AccountManager;->getAccount()Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginType$tap_login_release()Ljava/lang/String;
    .locals 2

    .line 399
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentLoginEntrance:Lcom/taptap/sdk/login/internal/LoginEntrance;

    sget-object v1, Lcom/taptap/sdk/login/internal/LoginManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginEntrance;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "embedded_web"

    goto :goto_0

    .line 402
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "mobile_client"

    goto :goto_0

    :cond_2
    const-string v0, "cloud"

    :goto_0
    return-object v0
.end method

.method public final getNetworkClient()Lcom/taptap/sdk/login/internal/net/NetworkClient;
    .locals 1

    .line 38
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->networkClient:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRegionType()I
    .locals 1

    .line 44
    sget v0, Lcom/taptap/sdk/login/internal/LoginManager;->regionType:I

    return v0
.end method

.method public final getSessionId$tap_login_release()Ljava/lang/String;
    .locals 2

    .line 417
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentSessionId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentSessionId:Ljava/lang/String;

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final handleLoginResponse(Landroid/content/Context;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/login/internal/bean/LoginResponse;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Fail to login"

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 186
    invoke-virtual {p2}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 190
    :cond_0
    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0, p2}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    return-void

    .line 194
    :cond_1
    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_6

    .line 195
    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "access_denied"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 196
    invoke-virtual {p0, p2}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    goto :goto_3

    .line 198
    :cond_4
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p3

    :goto_2
    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    :goto_3
    return-void

    .line 202
    :cond_6
    new-instance v1, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;

    invoke-direct {v1, p3, p1}, Lcom/taptap/sdk/login/internal/LoginManager$handleLoginResponse$onSuccessCallback$1;-><init>(Lcom/taptap/sdk/login/internal/bean/LoginResponse;Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 218
    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 219
    sget-object p3, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    sput-boolean v2, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    .line 220
    invoke-direct {p3, p1, p2, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginWithCode(Ljava/lang/String;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V

    .line 218
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 221
    :cond_7
    invoke-virtual {p3}, Lcom/taptap/sdk/login/internal/bean/LoginResponse;->getToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 222
    sget-object p3, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    sput-boolean v2, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    .line 223
    invoke-direct {p3, p1, p2, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->handleLoginWithToken(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lkotlin/jvm/functions/Function0;)V

    .line 221
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_9

    .line 224
    move-object p1, p0

    check-cast p1, Lcom/taptap/sdk/login/internal/LoginManager;

    .line 225
    new-instance p3, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    invoke-direct {p3, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    :cond_9
    return-void

    .line 187
    :cond_a
    :goto_5
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void
.end method

.method public final init(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-boolean v0, Lcom/taptap/sdk/login/internal/LoginManager;->isInitialized:Z

    if-eqz v0, :cond_0

    const-string p1, "TapLogin"

    const-string p2, "LoginManager is already initialized, do not init again"

    .line 63
    invoke-static {p1, p2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/AccountManager;->init()V

    .line 67
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->clientId:Ljava/lang/String;

    .line 68
    sput p2, Lcom/taptap/sdk/login/internal/LoginManager;->regionType:I

    .line 69
    new-instance v0, Lcom/taptap/sdk/login/internal/net/NetworkClient;

    invoke-direct {v0, p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->networkClient:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    .line 70
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getNetworkClient()Lcom/taptap/sdk/login/internal/net/NetworkClient;

    move-result-object p1

    sget-object p2, Lcom/taptap/sdk/login/internal/LoginManager$init$1;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$init$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager$init$2;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager$init$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, v0}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->refreshToken(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    .line 94
    sput-boolean p1, Lcom/taptap/sdk/login/internal/LoginManager;->isInitialized:Z

    return-void
.end method

.method public final loginWithScope(Landroid/app/Activity;[Ljava/lang/String;Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/TapTapAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/taptap/sdk/login/internal/LoginManager;->loginWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V

    return-void
.end method

.method public final loginWithScope(Landroid/app/Activity;[Ljava/lang/String;ZLcom/taptap/sdk/kit/internal/callback/TapTapCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
            "Lcom/taptap/sdk/login/TapTapAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->assertInitialized()V

    .line 132
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz v0, :cond_1

    .line 133
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string p2, "Another login request is in progress"

    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void

    .line 137
    :cond_1
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->currentSessionId:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loginWithScopes"

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackFuncStart$tap_login_release(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 141
    sget-object v2, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    .line 143
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object p1

    const-string p2, "login_type"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/4 p1, -0x1

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v3, "loginWithScopes"

    const-string v7, "Scope is empty"

    .line 141
    invoke-virtual/range {v2 .. v7}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackFail$tap_login_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 150
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string p2, "Scope cannot be empty"

    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    return-void

    .line 153
    :cond_3
    sput-object p4, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    .line 154
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->startLoginProcess(Landroid/app/Activity;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final logout()V
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->assertInitialized()V

    .line 302
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/AccountManager;->clearCache()V

    .line 306
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/LoginManager;->clearLoginDomainCookies()V

    return-void
.end method

.method public final notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V
    .locals 5

    const/4 v0, 0x0

    .line 335
    sput-boolean v0, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->isAuth()Z

    move-result v0

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 338
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onCancel()V

    .line 339
    :cond_1
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    goto :goto_0

    .line 341
    :cond_2
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz v0, :cond_3

    .line 342
    sget-object v1, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    .line 343
    sget-object v2, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v2}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {v2}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v2

    const-string v4, "login_type"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 344
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const-string v4, "loginWithScopes"

    .line 342
    invoke-virtual {v1, v4, v3, v2}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackCancel$tap_login_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    invoke-interface {v0}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onCancel()V

    .line 351
    :cond_3
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    :goto_0
    return-void
.end method

.method public final notifyFail(Lcom/taptap/sdk/login/internal/bean/LoginRequest;Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 7

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 370
    sput-boolean v0, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->isAuth()Z

    move-result v0

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 373
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 374
    :cond_1
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->authCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    goto :goto_0

    .line 376
    :cond_2
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    if-eqz v0, :cond_3

    .line 377
    sget-object v1, Lcom/taptap/sdk/login/internal/LoginTracker;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginTracker;

    .line 379
    sget-object v2, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v2}, Lcom/taptap/sdk/login/internal/LoginManager;->getSessionId$tap_login_release()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v2}, Lcom/taptap/sdk/login/internal/LoginManager;->getLoginType$tap_login_release()Ljava/lang/String;

    move-result-object v2

    const-string v4, "login_type"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 380
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v2, -0x1

    .line 383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 384
    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v2, "loginWithScopes"

    .line 377
    invoke-virtual/range {v1 .. v6}, Lcom/taptap/sdk/login/internal/LoginTracker;->trackFail$tap_login_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 386
    invoke-interface {v0, p2}, Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 388
    :cond_3
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->loginCallback:Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;

    :goto_0
    return-void
.end method

.method public final onActivityDestroy(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V
    .locals 1

    .line 364
    sget-boolean v0, Lcom/taptap/sdk/login/internal/LoginManager;->isHandlingResponse:Z

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "login_fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 357
    instance-of v0, p1, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    if-eqz v0, :cond_0

    .line 358
    check-cast p1, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;

    invoke-virtual {p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final setCurrentLoginEntrance$tap_login_release(Lcom/taptap/sdk/login/internal/LoginEntrance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sput-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->currentLoginEntrance:Lcom/taptap/sdk/login/internal/LoginEntrance;

    return-void
.end method
