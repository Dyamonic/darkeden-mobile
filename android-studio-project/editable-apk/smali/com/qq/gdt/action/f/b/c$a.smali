.class public Lcom/qq/gdt/action/f/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/f/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/qq/gdt/action/f/b/d;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/f/b/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qq/gdt/action/f/b/d;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/d;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/c$a;->a:Lcom/qq/gdt/action/f/b/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/c$a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/f/b/c$a;)Lcom/qq/gdt/action/f/b/d;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/f/b/c$a;->a:Lcom/qq/gdt/action/f/b/d;

    return-object p0
.end method

.method static synthetic b(Lcom/qq/gdt/action/f/b/c$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/f/b/c$a;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "interceptor == null"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/f/b/c$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/qq/gdt/action/f/b/c;
    .locals 1

    new-instance v0, Lcom/qq/gdt/action/f/b/c;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/f/b/c;-><init>(Lcom/qq/gdt/action/f/b/c$a;)V

    return-object v0
.end method
