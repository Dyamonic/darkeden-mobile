.class public final enum Lcom/bytedance/bdtracker/n$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/bdtracker/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/bdtracker/n$a;

.field public static final enum b:Lcom/bytedance/bdtracker/n$a;

.field public static final synthetic c:[Lcom/bytedance/bdtracker/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bytedance/bdtracker/n$a;

    new-instance v1, Lcom/bytedance/bdtracker/n$a;

    const-string v2, "PROMOTION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/bdtracker/n$a;->a:Lcom/bytedance/bdtracker/n$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/bdtracker/n$a;

    const-string v2, "ORGANIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/bdtracker/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/bdtracker/n$a;->b:Lcom/bytedance/bdtracker/n$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bytedance/bdtracker/n$a;->c:[Lcom/bytedance/bdtracker/n$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/bdtracker/n$a;
    .locals 1

    const-class v0, Lcom/bytedance/bdtracker/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/bdtracker/n$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/bdtracker/n$a;
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/n$a;->c:[Lcom/bytedance/bdtracker/n$a;

    invoke-virtual {v0}, [Lcom/bytedance/bdtracker/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/bdtracker/n$a;

    return-object v0
.end method
