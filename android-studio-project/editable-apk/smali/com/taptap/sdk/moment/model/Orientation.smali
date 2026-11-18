.class public abstract enum Lcom/taptap/sdk/moment/model/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/model/Orientation$Companion;,
        Lcom/taptap/sdk/moment/model/Orientation$LANDSCAPE;,
        Lcom/taptap/sdk/moment/model/Orientation$PORTRAIT;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/moment/model/Orientation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/model/Orientation;",
        "",
        "(Ljava/lang/String;I)V",
        "value",
        "",
        "getValue",
        "()I",
        "LANDSCAPE",
        "PORTRAIT",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/moment/model/Orientation;

.field public static final Companion:Lcom/taptap/sdk/moment/model/Orientation$Companion;

.field public static final enum LANDSCAPE:Lcom/taptap/sdk/moment/model/Orientation;

.field public static final enum PORTRAIT:Lcom/taptap/sdk/moment/model/Orientation;


# direct methods
.method private static final synthetic $values()[Lcom/taptap/sdk/moment/model/Orientation;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taptap/sdk/moment/model/Orientation;

    sget-object v1, Lcom/taptap/sdk/moment/model/Orientation;->LANDSCAPE:Lcom/taptap/sdk/moment/model/Orientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taptap/sdk/moment/model/Orientation;->PORTRAIT:Lcom/taptap/sdk/moment/model/Orientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/taptap/sdk/moment/model/Orientation$LANDSCAPE;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/moment/model/Orientation$LANDSCAPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/moment/model/Orientation;->LANDSCAPE:Lcom/taptap/sdk/moment/model/Orientation;

    .line 9
    new-instance v0, Lcom/taptap/sdk/moment/model/Orientation$PORTRAIT;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/moment/model/Orientation$PORTRAIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/moment/model/Orientation;->PORTRAIT:Lcom/taptap/sdk/moment/model/Orientation;

    invoke-static {}, Lcom/taptap/sdk/moment/model/Orientation;->$values()[Lcom/taptap/sdk/moment/model/Orientation;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/moment/model/Orientation;->$VALUES:[Lcom/taptap/sdk/moment/model/Orientation;

    new-instance v0, Lcom/taptap/sdk/moment/model/Orientation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/moment/model/Orientation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/moment/model/Orientation;->Companion:Lcom/taptap/sdk/moment/model/Orientation$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/moment/model/Orientation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final from(I)Lcom/taptap/sdk/moment/model/Orientation;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/model/Orientation;->Companion:Lcom/taptap/sdk/moment/model/Orientation$Companion;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/model/Orientation$Companion;->from(I)Lcom/taptap/sdk/moment/model/Orientation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/moment/model/Orientation;
    .locals 1

    const-class v0, Lcom/taptap/sdk/moment/model/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/moment/model/Orientation;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/moment/model/Orientation;
    .locals 1

    sget-object v0, Lcom/taptap/sdk/moment/model/Orientation;->$VALUES:[Lcom/taptap/sdk/moment/model/Orientation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/moment/model/Orientation;

    return-object v0
.end method


# virtual methods
.method public abstract getValue()I
.end method
