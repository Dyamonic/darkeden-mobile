.class public Lcom/qq/gdt/action/f/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/f/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/gdt/action/f/b/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/f/b/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/c;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/c$a;)Lcom/qq/gdt/action/f/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/c;->a:Lcom/qq/gdt/action/f/b/d;

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/c$a;->b(Lcom/qq/gdt/action/f/b/c$a;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/a;
    .locals 3

    new-instance v0, Lcom/qq/gdt/action/f/b/a;

    new-instance v1, Lcom/qq/gdt/action/f/b/e;

    iget-object v2, p0, Lcom/qq/gdt/action/f/b/c;->a:Lcom/qq/gdt/action/f/b/d;

    invoke-direct {v1, v2}, Lcom/qq/gdt/action/f/b/e;-><init>(Lcom/qq/gdt/action/f/b/d;)V

    invoke-direct {v0, v1, p1, p0}, Lcom/qq/gdt/action/f/b/a;-><init>(Lcom/qq/gdt/action/f/b/e;Lcom/qq/gdt/action/f/b/g;Lcom/qq/gdt/action/f/b/c;)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/f/b/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/c;->b:Ljava/util/List;

    return-object v0
.end method
