.class public final enum Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;
.super Ljava/lang/Enum;
.source "MomentComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

.field public static final enum COMMON:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

.field public static final enum MOMENT:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

.field public static final enum SCENE:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

.field public static final enum USER:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

.field public static final enum VIDEO:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;


# instance fields
.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->COMMON:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    .line 7
    new-instance v1, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    const-string v3, "MOMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->MOMENT:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    .line 9
    new-instance v3, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->VIDEO:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    .line 11
    new-instance v5, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    const-string v7, "USER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->USER:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    .line 13
    new-instance v7, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    const-string v9, "SCENE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->SCENE:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->$VALUES:[Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    return-void
.end method

.method public static isPublish(I)Z
    .locals 1

    .line 40
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->VIDEO:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->MOMENT:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toComponent(I)Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->MOMENT:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    if-ne p0, v0, :cond_0

    const-string p0, "moment-editor"

    return-object p0

    .line 27
    :cond_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->VIDEO:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    if-ne p0, v0, :cond_1

    const-string p0, "video-editor"

    return-object p0

    .line 30
    :cond_1
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->USER:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    if-ne p0, v0, :cond_2

    const-string p0, "user"

    return-object p0

    .line 33
    :cond_2
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->SCENE:Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    iget v0, v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->type:I

    if-ne p0, v0, :cond_3

    const-string p0, "entry"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;
    .locals 1

    .line 3
    const-class v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;
    .locals 1

    .line 3
    sget-object v0, Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->$VALUES:[Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    invoke-virtual {v0}, [Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/moment/legacy/entity/MomentComponent;

    return-object v0
.end method
