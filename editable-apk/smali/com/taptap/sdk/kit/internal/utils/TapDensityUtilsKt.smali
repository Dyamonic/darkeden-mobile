.class public final Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;
.super Ljava/lang/Object;
.source "TapDensityUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0008\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "dip",
        "",
        "",
        "getDip",
        "(F)I",
        "(I)I",
        "dp",
        "getDp",
        "(F)F",
        "(I)F",
        "tap-kit_release"
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
.method public static final getDip(F)I
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDp(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final getDip(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtilsKt;->getDp(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final getDp(F)F
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtils;->dpToPx(F)F

    move-result p0

    return p0
.end method

.method public static final getDp(I)F
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/TapDensityUtils;->dpToPx(I)F

    move-result p0

    return p0
.end method
