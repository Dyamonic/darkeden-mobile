.class public final Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;
.super Ljava/lang/Object;
.source "TapIdentifierUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapIdentifierUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapIdentifierUtil.kt\ncom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,257:1\n1851#2,2:258\n1851#2,2:260\n*S KotlinDebug\n*F\n+ 1 TapIdentifierUtil.kt\ncom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil\n*L\n178#1:258,2\n199#1:260,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u001e\u001a\u00020\u0004J\u0008\u0010\u001f\u001a\u00020\u0004H\u0007J\u0008\u0010 \u001a\u0004\u0018\u00010\u0004J\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019J\u001c\u0010\"\u001a\u00020#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0004\u0012\u00020#0%J\n\u0010&\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\'\u001a\u00020#2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020#0%J\u000e\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020\tJ\u000e\u0010*\u001a\u00020#2\u0006\u0010)\u001a\u00020\u000cJ\u0010\u0010+\u001a\u00020#2\u0008\u0010,\u001a\u0004\u0018\u00010\u0004J\u0010\u0010-\u001a\u00020#2\u0008\u0010.\u001a\u0004\u0018\u00010\u0004J\u0010\u0010/\u001a\u00020#2\u0008\u00100\u001a\u0004\u0018\u00010\u0004J\u000e\u00101\u001a\u00020#2\u0006\u0010)\u001a\u00020\tJ\u000e\u00102\u001a\u00020#2\u0006\u0010)\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;",
        "",
        "()V",
        "SP_NAME",
        "",
        "androidId",
        "deviceId",
        "gameUserIdChangedListeners",
        "",
        "Lcom/taptap/sdk/kit/internal/identifier/GameUserIdChangedListener;",
        "installUUID",
        "openIdChangedListeners",
        "Lcom/taptap/sdk/kit/internal/identifier/OpenIdChangedListener;",
        "sp",
        "Landroid/content/SharedPreferences;",
        "getSp",
        "()Landroid/content/SharedPreferences;",
        "sp$delegate",
        "Lkotlin/Lazy;",
        "uniqueDeviceId",
        "bytesToHexString",
        "src",
        "",
        "getAndroidID",
        "context",
        "Landroid/content/Context;",
        "getDeviceId",
        "getGAID",
        "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
        "getGameUserId",
        "getInstallUUID",
        "getOAID",
        "getOpenId",
        "getUniqueDeviceId",
        "queryGAID",
        "",
        "block",
        "Lkotlin/Function1;",
        "queryGID",
        "queryOAID",
        "registerGameUserIdChangedListener",
        "listener",
        "registerOpenIdChangedListener",
        "setGameUserId",
        "gameUserId",
        "setOAIDCertString",
        "oaidCert",
        "setOpenId",
        "openId",
        "unregisterGameUserIdChangedListener",
        "unregisterOpenIdChangedListener",
        "GAID",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

.field private static final SP_NAME:Ljava/lang/String; = "TapSdkCore_SP"

.field private static volatile androidId:Ljava/lang/String;

.field private static volatile deviceId:Ljava/lang/String;

.field private static final gameUserIdChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/kit/internal/identifier/GameUserIdChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile installUUID:Ljava/lang/String;

.field private static final openIdChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/kit/internal/identifier/OpenIdChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sp$delegate:Lkotlin/Lazy;

.field private static volatile uniqueDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    .line 17
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$sp$2;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$sp$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->sp$delegate:Lkotlin/Lazy;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->gameUserIdChangedListeners:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->openIdChangedListeners:Ljava/util/List;

    const-string v0, ""

    .line 43
    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->installUUID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bytesToHexString([B)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_4

    .line 242
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 247
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 248
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    sget-object p0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->androidId:Ljava/lang/String;

    return-object p0

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->androidId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    sget-object p0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->androidId:Ljava/lang/String;

    return-object p0
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .locals 2

    .line 17
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->sp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-sp>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->deviceId:Ljava/lang/String;

    return-object p1

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/identifier/DataUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->deviceId:Ljava/lang/String;

    .line 83
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method public final getGAID()Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;
    .locals 1

    .line 155
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->getGAID()Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v0

    return-object v0
.end method

.method public final getGameUserId()Ljava/lang/String;
    .locals 1

    .line 190
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGameUserIdUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGameUserIdUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGameUserIdUtil;->getGameUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getInstallUUID()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 97
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->installUUID:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->installUUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "tapsdk_install_uuid"

    .line 101
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 103
    sput-object v3, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->installUUID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-object v3

    .line 106
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    sput-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->installUUID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOAID()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->getOAID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOpenId()Ljava/lang/String;
    .locals 1

    .line 169
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->getOpenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 51
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;

    return-object p1

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 56
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 57
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MD5"

    .line 59
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v1-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;

    .line 61
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "unknown"

    .line 64
    sput-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;

    .line 66
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->uniqueDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method public final queryGAID(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->queryGAID(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final queryGID()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGIDUtil;->queryGID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final queryOAID(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->queryOAID(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final registerGameUserIdChangedListener(Lcom/taptap/sdk/kit/internal/identifier/GameUserIdChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->gameUserIdChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 210
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final registerOpenIdChangedListener(Lcom/taptap/sdk/kit/internal/identifier/OpenIdChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->openIdChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setGameUserId(Ljava/lang/String;)V
    .locals 3

    .line 197
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGameUserIdUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGameUserIdUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGameUserIdUtil;->setGameUserId$tap_kit_release(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->gameUserIdChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 199
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 260
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/kit/internal/identifier/GameUserIdChangedListener;

    .line 200
    invoke-interface {v2, p1}, Lcom/taptap/sdk/kit/internal/identifier/GameUserIdChangedListener;->onChange(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setOAIDCertString(Ljava/lang/String;)V
    .locals 1

    .line 130
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->setOAIDCertString(Ljava/lang/String;)V

    return-void
.end method

.method public final setOpenId(Ljava/lang/String;)V
    .locals 3

    .line 176
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOpenIdUtil;->setOpenId$tap_kit_release(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->openIdChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 178
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 258
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/kit/internal/identifier/OpenIdChangedListener;

    .line 179
    invoke-interface {v2, p1}, Lcom/taptap/sdk/kit/internal/identifier/OpenIdChangedListener;->onChange(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unregisterGameUserIdChangedListener(Lcom/taptap/sdk/kit/internal/identifier/GameUserIdChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->gameUserIdChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unregisterOpenIdChangedListener(Lcom/taptap/sdk/kit/internal/identifier/OpenIdChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->openIdChangedListeners:Ljava/util/List;

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
