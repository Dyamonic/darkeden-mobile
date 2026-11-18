.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialog;
.super Landroid/app/Dialog;
.source "TapUpdateDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;,
        Lcom/taptap/sdk/update/dialog/TapUpdateDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapUpdateDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapUpdateDialog.kt\ncom/taptap/sdk/update/dialog/TapUpdateDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,513:1\n1851#2,2:514\n*S KotlinDebug\n*F\n+ 1 TapUpdateDialog.kt\ncom/taptap/sdk/update/dialog/TapUpdateDialog\n*L\n170#1:514,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u009c\u00012\u00020\u0001:\u0004\u009c\u0001\u009d\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010i\u001a\u00020jH\u0002J\u0008\u0010k\u001a\u00020jH\u0016J\u0014\u0010l\u001a\u0004\u0018\u00010G2\u0008\u0010m\u001a\u0004\u0018\u00010nH\u0002J\u0006\u0010o\u001a\u00020jJ\u0008\u0010p\u001a\u00020jH\u0002J\u0018\u0010q\u001a\u00020j2\u0006\u0010r\u001a\u00020s2\u0008\u0010t\u001a\u0004\u0018\u00010uJ\u0008\u0010v\u001a\u00020jH\u0014J\u0010\u0010w\u001a\u00020j2\u0006\u0010x\u001a\u00020sH\u0016J\u000e\u0010y\u001a\u00020j2\u0006\u0010z\u001a\u00020*J\u0010\u0010{\u001a\u00020j2\u0008\u0010|\u001a\u0004\u0018\u00010@J\u0018\u0010}\u001a\u00020j2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010~\u001a\u00020sH\u0002J\u000f\u0010\u007f\u001a\u00020j2\u0007\u0010\u0080\u0001\u001a\u00020sJ3\u0010\u0081\u0001\u001a\u00020j2\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0083\u00012\u0007\u0010\u0084\u0001\u001a\u00020s2\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0083\u00012\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010uJ\u0007\u0010\u0087\u0001\u001a\u00020jJ\t\u0010\u0088\u0001\u001a\u00020jH\u0002J(\u0010\u0089\u0001\u001a\u00020j2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0083\u00012\u0007\u0010\u008d\u0001\u001a\u00020uH\u0002J\u001a\u0010\u008e\u0001\u001a\u00020j2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008d\u0001\u001a\u00020uJ(\u0010\u008f\u0001\u001a\u00020j2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u000c\u0008\u0002\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0083\u00012\u0007\u0010\u008d\u0001\u001a\u00020uJ\t\u0010\u0090\u0001\u001a\u00020jH\u0002J\t\u0010\u0091\u0001\u001a\u00020jH\u0002J\t\u0010\u0092\u0001\u001a\u00020jH\u0002J\u0013\u0010\u0093\u0001\u001a\u00020j2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0010\u0010\u0095\u0001\u001a\u00020j2\u0007\u0010\u0096\u0001\u001a\u00020*J\u0013\u0010\u0097\u0001\u001a\u00020j2\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0013\u0010\u0099\u0001\u001a\u00020j2\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0012\u001a\u0004\u0008\u001e\u0010\u001bR\u001b\u0010 \u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0012\u001a\u0004\u0008!\u0010\u001bR\u001b\u0010#\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0012\u001a\u0004\u0008$\u0010\u001bR\u001b\u0010&\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0012\u001a\u0004\u0008\'\u0010\u001bR\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u0012\u001a\u0004\u0008-\u0010.R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u0012\u001a\u0004\u00081\u0010.R\u001b\u00103\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010\u0012\u001a\u0004\u00084\u0010.R\u001b\u00106\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010\u0012\u001a\u0004\u00087\u0010.R\u001b\u00109\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010\u0012\u001a\u0004\u0008:\u0010.R\u001b\u0010<\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010\u0012\u001a\u0004\u0008=\u0010.R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010A\u001a\u00020B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010\u0012\u001a\u0004\u0008C\u0010DR\u001b\u0010F\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010\u0012\u001a\u0004\u0008H\u0010IR\u001b\u0010K\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010\u0012\u001a\u0004\u0008L\u0010IR\u001b\u0010N\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010\u0012\u001a\u0004\u0008O\u0010IR\u001b\u0010Q\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010\u0012\u001a\u0004\u0008R\u0010IR\u001b\u0010T\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010\u0012\u001a\u0004\u0008U\u0010IR\u001b\u0010W\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010\u0012\u001a\u0004\u0008X\u0010IR\u001b\u0010Z\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010\u0012\u001a\u0004\u0008[\u0010IR\u001b\u0010]\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010\u0012\u001a\u0004\u0008^\u0010IR\u001b\u0010`\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010\u0012\u001a\u0004\u0008a\u0010IR\u001b\u0010c\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010\u0012\u001a\u0004\u0008d\u0010IR\u001b\u0010f\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008h\u0010\u0012\u001a\u0004\u0008g\u0010I\u00a8\u0006\u009e\u0001"
    }
    d2 = {
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "dialogState",
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;",
        "getDialogState",
        "()Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;",
        "setDialogState",
        "(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;)V",
        "downloadAnimatorSet",
        "Landroid/animation/AnimatorSet;",
        "flRootContainer",
        "Landroid/widget/FrameLayout;",
        "getFlRootContainer",
        "()Landroid/widget/FrameLayout;",
        "flRootContainer$delegate",
        "Lkotlin/Lazy;",
        "flexLinkContainer",
        "Lcom/google/android/flexbox/FlexboxLayout;",
        "getFlexLinkContainer",
        "()Lcom/google/android/flexbox/FlexboxLayout;",
        "flexLinkContainer$delegate",
        "ivDownloadSpeedTriangle1",
        "Landroid/widget/ImageView;",
        "getIvDownloadSpeedTriangle1",
        "()Landroid/widget/ImageView;",
        "ivDownloadSpeedTriangle1$delegate",
        "ivDownloadSpeedTriangle2",
        "getIvDownloadSpeedTriangle2",
        "ivDownloadSpeedTriangle2$delegate",
        "ivIconRetry",
        "getIvIconRetry",
        "ivIconRetry$delegate",
        "ivRequestError",
        "getIvRequestError",
        "ivRequestError$delegate",
        "ivUpdateCancel",
        "getIvUpdateCancel",
        "ivUpdateCancel$delegate",
        "linkTextColor",
        "",
        "llDownloadContainer",
        "Landroid/widget/LinearLayout;",
        "getLlDownloadContainer",
        "()Landroid/widget/LinearLayout;",
        "llDownloadContainer$delegate",
        "llFuncContainer",
        "getLlFuncContainer",
        "llFuncContainer$delegate",
        "llProgressContainer",
        "getLlProgressContainer",
        "llProgressContainer$delegate",
        "llReadyContainer",
        "getLlReadyContainer",
        "llReadyContainer$delegate",
        "llRetry",
        "getLlRetry",
        "llRetry$delegate",
        "llSpeedTriangle",
        "getLlSpeedTriangle",
        "llSpeedTriangle$delegate",
        "mUpdateCancelListener",
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;",
        "pbDownloadProgress",
        "Landroid/widget/ProgressBar;",
        "getPbDownloadProgress",
        "()Landroid/widget/ProgressBar;",
        "pbDownloadProgress$delegate",
        "tvDeveloperInfo",
        "Landroid/widget/TextView;",
        "getTvDeveloperInfo",
        "()Landroid/widget/TextView;",
        "tvDeveloperInfo$delegate",
        "tvDownloadContentTitle",
        "getTvDownloadContentTitle",
        "tvDownloadContentTitle$delegate",
        "tvDownloadSpeed",
        "getTvDownloadSpeed",
        "tvDownloadSpeed$delegate",
        "tvErrorTips",
        "getTvErrorTips",
        "tvErrorTips$delegate",
        "tvFuncButton",
        "getTvFuncButton",
        "tvFuncButton$delegate",
        "tvFuncNegative",
        "getTvFuncNegative",
        "tvFuncNegative$delegate",
        "tvFuncPositive",
        "getTvFuncPositive",
        "tvFuncPositive$delegate",
        "tvFuncTips",
        "getTvFuncTips",
        "tvFuncTips$delegate",
        "tvOtherTips",
        "getTvOtherTips",
        "tvOtherTips$delegate",
        "tvReadyTips",
        "getTvReadyTips",
        "tvReadyTips$delegate",
        "tvUpdateTitle",
        "getTvUpdateTitle",
        "tvUpdateTitle$delegate",
        "adapterBlackScreenOnUnity",
        "",
        "dismiss",
        "generateLinkView",
        "linkBean",
        "Lcom/taptap/sdk/update/bean/UpdateFuncLink;",
        "hideDownloadErrorTips",
        "initView",
        "onDownloadReady",
        "reqSuccess",
        "",
        "positiveClickListener",
        "Landroid/view/View$OnClickListener;",
        "onStart",
        "onWindowFocusChanged",
        "hasFocus",
        "setMaxProgress",
        "maxProgress",
        "setUpdateCancelListener",
        "listener",
        "setupWindowAttribute",
        "isLandscape",
        "showCloseButton",
        "show",
        "showDownloadErrorTips",
        "errorTipsText",
        "",
        "retryEnable",
        "otherTipsText",
        "onRetryClickListener",
        "showDownloadPage",
        "showDownloadSpeedAnim",
        "showFunViewInternal",
        "funcText",
        "",
        "tipsText",
        "funcClickListener",
        "showFuncView",
        "showFuncViewWithTips",
        "startRetryAnim",
        "stopAnim",
        "stopRetryAnim",
        "updateDownloadContentTitle",
        "text",
        "updateProgress",
        "progress",
        "updateSpeed",
        "speed",
        "updateUIInformation",
        "uiInformation",
        "Lcom/taptap/sdk/update/bean/UIInformation;",
        "Companion",
        "IUpdateCancelListener",
        "tap-update_release"
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
.field public static final Companion:Lcom/taptap/sdk/update/dialog/TapUpdateDialog$Companion;

.field private static final DEFAULT_HEIGHT:F = 128.0f

.field private static final DEFAULT_WIDTH:F = 320.0f


# instance fields
.field private dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

.field private downloadAnimatorSet:Landroid/animation/AnimatorSet;

.field private final flRootContainer$delegate:Lkotlin/Lazy;

.field private final flexLinkContainer$delegate:Lkotlin/Lazy;

.field private final ivDownloadSpeedTriangle1$delegate:Lkotlin/Lazy;

.field private final ivDownloadSpeedTriangle2$delegate:Lkotlin/Lazy;

.field private final ivIconRetry$delegate:Lkotlin/Lazy;

.field private final ivRequestError$delegate:Lkotlin/Lazy;

.field private final ivUpdateCancel$delegate:Lkotlin/Lazy;

.field private final linkTextColor:I

.field private final llDownloadContainer$delegate:Lkotlin/Lazy;

.field private final llFuncContainer$delegate:Lkotlin/Lazy;

.field private final llProgressContainer$delegate:Lkotlin/Lazy;

.field private final llReadyContainer$delegate:Lkotlin/Lazy;

.field private final llRetry$delegate:Lkotlin/Lazy;

.field private final llSpeedTriangle$delegate:Lkotlin/Lazy;

.field private mUpdateCancelListener:Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;

.field private final pbDownloadProgress$delegate:Lkotlin/Lazy;

.field private final tvDeveloperInfo$delegate:Lkotlin/Lazy;

.field private final tvDownloadContentTitle$delegate:Lkotlin/Lazy;

.field private final tvDownloadSpeed$delegate:Lkotlin/Lazy;

.field private final tvErrorTips$delegate:Lkotlin/Lazy;

.field private final tvFuncButton$delegate:Lkotlin/Lazy;

.field private final tvFuncNegative$delegate:Lkotlin/Lazy;

.field private final tvFuncPositive$delegate:Lkotlin/Lazy;

.field private final tvFuncTips$delegate:Lkotlin/Lazy;

.field private final tvOtherTips$delegate:Lkotlin/Lazy;

.field private final tvReadyTips$delegate:Lkotlin/Lazy;

.field private final tvUpdateTitle$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->Companion:Lcom/taptap/sdk/update/dialog/TapUpdateDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$flRootContainer$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$flRootContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->flRootContainer$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llReadyContainer$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llReadyContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llReadyContainer$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivRequestError$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivRequestError$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivRequestError$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvReadyTips$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvReadyTips$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvReadyTips$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncNegative$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncNegative$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncNegative$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncPositive$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncPositive$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncPositive$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llDownloadContainer$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llDownloadContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llDownloadContainer$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvUpdateTitle$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvUpdateTitle$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvUpdateTitle$delegate:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivUpdateCancel$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivUpdateCancel$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivUpdateCancel$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llProgressContainer$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llProgressContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llProgressContainer$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvDownloadContentTitle$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvDownloadContentTitle$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvDownloadContentTitle$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvDownloadSpeed$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvDownloadSpeed$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvDownloadSpeed$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llSpeedTriangle$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llSpeedTriangle$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llSpeedTriangle$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivDownloadSpeedTriangle1$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivDownloadSpeedTriangle1$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivDownloadSpeedTriangle1$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivDownloadSpeedTriangle2$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivDownloadSpeedTriangle2$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivDownloadSpeedTriangle2$delegate:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$pbDownloadProgress$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$pbDownloadProgress$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->pbDownloadProgress$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvErrorTips$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvErrorTips$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvErrorTips$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llRetry$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llRetry$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llRetry$delegate:Lkotlin/Lazy;

    .line 67
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvOtherTips$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvOtherTips$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvOtherTips$delegate:Lkotlin/Lazy;

    .line 68
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivIconRetry$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$ivIconRetry$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivIconRetry$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llFuncContainer$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$llFuncContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llFuncContainer$delegate:Lkotlin/Lazy;

    .line 71
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncButton$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncButton$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncButton$delegate:Lkotlin/Lazy;

    .line 72
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncTips$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvFuncTips$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncTips$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$flexLinkContainer$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$flexLinkContainer$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->flexLinkContainer$delegate:Lkotlin/Lazy;

    .line 75
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvDeveloperInfo$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$tvDeveloperInfo$2;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvDeveloperInfo$delegate:Lkotlin/Lazy;

    const-string p1, "#4B4B4B"

    .line 79
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->linkTextColor:I

    .line 80
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->NONE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 83
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 86
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x11

    .line 88
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 94
    :cond_0
    sget p1, Lcom/taptap/sdk/update/R$layout;->tapupdate_dialog_update:I

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setContentView(I)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->initView()V

    return-void
.end method

.method public static final synthetic access$getLinkTextColor$p(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->linkTextColor:I

    return p0
.end method

.method private final adapterBlackScreenOnUnity()V
    .locals 3

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 490
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void

    .line 494
    :cond_0
    instance-of v1, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_1

    .line 495
    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 497
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private final generateLinkView(Lcom/taptap/sdk/update/bean/UpdateFuncLink;)Landroid/widget/TextView;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 426
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UpdateFuncLink;->getText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 431
    :try_start_0
    new-instance v3, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;

    invoke-direct {v3, p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Lcom/taptap/sdk/update/bean/UpdateFuncLink;)V

    const/4 v4, 0x0

    .line 446
    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UpdateFuncLink;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x21

    .line 431
    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    const-string v4, "TapUpdateLog"

    invoke-static {v4, p1, v0, v3, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 450
    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object v1
.end method

.method private final getFlRootContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->flRootContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-flRootContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getFlexLinkContainer()Lcom/google/android/flexbox/FlexboxLayout;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->flexLinkContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-flexLinkContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    return-object v0
.end method

.method private final getIvDownloadSpeedTriangle1()Landroid/widget/ImageView;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivDownloadSpeedTriangle1$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivDownloadSpeedTriangle1>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIvDownloadSpeedTriangle2()Landroid/widget/ImageView;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivDownloadSpeedTriangle2$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivDownloadSpeedTriangle2>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIvIconRetry()Landroid/widget/ImageView;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivIconRetry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivIconRetry>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIvRequestError()Landroid/widget/ImageView;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivRequestError$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivRequestError>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIvUpdateCancel()Landroid/widget/ImageView;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->ivUpdateCancel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivUpdateCancel>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getLlDownloadContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llDownloadContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-llDownloadContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLlFuncContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llFuncContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-llFuncContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLlProgressContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llProgressContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-llProgressContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLlReadyContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llReadyContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-llReadyContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLlRetry()Landroid/widget/LinearLayout;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llRetry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-llRetry>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLlSpeedTriangle()Landroid/widget/LinearLayout;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->llSpeedTriangle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-llSpeedTriangle>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getPbDownloadProgress()Landroid/widget/ProgressBar;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->pbDownloadProgress$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-pbDownloadProgress>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final getTvDeveloperInfo()Landroid/widget/TextView;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvDeveloperInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvDeveloperInfo>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvDownloadContentTitle()Landroid/widget/TextView;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvDownloadContentTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvDownloadContentTitle>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvDownloadSpeed()Landroid/widget/TextView;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvDownloadSpeed$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvDownloadSpeed>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvErrorTips()Landroid/widget/TextView;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvErrorTips$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvErrorTips>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvFuncButton()Landroid/widget/TextView;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvFuncButton>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvFuncNegative()Landroid/widget/TextView;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncNegative$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvFuncNegative>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvFuncPositive()Landroid/widget/TextView;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncPositive$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvFuncPositive>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvFuncTips()Landroid/widget/TextView;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvFuncTips$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvFuncTips>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvOtherTips()Landroid/widget/TextView;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvOtherTips$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvOtherTips>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvReadyTips()Landroid/widget/TextView;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvReadyTips$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvReadyTips>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvUpdateTitle()Landroid/widget/TextView;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->tvUpdateTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvUpdateTitle>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initView()V
    .locals 2

    .line 320
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvErrorTips()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 321
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvOtherTips()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 322
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncTips()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 324
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvUpdateCancel()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$OlgCDeUxEDRkNNsJF-MRnvYV6wc;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$OlgCDeUxEDRkNNsJF-MRnvYV6wc;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncNegative()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$G2jtfMOWcyZmffEOe7_qPcsN8Qk;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$G2jtfMOWcyZmffEOe7_qPcsN8Qk;-><init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncNegative()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final initView$lambda$2(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->mUpdateCancelListener:Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;->onUpdateCancel(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;Z)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$3(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->API_ERROR:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    if-ne p1, v0, :cond_0

    .line 330
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackRequestFailNegativeButtonClick()V

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->mUpdateCancelListener:Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;->onUpdateCancel(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$G2jtfMOWcyZmffEOe7_qPcsN8Qk(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->initView$lambda$3(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$NqTdVlstnNfg3fDgg7K0mb16Hz0(Landroid/view/View$OnClickListener;ZLcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadErrorTips$lambda$1(Landroid/view/View$OnClickListener;ZLcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$OlgCDeUxEDRkNNsJF-MRnvYV6wc(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->initView$lambda$2(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V

    return-void
.end method

.method private final setupWindowAttribute(Landroid/content/Context;Z)V
    .locals 4

    .line 369
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getFlRootContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x41700000    # 15.0f

    .line 374
    invoke-static {v1}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result v1

    .line 375
    invoke-static {p1}, Lcom/taptap/sdk/update/utils/UIUtilKt;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 376
    invoke-static {p1}, Lcom/taptap/sdk/update/utils/UIUtilKt;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v1, -0x2

    const/high16 v3, 0x43a00000    # 320.0f

    if-eqz p2, :cond_2

    .line 379
    invoke-static {v3}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result p2

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    const/high16 v2, 0x43000000    # 128.0f

    .line 381
    invoke-static {v2}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result v2

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    move v1, p1

    goto :goto_1

    .line 388
    :cond_2
    invoke-static {v3}, Lcom/taptap/sdk/update/extension/UIExtKt;->toPx(F)I

    move-result p1

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    .line 392
    :goto_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 393
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 395
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getFlRootContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final showDownloadErrorTips$lambda$1(Landroid/view/View$OnClickListener;ZLcom/taptap/sdk/update/dialog/TapUpdateDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 243
    invoke-interface {p0, p3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 245
    invoke-direct {p2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->startRetryAnim()V

    :cond_1
    return-void
.end method

.method private final showDownloadSpeedAnim()V
    .locals 5

    .line 399
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvDownloadSpeedTriangle1()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, -0x1

    .line 402
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 404
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvDownloadSpeedTriangle2()Landroid/widget/ImageView;

    move-result-object v4

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v4, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 405
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 407
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    .line 408
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 409
    iget-object v2, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final showFunViewInternal(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 344
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlReadyContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlDownloadContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlProgressContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlFuncContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncButton()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncButton()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncTips()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static synthetic showFuncViewWithTips$default(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p2, ""

    .line 290
    check-cast p2, Ljava/lang/CharSequence;

    .line 288
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showFuncViewWithTips(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final startRetryAnim()V
    .locals 8

    .line 457
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    check-cast v7, Landroid/view/animation/Animation;

    const-wide/16 v0, 0x3e8

    .line 465
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, -0x1

    .line 466
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 467
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 468
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvIconRetry()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final stopAnim()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private final stopRetryAnim()V
    .locals 1

    .line 472
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvIconRetry()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 312
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 313
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public final getDialogState()Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    return-object v0
.end method

.method public final hideDownloadErrorTips()V
    .locals 2

    .line 266
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvErrorTips()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlRetry()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvOtherTips()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onDownloadReady(ZLandroid/view/View$OnClickListener;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlReadyContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlDownloadContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 120
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->CONFIRM:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 121
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvRequestError()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvReadyTips()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u4f7f\u7528 TapTap \u66f4\u65b0\u6e38\u620f\uff1f"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncPositive()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u66f4\u65b0"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateConfirmDialogVisible()V

    goto :goto_0

    .line 127
    :cond_0
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->API_ERROR:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 128
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvRequestError()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvReadyTips()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncPositive()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u91cd\u8bd5"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackRequestFailDialogVisible()V

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvFuncPositive()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 297
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 299
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 305
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setupWindowAttribute(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 476
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->adapterBlackScreenOnUnity()V

    :cond_0
    return-void
.end method

.method public final setDialogState(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    return-void
.end method

.method public final setMaxProgress(I)V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getPbDownloadProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public final setUpdateCancelListener(Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->mUpdateCancelListener:Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;

    return-void
.end method

.method public final showCloseButton(Z)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getIvUpdateCancel()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showDownloadErrorTips(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvErrorTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvErrorTips()Landroid/widget/TextView;

    move-result-object p1

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvErrorTips()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvErrorTips()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->stopAnim()V

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->stopRetryAnim()V

    .line 241
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlRetry()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlRetry()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;

    invoke-direct {v0, p4, p2, p0}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialog$NqTdVlstnNfg3fDgg7K0mb16Hz0;-><init>(Landroid/view/View$OnClickListener;ZLcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvOtherTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvOtherTips()Landroid/widget/TextView;

    move-result-object p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvOtherTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvOtherTips()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_2
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-ne p1, p2, :cond_3

    move v3, p2

    :cond_3
    if-eqz v3, :cond_4

    .line 258
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->downloadAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    return-void
.end method

.method public final showDownloadPage()V
    .locals 3

    .line 141
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->DOWNLOAD:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    iput-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dialogState:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    .line 142
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlReadyContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlDownloadContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlProgressContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlFuncContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadSpeedAnim()V

    return-void
.end method

.method public final showFuncView(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "funcText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funcClickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0, p2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showFunViewInternal(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showFuncViewWithTips(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "funcText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funcClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showFunViewInternal(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateDownloadContentTitle(Ljava/lang/String;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvDownloadContentTitle()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateProgress(I)V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getPbDownloadProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final updateSpeed(Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvDownloadSpeed()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlSpeedTriangle()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getLlSpeedTriangle()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadSpeedAnim()V

    return-void
.end method

.method public final updateUIInformation(Lcom/taptap/sdk/update/bean/UIInformation;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvUpdateTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UIInformation;->getUpdateTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getTvDeveloperInfo()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UIInformation;->getAppInfo()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UIInformation;->getLinkList()Ljava/util/List;

    move-result-object p1

    .line 165
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getFlexLinkContainer()Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setVisibility(I)V

    goto :goto_3

    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getFlexLinkContainer()Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 169
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getFlexLinkContainer()Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setVisibility(I)V

    .line 170
    check-cast p1, Ljava/lang/Iterable;

    .line 514
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/bean/UpdateFuncLink;

    .line 171
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getFlexLinkContainer()Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->generateLinkView(Lcom/taptap/sdk/update/bean/UpdateFuncLink;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
