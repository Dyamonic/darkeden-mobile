.class public final Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;
.super Landroid/app/Fragment;
.source "WebLoginFragment.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Companion;,
        Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;,
        Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Env;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/web/WebLoginFragment\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,360:1\n113#2:361\n113#2:364\n32#3:362\n32#3:365\n80#4:363\n80#4:366\n1#5:367\n*S KotlinDebug\n*F\n+ 1 WebLoginFragment.kt\ncom/taptap/sdk/login/internal/handlers/web/WebLoginFragment\n*L\n102#1:361\n111#1:364\n102#1:362\n111#1:365\n102#1:363\n111#1:366\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000  2\u00020\u00012\u00020\u0002:\u0003 !\"B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0003J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0010H\u0016J\u0006\u0010\u0011\u001a\u00020\tJ\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J(\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001d\u001a\u00020\tH\u0002J\u0008\u0010\u001e\u001a\u00020\tH\u0002J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;",
        "Landroid/app/Fragment;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "()V",
        "animation",
        "Landroid/animation/AnimatorSet;",
        "request",
        "Lcom/taptap/sdk/login/internal/bean/LoginRequest;",
        "endLoadingAnimation",
        "",
        "getWebUrl",
        "",
        "initWebView",
        "view",
        "Landroid/view/View;",
        "onAnimationUpdate",
        "Landroid/animation/ValueAnimator;",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "startLoadingAnimation",
        "syncCookie",
        "updateLayout",
        "Companion",
        "Env",
        "UrlResource",
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
.field public static final Companion:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Companion;

.field public static final QUERY_KEY_CODE:Ljava/lang/String; = "code"

.field public static final QUERY_KEY_ERROR:Ljava/lang/String; = "error"

.field public static final QUERY_KEY_ID:Ljava/lang/String; = "state"


# instance fields
.field private animation:Landroid/animation/AnimatorSet;

.field private request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->Companion:Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$endLoadingAnimation(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->endLoadingAnimation()V

    return-void
.end method

.method public static final synthetic access$getRequest$p(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)Lcom/taptap/sdk/login/internal/bean/LoginRequest;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    return-object p0
.end method

.method private final endLoadingAnimation()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->animation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/taptap/sdk/login/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 146
    move-object v2, p0

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    new-instance v2, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$endLoadingAnimation$1$1$1;

    invoke-direct {v2, v0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$endLoadingAnimation$1$1$1;-><init>(Landroid/widget/ProgressBar;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private final getWebUrl()Ljava/lang/String;
    .locals 1

    .line 285
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginManager;->getRegionType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://accounts.xdrnd.cn/authorize"

    goto :goto_0

    :cond_0
    const-string v0, "https://accounts-io.xdrnd.com/authorize"

    :goto_0
    return-object v0

    .line 289
    :cond_1
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v0}, Lcom/taptap/sdk/login/internal/LoginManager;->getRegionType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://accounts.taptap.cn/authorize"

    goto :goto_1

    :cond_2
    const-string v0, "https://www.taptapauth.com/authorize"

    :goto_1
    return-object v0
.end method

.method private final initWebView(Landroid/view/View;)V
    .locals 4

    .line 171
    sget v0, Lcom/taptap/sdk/login/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/web/-$$Lambda$WebLoginFragment$HZsBX8OlEAOHLMtNVg-NuZOFzYc;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/login/internal/handlers/web/-$$Lambda$WebLoginFragment$HZsBX8OlEAOHLMtNVg-NuZOFzYc;-><init>(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 180
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$initWebView$1$2;-><init>(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 210
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v2, 0x1

    .line 214
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/4 v2, 0x2

    .line 217
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 218
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackUA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment$UrlResource;-><init>(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    const-string v3, "urlResource"

    invoke-virtual {p1, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 223
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static final initWebView$lambda$14$lambda$12(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic lambda$BfUAZy441VDE1WBUSTpFKQSlit8(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->onViewCreated$lambda$0(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$HZsBX8OlEAOHLMtNVg-NuZOFzYc(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->initWebView$lambda$14$lambda$12(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    .line 82
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final startLoadingAnimation()V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->animation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 132
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    new-array v4, v1, [I

    .line 134
    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x320

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 135
    move-object v5, p0

    check-cast v5, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v4, Landroid/animation/Animator;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v1, v1, [I

    .line 136
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x2710

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v2, v3

    .line 133
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 132
    iput-object v0, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->animation:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0xc8
    .end array-data

    :array_1
    .array-data 4
        0xc8
        0x320
    .end array-data
.end method

.method private final syncCookie()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 296
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const-string v1, "https://www.xdrnd.com/"

    const-string v2, "skip_captcha=1"

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method private final updateLayout(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 11

    .line 228
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 233
    :cond_0
    sget v2, Lcom/taptap/sdk/login/R$id;->progress:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 234
    :goto_0
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_8

    .line 235
    sget p2, Lcom/taptap/sdk/login/R$id;->container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-double v7, v0

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v9

    double-to-int v0, v7

    const/high16 v4, 0x42a80000    # 84.0f

    .line 237
    invoke-static {v4}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_2
    sget p2, Lcom/taptap/sdk/login/R$id;->web_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/high16 v0, 0x41800000    # 16.0f

    if-eqz p2, :cond_5

    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_4

    .line 243
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v4

    const/high16 v5, 0x42280000    # 42.0f

    .line 244
    invoke-static {v5}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v5

    .line 245
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 246
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 247
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 248
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_4
    move-object v2, v6

    .line 242
    :goto_2
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {p2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 252
    :cond_5
    sget p2, Lcom/taptap/sdk/login/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v2, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_6

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_3

    :cond_6
    move-object p2, v6

    :goto_3
    if-eqz p2, :cond_7

    const v2, 0x800033

    .line 254
    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x40800000    # 4.0f

    .line 255
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v2

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v0

    invoke-virtual {p2, v2, v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object v6, p2

    .line 253
    :cond_7
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 258
    :cond_8
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v3, :cond_f

    .line 259
    sget p2, Lcom/taptap/sdk/login/R$id;->container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/high16 v2, 0x42180000    # 38.0f

    if-eqz p2, :cond_9

    .line 260
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 261
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v7, v0

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v7, v9

    double-to-int v0, v7

    .line 262
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :cond_9
    sget p2, Lcom/taptap/sdk/login/R$id;->web_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/high16 v0, 0x41a00000    # 20.0f

    if-eqz p2, :cond_c

    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_a

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_a
    move-object v4, v6

    :goto_4
    if-eqz v4, :cond_b

    .line 267
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v5

    .line 268
    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v2

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 269
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 270
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 271
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    :cond_b
    move-object v4, v6

    .line 266
    :goto_5
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-virtual {p2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 275
    :cond_c
    sget p2, Lcom/taptap/sdk/login/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v2, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_d

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_6

    :cond_d
    move-object p2, v6

    :goto_6
    if-eqz p2, :cond_e

    const v2, 0x800035

    .line 277
    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 278
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v0

    invoke-virtual {p2, v1, v1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object v6, p2

    .line 276
    :cond_e
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_7
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/taptap/sdk/login/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 347
    sget-object v0, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/LoginManager;->notifyCancel(Lcom/taptap/sdk/login/internal/bean/LoginRequest;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    invoke-virtual {p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->updateLayout(Landroid/view/View;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    sget p3, Lcom/taptap/sdk/login/R$layout;->fragment_webview_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "request"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_2

    return-void

    :cond_2
    iput-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v3, "resources.configuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->updateLayout(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 80
    sget v2, Lcom/taptap/sdk/login/R$id;->close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/taptap/sdk/login/internal/handlers/web/-$$Lambda$WebLoginFragment$BfUAZy441VDE1WBUSTpFKQSlit8;

    invoke-direct {v3, v0}, Lcom/taptap/sdk/login/internal/handlers/web/-$$Lambda$WebLoginFragment$BfUAZy441VDE1WBUSTpFKQSlit8;-><init>(Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-direct/range {p0 .. p1}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->initWebView(Landroid/view/View;)V

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->getWebUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/taptap/sdk/login/internal/LoginManager;->INSTANCE:Lcom/taptap/sdk/login/internal/LoginManager;

    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/LoginManager;->getClientId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_id"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "redirect_uri"

    const-string v4, "tapoauth://authorize"

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "response_type"

    const-string v4, "code"

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    iget-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getTrackInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 91
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "session_id"

    .line 92
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    const-string v3, "version"

    const-string v4, "4.5.4"

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "platform"

    const-string v4, "android"

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    iget-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 98
    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getScopes()[Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "scope"

    invoke-virtual {v2, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "state"

    invoke-virtual {v2, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    sget-object v8, Lcom/taptap/sdk/login/internal/util/CodeUtil;->INSTANCE:Lcom/taptap/sdk/login/internal/util/CodeUtil;

    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeVerifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/taptap/sdk/login/internal/util/CodeUtil;->getCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "code_challenge"

    invoke-virtual {v2, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    sget-object v8, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v8, Lkotlinx/serialization/StringFormat;

    new-array v9, v7, [Lkotlin/Pair;

    .line 104
    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getPreApproved()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "preapproved"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v6

    .line 103
    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v9

    .line 361
    invoke-interface {v8}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v10

    .line 362
    const-class v11, Ljava/util/HashMap;

    sget-object v12, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v12

    sget-object v13, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    .line 363
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    check-cast v10, Lkotlinx/serialization/SerializationStrategy;

    .line 361
    invoke-interface {v8, v10, v9}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "extra"

    .line 101
    invoke-virtual {v2, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v3

    const-string v8, "code_challenge_method"

    invoke-virtual {v2, v8, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 111
    :cond_4
    sget-object v3, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v3, Lkotlinx/serialization/StringFormat;

    new-array v8, v7, [Lkotlin/Pair;

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "device_id"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v6

    .line 112
    invoke-static {v8}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v8

    .line 364
    invoke-interface {v3}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v9

    .line 365
    const-class v10, Ljava/util/HashMap;

    sget-object v11, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    .line 366
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    check-cast v9, Lkotlinx/serialization/SerializationStrategy;

    .line 364
    invoke-interface {v3, v9, v8}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "info"

    .line 110
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    iget-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getPhoneVerifyToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "x_phone_verify_token"

    .line 118
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    :cond_5
    iget-object v3, v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getPreferredLoginType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "x_login_type"

    .line 121
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parse(getWebUrl()).build\u2026     }.build().toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->syncCookie()V

    new-array v3, v7, [Lkotlin/Pair;

    .line 125
    iget-object v4, v0, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->request:Lcom/taptap/sdk/login/internal/bean/LoginRequest;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/taptap/sdk/login/internal/bean/LoginRequest;->getInfo()Ljava/lang/String;

    move-result-object v5

    :cond_7
    const-string v4, "X-SDK-UA"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    .line 126
    sget v4, Lcom/taptap/sdk/login/R$id;->webview:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/taptap/sdk/login/internal/handlers/web/WebLoginFragment;->startLoadingAnimation()V

    return-void
.end method
