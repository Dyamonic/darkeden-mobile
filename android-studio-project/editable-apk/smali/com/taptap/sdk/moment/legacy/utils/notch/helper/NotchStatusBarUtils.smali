.class public Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;
.super Ljava/lang/Object;
.source "NotchStatusBarUtils.java"


# static fields
.field private static statusBarHeight:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 11
    sget v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    if-gtz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    .line 20
    :cond_1
    sget p0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->statusBarHeight:I

    return p0
.end method
