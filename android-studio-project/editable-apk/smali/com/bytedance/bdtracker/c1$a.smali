.class public final Lcom/bytedance/bdtracker/c1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/c1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/c1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/c1$a;->a:Lcom/bytedance/bdtracker/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/c1$a;->a:Lcom/bytedance/bdtracker/c1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/c1;->c:Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/bytedance/bdtracker/c1$a;->a:Lcom/bytedance/bdtracker/c1;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/bytedance/bdtracker/c1;->b:Z

    return-void
.end method
