.class public final Lcom/taptap/sdk/moment/TapMomentInternal;
.super Ljava/lang/Object;
.source "TapMomentInternal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/TapMomentInternal;",
        "",
        "()V",
        "clientId",
        "",
        "getClientId",
        "()Ljava/lang/String;",
        "setClientId",
        "(Ljava/lang/String;)V",
        "currentPublishSessionId",
        "getCurrentPublishSessionId",
        "setCurrentPublishSessionId",
        "regionType",
        "",
        "getRegionType",
        "()I",
        "setRegionType",
        "(I)V",
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
.field public static final INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

.field private static clientId:Ljava/lang/String;

.field private static currentPublishSessionId:Ljava/lang/String;

.field private static regionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/TapMomentInternal;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->clientId:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->currentPublishSessionId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentPublishSessionId()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->currentPublishSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegionType()I
    .locals 1

    .line 10
    sget v0, Lcom/taptap/sdk/moment/TapMomentInternal;->regionType:I

    return v0
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object p1, Lcom/taptap/sdk/moment/TapMomentInternal;->clientId:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentPublishSessionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lcom/taptap/sdk/moment/TapMomentInternal;->currentPublishSessionId:Ljava/lang/String;

    return-void
.end method

.method public final setRegionType(I)V
    .locals 0

    .line 10
    sput p1, Lcom/taptap/sdk/moment/TapMomentInternal;->regionType:I

    return-void
.end method
