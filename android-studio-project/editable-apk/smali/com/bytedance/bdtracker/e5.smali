.class public Lcom/bytedance/bdtracker/e5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/bdtracker/q4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/q4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/bdtracker/e5$a;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/e5$a;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/e5;->a:Lcom/bytedance/bdtracker/q4;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bytedance/bdtracker/e5;->a:Lcom/bytedance/bdtracker/q4;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/q4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
