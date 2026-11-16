.class public final Lcom/taptap/sdk/update/TapTapUpdate;
.super Ljava/lang/Object;
.source "TapTapUpdate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/update/TapTapUpdate;",
        "",
        "()V",
        "updateGame",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/taptap/sdk/update/TapTapUpdateCallback;",
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
.field public static final INSTANCE:Lcom/taptap/sdk/update/TapTapUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/TapTapUpdate;

    invoke-direct {v0}, Lcom/taptap/sdk/update/TapTapUpdate;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/TapTapUpdate;->INSTANCE:Lcom/taptap/sdk/update/TapTapUpdate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final updateGame(Landroid/app/Activity;Lcom/taptap/sdk/update/TapTapUpdateCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateInternal;

    invoke-virtual {v0, p0, p1}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->updateGame(Landroid/app/Activity;Lcom/taptap/sdk/update/TapTapUpdateCallback;)V

    return-void
.end method
