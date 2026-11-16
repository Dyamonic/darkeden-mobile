.class public Lcom/taptap/sdk/moment/legacy/utils/ScreenHelper;
.super Ljava/lang/Object;
.source "ScreenHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fullScreenImmersive(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x400

    .line 15
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 20
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0xa06

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
