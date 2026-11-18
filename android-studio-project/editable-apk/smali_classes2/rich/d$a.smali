.class public Lrich/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/o;

.field public final synthetic b:Lrich/d;


# direct methods
.method public constructor <init>(Lrich/d;Lrich/o;)V
    .locals 0

    iput-object p1, p0, Lrich/d$a;->b:Lrich/d;

    iput-object p2, p0, Lrich/d$a;->a:Lrich/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lrich/d$a;->b:Lrich/d;

    .line 1
    iget-object v0, v0, Lrich/d;->b:Ljava/util/concurrent/BlockingQueue;

    .line 2
    iget-object v1, p0, Lrich/d$a;->a:Lrich/o;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
