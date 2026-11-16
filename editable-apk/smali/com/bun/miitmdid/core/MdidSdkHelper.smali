.class public Lcom/bun/miitmdid/core/MdidSdkHelper;
.super Ljava/lang/Object;


# static fields
.field public static final SDK_VERSION_CODE:I

.field private static globalTimeout:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/bun/miitmdid/e;->a()I

    move-result v0

    sput v0, Lcom/bun/miitmdid/core/MdidSdkHelper;->SDK_VERSION_CODE:I

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/bun/miitmdid/core/MdidSdkHelper;->globalTimeout:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitCert(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/bun/miitmdid/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I
    .locals 3

    :try_start_0
    new-instance v0, Lcom/bun/miitmdid/e;

    sget-wide v1, Lcom/bun/miitmdid/core/MdidSdkHelper;->globalTimeout:J

    invoke-direct {v0, p1, v1, v2}, Lcom/bun/miitmdid/e;-><init>(ZJ)V

    invoke-virtual {v0, p0, p2}, Lcom/bun/miitmdid/e;->a(Landroid/content/Context;Lcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const p0, 0xf63e7

    return p0
.end method

.method public static InitSdk(Landroid/content/Context;ZZZZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I
    .locals 8

    :try_start_0
    new-instance v7, Lcom/bun/miitmdid/e;

    sget-wide v2, Lcom/bun/miitmdid/core/MdidSdkHelper;->globalTimeout:J

    move-object v0, v7

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bun/miitmdid/e;-><init>(ZJZZZ)V

    invoke-virtual {v7, p0, p5}, Lcom/bun/miitmdid/e;->a(Landroid/content/Context;Lcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const p0, 0xf63e7

    return p0
.end method

.method public static setGlobalTimeout(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/bun/miitmdid/core/MdidSdkHelper;->globalTimeout:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
