.class public final Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;
.super Ljava/lang/Object;
.source "ViewSizeUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;",
        "",
        "()V",
        "update",
        "",
        "view",
        "Landroid/view/View;",
        "orientation",
        "Lcom/taptap/sdk/moment/model/Orientation;",
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
.field public static final INSTANCE:Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;->INSTANCE:Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final update(Landroid/view/View;Lcom/taptap/sdk/moment/model/Orientation;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 22
    :cond_1
    sget-object v1, Lcom/taptap/sdk/moment/wrapper/ViewSizeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/model/Orientation;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, -0x1

    const/high16 v3, 0x42a80000    # 84.0f

    const-wide v4, 0x3fe3333333333333L    # 0.6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 32
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 33
    invoke-static {v3}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    int-to-double v6, v0

    mul-double/2addr v6, v4

    double-to-int v0, v6

    .line 25
    invoke-static {v3}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDip(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
