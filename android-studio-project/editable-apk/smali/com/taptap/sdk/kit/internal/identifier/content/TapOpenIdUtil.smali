.class public final Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;
.super Ljava/lang/Object;
.source "TapOpenIdUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u0017\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0002\u0008\tR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;",
        "",
        "()V",
        "openId",
        "",
        "openIdLock",
        "getOpenId",
        "setOpenId",
        "",
        "setOpenId$tap_kit_release",
        "tap-kit_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;

.field private static volatile openId:Ljava/lang/String;

.field private static final openIdLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->openIdLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOpenId()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->openIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->openId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setOpenId$tap_kit_release(Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->openIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sput-object p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->openId:Ljava/lang/String;

    .line 22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
