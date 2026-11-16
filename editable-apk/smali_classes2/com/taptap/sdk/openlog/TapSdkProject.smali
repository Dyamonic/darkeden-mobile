.class public final enum Lcom/taptap/sdk/openlog/TapSdkProject;
.super Ljava/lang/Enum;
.source "TapSdkProject.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/openlog/TapSdkProject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/taptap/sdk/openlog/TapSdkProject;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "TapUpdate",
        "TapAppDuration",
        "TapSDKCore",
        "TapPayment",
        "TapLogin",
        "TapCompliance",
        "TapMoment",
        "TapAchievement",
        "TapLicense",
        "tap-openlog_release"
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
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapAchievement:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapAppDuration:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapCompliance:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapLicense:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapLogin:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapMoment:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapPayment:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapSDKCore:Lcom/taptap/sdk/openlog/TapSdkProject;

.field public static final enum TapUpdate:Lcom/taptap/sdk/openlog/TapSdkProject;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/taptap/sdk/openlog/TapSdkProject;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/taptap/sdk/openlog/TapSdkProject;

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapUpdate:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapAppDuration:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapSDKCore:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapPayment:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapLogin:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapCompliance:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapMoment:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapAchievement:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/openlog/TapSdkProject;->TapLicense:Lcom/taptap/sdk/openlog/TapSdkProject;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapUpdate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapUpdate:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 17
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapAppDuration"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapAppDuration:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 22
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapSDKCore"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapSDKCore:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 27
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapPayment"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapPayment:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 32
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapLogin"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapLogin:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 37
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapCompliance"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapCompliance:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 42
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapMoment"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapMoment:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 47
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapAchievement"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapAchievement:Lcom/taptap/sdk/openlog/TapSdkProject;

    .line 52
    new-instance v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    const-string v1, "TapLicense"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lcom/taptap/sdk/openlog/TapSdkProject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->TapLicense:Lcom/taptap/sdk/openlog/TapSdkProject;

    invoke-static {}, Lcom/taptap/sdk/openlog/TapSdkProject;->$values()[Lcom/taptap/sdk/openlog/TapSdkProject;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->$VALUES:[Lcom/taptap/sdk/openlog/TapSdkProject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/taptap/sdk/openlog/TapSdkProject;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/openlog/TapSdkProject;
    .locals 1

    const-class v0, Lcom/taptap/sdk/openlog/TapSdkProject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/openlog/TapSdkProject;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/openlog/TapSdkProject;
    .locals 1

    sget-object v0, Lcom/taptap/sdk/openlog/TapSdkProject;->$VALUES:[Lcom/taptap/sdk/openlog/TapSdkProject;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/openlog/TapSdkProject;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/openlog/TapSdkProject;->value:Ljava/lang/String;

    return-object v0
.end method
