.class public final enum Lcom/taptap/sdk/initializer/api/model/Language;
.super Ljava/lang/Enum;
.source "Language.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/initializer/api/model/Language$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/initializer/api/model/Language;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0087\u0001\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0016B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/api/model/Language;",
        "",
        "language",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getLanguage",
        "()Ljava/lang/String;",
        "AUTO",
        "ZH_HANS",
        "EN",
        "ZH_HANT",
        "JA",
        "KO",
        "TH",
        "ID",
        "DE",
        "ES",
        "FR",
        "PT",
        "RU",
        "TR",
        "VI",
        "Companion",
        "tap-initializer-api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/initializer/api/model/Language;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum AUTO:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final Companion:Lcom/taptap/sdk/initializer/api/model/Language$Companion;

.field public static final enum DE:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum EN:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum ES:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum FR:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum ID:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum JA:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum KO:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum PT:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum RU:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum TH:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum TR:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum VI:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum ZH_HANS:Lcom/taptap/sdk/initializer/api/model/Language;

.field public static final enum ZH_HANT:Lcom/taptap/sdk/initializer/api/model/Language;


# instance fields
.field private final language:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/taptap/sdk/initializer/api/model/Language;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/taptap/sdk/initializer/api/model/Language;

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->AUTO:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->ZH_HANS:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->EN:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->ZH_HANT:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->JA:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->KO:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->TH:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->ID:Lcom/taptap/sdk/initializer/api/model/Language;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->DE:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->ES:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->FR:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->PT:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->RU:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->TR:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language;->VI:Lcom/taptap/sdk/initializer/api/model/Language;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const-string v3, "auto"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->AUTO:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 23
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "ZH_HANS"

    const/4 v2, 0x1

    const-string v3, "zh_CN"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->ZH_HANS:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 28
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "EN"

    const/4 v2, 0x2

    const-string v3, "en_US"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->EN:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 33
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "ZH_HANT"

    const/4 v2, 0x3

    const-string v3, "zh_TW"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->ZH_HANT:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 38
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "JA"

    const/4 v2, 0x4

    const-string v3, "ja_JP"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->JA:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 43
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "KO"

    const/4 v2, 0x5

    const-string v3, "ko_KR"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->KO:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 48
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "TH"

    const/4 v2, 0x6

    const-string v3, "th_TH"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->TH:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 53
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "ID"

    const/4 v2, 0x7

    const-string v3, "id_ID"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->ID:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 58
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "DE"

    const/16 v2, 0x8

    const-string v3, "de"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->DE:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 63
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "ES"

    const/16 v2, 0x9

    const-string v3, "es_ES"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->ES:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 68
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "FR"

    const/16 v2, 0xa

    const-string v3, "fr"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->FR:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 73
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "PT"

    const/16 v2, 0xb

    const-string v3, "pt_PT"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->PT:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 78
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "RU"

    const/16 v2, 0xc

    const-string v3, "ru"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->RU:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 83
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "TR"

    const/16 v2, 0xd

    const-string v3, "tr"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->TR:Lcom/taptap/sdk/initializer/api/model/Language;

    .line 88
    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language;

    const-string v1, "VI"

    const/16 v2, 0xe

    const-string v3, "vi_VN"

    invoke-direct {v0, v1, v2, v3}, Lcom/taptap/sdk/initializer/api/model/Language;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->VI:Lcom/taptap/sdk/initializer/api/model/Language;

    invoke-static {}, Lcom/taptap/sdk/initializer/api/model/Language;->$values()[Lcom/taptap/sdk/initializer/api/model/Language;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->$VALUES:[Lcom/taptap/sdk/initializer/api/model/Language;

    new-instance v0, Lcom/taptap/sdk/initializer/api/model/Language$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/initializer/api/model/Language$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->Companion:Lcom/taptap/sdk/initializer/api/model/Language$Companion;

    .line 90
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/taptap/sdk/initializer/api/model/Language$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/taptap/sdk/initializer/api/model/Language$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/taptap/sdk/initializer/api/model/Language;->language:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/initializer/api/model/Language;
    .locals 1

    const-class v0, Lcom/taptap/sdk/initializer/api/model/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/initializer/api/model/Language;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/initializer/api/model/Language;
    .locals 1

    sget-object v0, Lcom/taptap/sdk/initializer/api/model/Language;->$VALUES:[Lcom/taptap/sdk/initializer/api/model/Language;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/initializer/api/model/Language;

    return-object v0
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/initializer/api/model/Language;->language:Ljava/lang/String;

    return-object v0
.end method
