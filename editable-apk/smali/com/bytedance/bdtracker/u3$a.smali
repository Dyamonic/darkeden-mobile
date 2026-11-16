.class public Lcom/bytedance/bdtracker/u3$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/bdtracker/u3$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/bdtracker/u3$a;->c:Ljava/lang/Class;

    return-void
.end method
