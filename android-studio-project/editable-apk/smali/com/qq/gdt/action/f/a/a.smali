.class public abstract Lcom/qq/gdt/action/f/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/f/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/qq/gdt/action/f/b/b;"
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qq/gdt/action/f/a/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/qq/gdt/action/f/a/a;->b:Z

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    sget-object v0, Lcom/qq/gdt/action/f/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/f/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/gdt/action/f/a/a$1;-><init>(Lcom/qq/gdt/action/f/a/a;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/f/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/f/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/f/a/a$2;-><init>(Lcom/qq/gdt/action/f/a/a;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public a(Lcom/qq/gdt/action/f/b/i;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->c()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/f/a/a;->b(Lcom/qq/gdt/action/f/b/i;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean v1, p0, Lcom/qq/gdt/action/f/a/a;->b:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/qq/gdt/action/f/a/a;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/qq/gdt/action/f/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/qq/gdt/action/d/a;

    const-string v1, "Response parse error"

    invoke-direct {v0, v1, p1}, Lcom/qq/gdt/action/d/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lcom/qq/gdt/action/f/a/a;->b:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/a/a;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/f/a/a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/qq/gdt/action/f/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/f/a/a;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/f/a/a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract b(Lcom/qq/gdt/action/f/b/i;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/gdt/action/f/b/i;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Throwable;)V
.end method
