.class public final Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;
.super Ljava/lang/Object;
.source "AccessTokenUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessTokenUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessTokenUtils.kt\ncom/taptap/sdk/moment/wrapper/AccessTokenUtils\n+ 2 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,131:1\n11#2:132\n*S KotlinDebug\n*F\n+ 1 AccessTokenUtils.kt\ncom/taptap/sdk/moment/wrapper/AccessTokenUtils\n*L\n20#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;",
        "",
        "()V",
        "Companion",
        "tap-moment_release"
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
.field public static final Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

.field private static final tapLoginService$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/taptap/sdk/login/api/LoginService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    .line 20
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 132
    sget-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$special$$inlined$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->tapLoginService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTapLoginService$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 16
    sget-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->tapLoginService$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final varargs authDenied(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->authDenied(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static final getAccessToken(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->getAccessToken(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    return-void
.end method

.method public static final loginByTap(Landroid/app/Activity;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils;->Companion:Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/taptap/sdk/moment/wrapper/AccessTokenUtils$Companion;->loginByTap(Landroid/app/Activity;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    return-void
.end method
