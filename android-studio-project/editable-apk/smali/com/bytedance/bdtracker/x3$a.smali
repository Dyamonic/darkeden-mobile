.class public final Lcom/bytedance/bdtracker/x3$a;
.super Lcom/bytedance/bdtracker/q4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/bdtracker/q4<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/bytedance/bdtracker/x3;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/bdtracker/q4;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/x3;->j()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
