.class public final Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;
.super Ljava/lang/Object;
.source "LoginToastHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;",
        "",
        "()V",
        "showToast",
        "",
        "context",
        "Landroid/content/Context;",
        "message",
        "",
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
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;->INSTANCE:Lcom/taptap/sdk/login/internal/ui/LoginToastHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/taptap/sdk/login/R$layout;->toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 16
    sget v1, Lcom/taptap/sdk/login/R$id;->tv_tap_toast:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    const/16 p2, 0x32

    .line 19
    invoke-static {p2}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(I)I

    move-result p2

    const/16 v1, 0x31

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 20
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
