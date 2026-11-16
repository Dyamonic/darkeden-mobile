.class public final Lcom/taptap/sdk/update/utils/UIUtilKt;
.super Ljava/lang/Object;
.source "UIUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0004*\u00020\u0005\u001a\u000c\u0010\u0007\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u000c\u0010\u0008\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u00a8\u0006\t"
    }
    d2 = {
        "clearNotFocusable",
        "",
        "Landroid/view/Window;",
        "getScreenHeight",
        "",
        "Landroid/content/Context;",
        "getScreenWidth",
        "hideNavBar",
        "setNotFocusable",
        "tap-update_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final clearNotFocusable(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public static final getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    .line 29
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 31
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static final getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    .line 36
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static final hideNavBar(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    new-instance v0, Lcom/taptap/sdk/update/utils/-$$Lambda$UIUtilKt$KwlridallMJqKOmutHksMAr9IWI;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/utils/-$$Lambda$UIUtilKt$KwlridallMJqKOmutHksMAr9IWI;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void
.end method

.method private static final hideNavBar$lambda$1$lambda$0(Landroid/view/View;I)V
    .locals 0

    const-string p1, "$decorView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x1706

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$KwlridallMJqKOmutHksMAr9IWI(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/utils/UIUtilKt;->hideNavBar$lambda$1$lambda$0(Landroid/view/View;I)V

    return-void
.end method

.method public static final setNotFocusable(Landroid/view/Window;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method
