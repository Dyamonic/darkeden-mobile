.class public final enum Lcom/bytedance/bdtracker/v0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/bdtracker/v0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bytedance/bdtracker/v0;

.field public static final enum c:Lcom/bytedance/bdtracker/v0;

.field public static final enum d:Lcom/bytedance/bdtracker/v0;

.field public static final enum e:Lcom/bytedance/bdtracker/v0;

.field public static final enum f:Lcom/bytedance/bdtracker/v0;

.field public static final synthetic g:[Lcom/bytedance/bdtracker/v0;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bytedance/bdtracker/v0;

    new-instance v1, Lcom/bytedance/bdtracker/v0;

    const-string v2, "EXPOSURE_ONCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/bytedance/bdtracker/v0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bdtracker/v0;->b:Lcom/bytedance/bdtracker/v0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/bdtracker/v0;

    const-string v2, "EXPOSURE_MORE_THAN_ONCE"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/bdtracker/v0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bdtracker/v0;->c:Lcom/bytedance/bdtracker/v0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/bdtracker/v0;

    const-string v2, "RESUME_FORM_PAGE"

    const/4 v3, 0x2

    const/4 v5, 0x6

    invoke-direct {v1, v2, v3, v5}, Lcom/bytedance/bdtracker/v0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bdtracker/v0;->d:Lcom/bytedance/bdtracker/v0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/bdtracker/v0;

    const-string v2, "RESUME_FORM_BACK"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v4, v3}, Lcom/bytedance/bdtracker/v0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bdtracker/v0;->e:Lcom/bytedance/bdtracker/v0;

    aput-object v1, v0, v4

    new-instance v1, Lcom/bytedance/bdtracker/v0;

    const-string v2, "NOT_EXPOSURE"

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/bdtracker/v0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/bdtracker/v0;->f:Lcom/bytedance/bdtracker/v0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bytedance/bdtracker/v0;->g:[Lcom/bytedance/bdtracker/v0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/bdtracker/v0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/bdtracker/v0;
    .locals 1

    const-class v0, Lcom/bytedance/bdtracker/v0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/bdtracker/v0;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/bdtracker/v0;
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/v0;->g:[Lcom/bytedance/bdtracker/v0;

    invoke-virtual {v0}, [Lcom/bytedance/bdtracker/v0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/bdtracker/v0;

    return-object v0
.end method
