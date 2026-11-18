.class public final Lcom/taptap/sdk/update/utils/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/update/utils/UIUtil;",
        "",
        "()V",
        "MIN_CLICK_INTERVAL",
        "",
        "lastClickTime",
        "",
        "isFastClick",
        "",
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
.field public static final INSTANCE:Lcom/taptap/sdk/update/utils/UIUtil;

.field private static final MIN_CLICK_INTERVAL:I = 0xc8

.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/update/utils/UIUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/update/utils/UIUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/utils/UIUtil;->INSTANCE:Lcom/taptap/sdk/update/utils/UIUtil;

    const-wide/16 v0, -0x1

    .line 14
    sput-wide v0, Lcom/taptap/sdk/update/utils/UIUtil;->lastClickTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFastClick()Z
    .locals 6

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 18
    sget-wide v2, Lcom/taptap/sdk/update/utils/UIUtil;->lastClickTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 21
    :cond_0
    sput-wide v0, Lcom/taptap/sdk/update/utils/UIUtil;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method
